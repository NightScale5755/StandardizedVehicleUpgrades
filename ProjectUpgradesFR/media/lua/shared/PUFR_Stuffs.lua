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

if getActivatedMods():contains("FRUsedCars") then
	SetArmor("51chevy3100","PU_Armor_51chevy3100");
	SetArmor("51chevy3100old","PU_Armor_51chevy3100");
	SetArmor("64mustang","PU_Armor_64mustang");
	SetArmor("65gto","PU_Armor_65gto");
	SetArmor("68elcamino","PU_Armor_68elcamino");
	SetArmor("68wildcat","PU_Armor_68wildcat");
	SetArmor("68wildcatconvert","PU_Armor_68wildcatconvert");
	SetArmor("69charger","PU_Armor_69charger");
	SetArmor("69chargerdaytona","PU_Armor_69charger");
	SetArmor("70chevelle","PU_Armor_70chevelle");
	SetArmor("70elcamino","PU_Armor_68elcamino");
	SetArmor("71chevyc10lb","PU_Armor_71chevyc10lb");
	SetArmor("71chevyc10offroadlb","PU_Armor_71chevyc10offroadlb");
	SetArmor("71chevyc10offroadsb","PU_Armor_71chevyc10offroadsb");
	SetArmor("71chevyc10offroadstepside","PU_Armor_71chevyc10offroadstepside");
	SetArmor("71chevyc10sb","PU_Armor_71chevyc10sb");
	SetArmor("71chevyc10stepside","PU_Armor_71chevyc10stepside");
	SetArmor("71impala","PU_Armor_71impala");
	SetArmor("72beetle","PU_Armor_72beetle");
	SetArmor("73falcon","PU_Armor_73falcon");
	SetArmor("73pinto","PU_Armor_73pinto");
	SetArmor("77transam","PU_Armor_77transam");
	SetArmor("79brougham","PU_Armor_79brougham");
	SetArmor("79datsun280z","PU_Armor_79datsun280z");
	SetArmor("80f350","PU_Armor_80f350");
	SetArmor("80f350quad","PU_Armor_80f350quad");
	SetArmor("80f350ambulance","PU_Armor_80f350ambulance");
	SetArmor("80f350offroad","PU_Armor_80f350offroad");
	SetArmor("83hilux","PU_Armor_83hilux");
	SetArmor("83hiluxoffroad","PU_Armor_83hiluxoffroad");
	SetArmor("85vicsed","PU_Armor_85vic");
	SetArmor("85vicwag","PU_Armor_85vicwagon");
	SetArmor("85vicwag2","PU_Armor_85vicwagon");
	SetArmor("85vicranger","PU_Armor_85vic");
	SetArmor("85vicsheriff","PU_Armor_85vic");
	SetArmor("86bounder","PU_Armor_86bounder");
	SetArmor("86econoline","PU_Armor_86econoline");
	SetArmor("86econolineflorist","PU_Armor_86econoline");
	SetArmor("86econolineambulance","PU_Armor_86econolineambulance");
	SetArmor("86econolinerv","PU_Armor_86econolinerv");
	SetArmor("86montecarlo","PU_Armor_86montecarlo");
	SetArmor("86yugo","PU_Armor_86yugo");
	SetArmor("87blazer","PU_Armor_87blazer");
	SetArmor("87blazeroffroad","PU_Armor_87blazeroffroad");
	SetArmor("87c10sb","PU_Armor_87c10sb");
	SetArmor("87c10lb","PU_Armor_87c10lb");
	SetArmor("87c10offroadsb","PU_Armor_87c10offroadsb");
	SetArmor("87c10offroadlb","PU_Armor_87c10offroadlb");
	SetArmor("87c10utility","PU_Armor_87c10lb");
	SetArmor("87c10mccoy","PU_Armor_87c10lb");
	SetArmor("87c10fire","PU_Armor_87c10lb");
	SetArmor("87caprice","PU_Armor_87caprice");
	SetArmor("87capricePD","PU_Armor_87caprice");
	SetArmor("87suburban","PU_Armor_87suburban");
	SetArmor("90corolla","PU_Armor_90corolla");
	SetArmor("90ramsb","PU_Armor_90ramsb");
	SetArmor("90ramlb","PU_Armor_90ramlb");
	SetArmor("90ramoffroadsb","PU_Armor_90ramoffroadsb");
	SetArmor("90ramoffroadlb","PU_Armor_90ramoffroadlb");
	SetArmor("91blazerpd","PU_Armor_91blazer");
	SetArmor("91celica","PU_Armor_91celica");
	SetArmor("91chevys10","PU_Armor_91chevys10");
	SetArmor("91chevys10ext","PU_Armor_91chevys10ext");
	SetArmor("91chevys10offroad","PU_Armor_91chevys10offroad");
	SetArmor("91chevys10offroadext","PU_Armor_91chevys10offroadext");
	SetArmor("91crx","PU_Armor_91crx");
	SetArmor("91wagoneer","PU_Armor_91wagoneer");
	SetArmor("92crownvic","PU_Armor_92crownvic");
	SetArmor("92crownvicPD","PU_Armor_92crownvic");
	SetArmor("92wrangler","PU_Armor_92wrangler");
	SetArmor("92wranglerjurassic","PU_Armor_92wrangler");
	SetArmor("92wrangleroffroad","PU_Armor_92wrangleroffroad");
	SetArmor("92wranglerranger","PU_Armor_92wrangleroffroad");
	SetArmor("93explorer","PU_Armor_93explorer");
	SetArmor("93explorerjurassic","PU_Armor_93explorer");
	SetArmor("93jeepcherokee","PU_Armor_93jeepcherokee");
	SetArmor("93jeepcherokeeoffroad","PU_Armor_93jeepcherokeeoffroad");
	SetArmor("astrovan","PU_Armor_astrovan");
	SetArmor("chevystepvan","PU_Armor_chevystepvan");
	SetArmor("chevystepvanswat","PU_Armor_chevystepvanswat");
	SetArmor("isuzubox","PU_Armor_isuzubox");
	SetArmor("isuzuboxmccoy","PU_Armor_isuzuboxmccoy");
	SetArmor("isuzuboxfood","PU_Armor_isuzubox");
	SetArmor("isuzuboxelec","PU_Armor_isuzubox");
	SetArmor("f700box","PU_Armor_f700box");
	SetArmor("f700dump","PU_Armor_f700dump");
	SetArmor("f700flatbed","PU_Armor_f700flatbed");
	SetArmor("f700propane","PU_Armor_f700propane");
	SetArmor("firepumper","PU_Armor_firepumper");
	SetArmor("generallee","PU_Armor_69charger");
	SetArmor("generalmeh","PU_Armor_86yugo");
	SetArmor("hmmwvht","PU_Armor_hmmwvht");
	SetArmor("hmmwvtr","PU_Armor_hmmwvtr");
	SetArmor("m35a2bed","PU_Armor_m35a2bed");
	SetArmor("m35a2covered","PU_Armor_m35a2bed");
	SetArmor("m35a2fuel","PU_Armor_m35a2bed");
	SetArmor("m151canvas","PU_Armor_m151canvas");
	SetArmor("pursuitspecial","PU_Armor_73falcon");
	SetArmor("moveurself","PU_Armor_moveurself");
	SetArmor("schoolbus","PU_Armor_schoolbus");
	SetArmor("schoolbusshort","PU_Armor_schoolbusshort");
	SetArmor("tractorford7810","PU_Armor_tractorford7810");
	SetArmor("volvo244","PU_Armor_volvo244");

	if getActivatedMods():contains("STR") then
		SetArmor("91blazerranger","PU_Armor_91blazer");
		SetArmor("86econoline_ravencreek","PU_Armor_86econoline");
		SetArmor("86econoline_jefferson","PU_Armor_86econoline");
		SetArmor("86econoline_meade","PU_Armor_86econoline");
		SetArmor("92wrangler_USPS","PU_Armor_92wrangler");
		SetArmor("prisonbus_ravencreek","PU_Armor_schoolbus");
		SetArmor("prisonbus_jefferson","PU_Armor_schoolbus");
		SetArmor("prisonbus_meade","PU_Armor_schoolbus");
	end

	if getActivatedMods():contains("MilitaryUsedCarSkins") then
		SetArmor("blazerblackops","PU_Armor_91blazer");
		SetArmor("m151blackopps","PU_Armor_m151canvas");
		SetArmor("hmmwvpolice","PU_Armor_hmmwvht");
		SetArmor("hmmwvblackopps","PU_Armor_hmmwvht");
		SetArmor("m35a2blackopps","PU_Armor_m35a2bed");
	end

	if getActivatedMods():contains("RS_WaterCistern") then
		SetArmor("m50water","PU_Armor_m35a2bed");
		SetArmor("f700water","PU_Armor_f700propane");
		SetArmor("f700vacuum","PU_Armor_f700propane");
	end

	if getActivatedMods():contains("PogDogPolice") then
		SetArmor("72beetlePogDog","PU_Armor_72beetle");
	end
end