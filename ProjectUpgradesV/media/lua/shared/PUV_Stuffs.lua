---Like DoParam but for vehicles
---@param vehicle string Name of the vehicle script
---@param param string The parameter(s) to apply to this script
---@param module string Optional: the module of the vehicle
---@see Item#DoParam
---@see VehicleScript#Load
local DoVehicleParam = function(vehicle, param, module)
	module = module or "Base"
	local vehicleScript = ScriptManager.instance:getVehicle(module .. "." .. vehicle)
	if not vehicleScript then return end
	vehicleScript:Load(vehicle, "{" .. param .. "}")
end

---Utility to change the armor of a vehicle
---@param vehicle string Name of the vehicle script
---@param armor string Name of a armor template
---@see DoVehicleParam
local SetArmor = function(vehicle, armor)
	DoVehicleParam(vehicle, "template! = " .. armor .. ",")
end

if not getActivatedMods():contains("SCKCO") then
	SetArmor("CarLights","PU_Armor_CarLights");
	SetArmor("CarLightsPolice","PU_Armor_CarLights");
	SetArmor("CarNormal","PU_Armor_Car");
	SetArmor("CarTaxi","PU_Armor_CarLights");
	SetArmor("CarTaxi2","PU_Armor_CarLights");
	SetArmor("CarStationWagon","PU_Armor_CarWagon");
	SetArmor("CarStationWagon2","PU_Armor_CarWagon");
	SetArmor("ModernCar","PU_Armor_CarModern");
	SetArmor("ModernCar02","PU_Armor_CarModern2");
	SetArmor("CarLuxury","PU_Armor_LuxuryCar");
	SetArmor("SmallCar","PU_Armor_SmallCar");
	SetArmor("SmallCar02","PU_Armor_SmallCar02");
	SetArmor("SUV","PU_Armor_SUV");
	SetArmor("OffRoad","PU_Armor_OffRoad");
	SetArmor("PickUpVanLights","PU_Armor_PickUpVan");
	SetArmor("PickUpVanLightsPolice","PU_Armor_PickUpVan");
	SetArmor("PickUpVanLightsFire","PU_Armor_PickUpVan");
	SetArmor("PickUpVanMccoy","PU_Armor_PickUpVan");
	SetArmor("PickUpVan","PU_Armor_PickUpVan");
	SetArmor("PickUpTruckLights","PU_Armor_PickUpTruck");
	SetArmor("PickUpTruckLightsFire","PU_Armor_PickUpTruck");
	SetArmor("PickUpTruckMccoy","PU_Armor_PickUpTruck");
	SetArmor("PickUpTruck","PU_Armor_PickUpTruck");
	SetArmor("StepVan","PU_Armor_StepVan");
	SetArmor("StepVan_Heralds","PU_Armor_StepVan");
	SetArmor("StepVanMail","PU_Armor_StepVan");
	SetArmor("StepVan_Scarlet","PU_Armor_StepVan");
	SetArmor("VanSeats","PU_Armor_VanSeats");
	SetArmor("Van","PU_Armor_Van");
	SetArmor("Van_KnoxDisti","PU_Armor_Van");
	SetArmor("Van_Transit","PU_Armor_Van");
	SetArmor("VanSpiffo","PU_Armor_Van");
	SetArmor("VanSpecial","PU_Armor_Van");
	SetArmor("Van_MassGenFac","PU_Armor_Van");
	SetArmor("Van_LectroMax","PU_Armor_Van");
	SetArmor("VanRadio","PU_Armor_VanAmbulance");
	SetArmor("VanRadio_3N","PU_Armor_VanAmbulance");
	SetArmor("VanAmbulance","PU_Armor_VanAmbulance");
	SetArmor("SportsCar","PU_Armor_SportsCar");

	if getActivatedMods():contains("STR") then
		SetArmor("Van_ravencreekdoc","PU_Armor_Van");
		SetArmor("Van_meadedoc","PU_Armor_Van");
		SetArmor("Van_jeffersondoc","PU_Armor_VanSeats");
	end

	if getActivatedMods():contains("VVehicleEnhancer") then
		SetArmor("CarOldsFull","PU_Armor_Car");
		SetArmor("CarNormalPoncho","PU_Armor_Car");
		SetArmor("CarLightsStatepolice","PU_Armor_CarLights");
		SetArmor("CarLightsSheriff","PU_Armor_CarLights");
		SetArmor("CarLightsFireDept","PU_Armor_CarLights");
		SetArmor("CarLightsFireDept2","PU_Armor_CarLights");
		SetArmor("CarOldWagon","PU_Armor_CarWagon");
		SetArmor("CarPonchoWagon","PU_Armor_CarWagon");
		SetArmor("PickUpVanf76","PU_Armor_PickUpVan");
		SetArmor("PickUpTruckf76","PU_Armor_PickUpTruck");
		SetArmor("73cayenne","PU_Armor_PickUpTruck");
		SetArmor("Vanateam","PU_Armor_Van");
		SetArmor("Vanboogie","PU_Armor_Van");
		SetArmor("Boltrs","PU_Armor_SmallCar");
		SetArmor("SmallCarSwiffer","PU_Armor_SmallCar02");
		SetArmor("280sport","PU_Armor_CarModern2");
	end

	if getActivatedMods():contains("TallerMecanico") then
		SetArmor("VanSnakeneta","PU_Armor_Van");
		SetArmor("VanGenova","PU_Armor_Van");
--		SetArmor("CarTaxiArg","PU_Armor_CarModern2");
		SetArmor("StepVan_Nubasian","PU_Armor_StepVan");
	end
end