-- print("Autotsar tunning load start")

require "ATA2TuningTable"

if not ATATuning2 then ATATuning2 = {} end
if not ATATuning2Utils then ATATuning2Utils = {} end
if not ATATuning2.CheckEngine then ATATuning2.CheckEngine = {} end
if not ATATuning2.CheckOperate then ATATuning2.CheckOperate = {} end
if not ATATuning2.ContainerAccess then ATATuning2.ContainerAccess = {} end
if not ATATuning2.Create then ATATuning2.Create = {} end
if not ATATuning2.Init then ATATuning2.Init = {} end
if not ATATuning2.InstallComplete then ATATuning2.InstallComplete = {} end
if not ATATuning2.InstallTest then ATATuning2.InstallTest = {} end
if not ATATuning2.UninstallComplete then ATATuning2.UninstallComplete = {} end
if not ATATuning2.UninstallTest then ATATuning2.UninstallTest = {} end
if not ATATuning2.Update then ATATuning2.Update = {} end
if not ATATuning2.Use then ATATuning2.Use = {} end

-- NightScale5755: Overwriting these 2 functions to implement new features.

-- функция обязательна для всех запчастей из Tuning2
function ATATuning2.InstallComplete.Tuning(vehicle, part)
    -- print("ATATuning2.InstallComplete.Tuning")
    local item = part:getInventoryItem();
    if not item then return; end
    ATATuning2Utils.ModelByModData(vehicle, part, item)
    local vehicleName = vehicle:getScript():getName()
    local partName = part:getId()
    if part:getModData().tuning2 and part:getModData().tuning2.model then
        local modelName = part:getModData().tuning2.model
        if ATA2TuningTable[vehicleName] 
                and ATA2TuningTable[vehicleName].parts[partName] 
                and ATA2TuningTable[vehicleName].parts[partName][modelName] then 
            local modelInfo = ATA2TuningTable[vehicleName].parts[partName][modelName]
            
            -- отключение функции открытия окна
            if modelInfo.disableOpenWindowFromSeat then
                local seatPart = vehicle:getPartById(modelInfo.disableOpenWindowFromSeat)
                if seatPart then
                    seatPart:getModData().t2disableOpenWindow = true
                    vehicle:transmitPartModData(seatPart)
                end
                part:getModData().tuning2.disableOpenWindowFromSeat = modelInfo.disableOpenWindowFromSeat
                -- закрытие окна
                local windowPart = vehicle:getPartById("Window" .. string.sub(modelInfo.disableOpenWindowFromSeat, 5))
                if windowPart and windowPart:getWindow() then
                    windowPart:getWindow():setOpen(false)
                    vehicle:transmitPartWindow(windowPart)
                end
            end
            
            -- активация защиты (сохранение состояний предметов)
            if modelInfo.protection then
                part:getModData().tuning2.protection = modelInfo.protection
                for _, protectionPartName in ipairs(modelInfo.protection) do
                    if protectionPartName ~= "Engine" then -- защита кода от "защиты двигателя"
                        local savePart = vehicle:getPartById(protectionPartName)
                        if savePart then
                            if not savePart:getModData().tuning2 then
                                savePart:getModData().tuning2 = {}
                            end
                            
                            -- добавление запрета на снятие предмета, до снятия защиты
                            if not savePart:getModData().tuning2.protectionRequireUninstalled then
                                local t = {}
                                t[partName] = true
                                savePart:getModData().tuning2.protectionRequireUninstalled = t
                            else
                                local t = savePart:getModData().tuning2.protectionRequireUninstalled
                                t[partName] = true
                            end
                            
                            vehicle:transmitPartModData(savePart)
                            if savePart:getInventoryItem() then
                                savePart:getModData().tuning2.health = savePart:getCondition()
                                savePart:setCondition(100) -- transmit
                                vehicle:transmitPartCondition(savePart)
                            end
                        end
                    end
                end
            end
            -- активация защиты (сохранение состояний предметов)
            if modelInfo.removeIfBroken then
                part:getModData().tuning2.removeIfBroken = modelInfo.removeIfBroken
            end
			-- NightScale5755: Implement protectionTriger and protectionHealthDelta.
            if modelInfo.protectionTriger then
                part:getModData().tuning2.protectionTriger = modelInfo.protectionTriger
            end
            if modelInfo.protectionHealthDelta then
                part:getModData().tuning2.protectionHealthDelta = modelInfo.protectionHealthDelta
            end
            
        end
    end
    if part:isContainer() then
        part:setContainerContentAmount(part:getItemContainer():getCapacityWeight());
    end
    vehicle:transmitPartModData(part)
    vehicle:doDamageOverlay()
end

function ATATuning2.Update.Protection(vehicle, part, elapsedMinutes)
    -- print("ATATuning2.Update.Protection")
    local item = part:getInventoryItem();
    if not item then return; end

    local areaCenter = vehicle:getAreaCenter(part:getArea()) -- зона для выбрасывания поврежденных деталей
    local vehicleName = vehicle:getScript():getName()
    local partName = part:getId()
	
    if part:getModData().tuning2 and part:getModData().tuning2.model then
        if part:getModData().tuning2.removeIfBroken and not part:getItemContainer() and areaCenter and part:getCondition() == 0 then
            local square = getCell():getGridSquare(areaCenter:getX(), areaCenter:getY(), vehicle:getZ())
            
            part:setInventoryItem(nil)-- + vehicle:transmitPartItem(part)
            vehicle:transmitPartItem(part)
            
            square:AddWorldInventoryItem(item, 0.5, 0.5, 0)
            ATATuning2.UninstallComplete.Tuning(vehicle, part, item)
        -- отработка защиты
        elseif part:getModData().tuning2.protection then
            for _, protectionPartName in ipairs(part:getModData().tuning2.protection) do
                if protectionPartName ~= "Engine" then -- защита кода от "защиты двигателя"
                    local savePart = vehicle:getPartById(protectionPartName)
					-- NightScale5755: Implement protectionTriger and protectionHealthDelta.
					local healthTriger
					local healthDelta
					healthTriger = part:getModData().tuning2.protectionTriger
					if not healthTriger then
						healthTriger = 80
					end
					healthDelta = part:getModData().tuning2.protectionHealthDelta
					if not healthDelta then
						healthDelta = 1
					end
                    if savePart and savePart:getInventoryItem() then
                        if not savePart:getModData().tuning2 then
                            savePart:getModData().tuning2 = {}
                            vehicle:transmitPartModData(savePart)
                        end
                        if not savePart:getModData().tuning2.health then
                            savePart:getModData().tuning2.health = savePart:getCondition()
                            vehicle:transmitPartModData(savePart)
                        end
                        
                        if (savePart:getCondition() < healthTriger) then
                            part:setCondition(part:getCondition()-healthDelta) -- transmit
                            vehicle:transmitPartCondition(part)
                            
                            savePart:setCondition(100) -- transmit
                            vehicle:transmitPartCondition(savePart)
                        end
                        if string.match(savePart:getId(), "Tire") and savePart:getContainerContentAmount() < 10 then
                            savePart:setContainerContentAmount(20, false, true);
                        end
                    end
                end
            end
        end
    end
end

