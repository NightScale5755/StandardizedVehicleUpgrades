require "ATA2TuningTable"

local function copy(obj, seen)
  if type(obj) ~= 'table' then return obj end
  if seen and seen[obj] then return seen[obj] end
  local s = seen or {}
  local res = setmetatable({}, getmetatable(obj))
  s[obj] = res
  for k, v in pairs(obj) do res[copy(k, s)] = copy(v, s) end
  return res
end

local carRecipe = "ATAFiliRecipes"
local timeLong = 45
local timeLong2 = 30
local timeMid = 20
local timeMid2 = 15
local timeShort = 10
--local protectionLighthealthTriger = 40
local protectionLightHealthDelta = 5
local protectionBullbarHealthDelta = 3
local protectionWheelsHealthDelta = 2
local protectionLight = "protectionLight"
local protectionHeavy = "protectionHeavy"
local protectionMods = "protectionMods"

local NewCarTuningTable = {}
-- Entries
NewCarTuningTable["TemplateFili"] = {
	addPartsFromVehicleScript = "",
	parts = {}
}
NewCarTuningTable["51chevy3100"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["51chevy3100old"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["64mustang"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["65gto"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["68elcamino"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["68wildcat"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["68wildcatconvert"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["69charger"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["69chargerdaytona"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["70chevelle"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["70elcamino"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["71chevyc10lb"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["71chevyc10offroadlb"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["71chevyc10offroadsb"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["71chevyc10offroadstepside"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["71chevyc10sb"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["71chevyc10stepside"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["71impala"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["72beetle"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["73falcon"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["73pinto"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["77transam"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["79brougham"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["79datsun280z"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["80f350"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["80f350quad"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["80f350ambulance"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["80f350offroad"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["83hilux"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["83hiluxoffroad"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["85vicsed"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["85vicwag"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["85vicwag2"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["85vicranger"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["85vicsheriff"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["86bounder"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["86econoline"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["86econolineambulance"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["86econolineflorist"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["86econolinerv"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["86montecarlo"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["86yugo"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["87blazer"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["87blazeroffroad"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["87c10sb"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["87c10lb"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["87c10offroadsb"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["87c10offroadlb"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["87c10utility"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["87c10mccoy"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["87c10fire"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["87caprice"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["87capricePD"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["87suburban"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["90corolla"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["90ramsb"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["90ramlb"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["90ramoffroadsb"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["90ramoffroadlb"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["91blazerpd"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["91celica"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["91chevys10"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["91chevys10ext"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["91chevys10offroad"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["91chevys10offroadext"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["91crx"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["91wagoneer"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["92crownvic"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["92crownvicPD"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["92wrangler"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["92wranglerjurassic"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["92wrangleroffroad"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["92wranglerranger"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["93explorer"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["93explorerjurassic"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["93jeepcherokee"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["93jeepcherokeeoffroad"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["astrovan"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["isuzubox"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["isuzuboxmccoy"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["isuzuboxfood"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["isuzuboxelec"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["chevystepvan"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["chevystepvanswat"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["f700box"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["f700dump"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["f700flatbed"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["f700propane"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["firepumper"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["generallee"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["generalmeh"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["hmmwvht"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["hmmwvtr"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["m35a2bed"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["m35a2covered"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["m35a2fuel"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["m151canvas"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["moveurself"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["pursuitspecial"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["schoolbus"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["schoolbusshort"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["tractorford7810"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["volvo244"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["Trailercamperscamp"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["Trailer51chevy"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["Trailermovingmedium"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["Trailermovingbig"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["Trailerfuelsmall"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["Trailerfuelmedium"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}

if getActivatedMods():contains("STR") then
	NewCarTuningTable["91blazerranger"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["86econoline_ravencreek"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["86econoline_jefferson"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["86econoline_meade"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["92wrangler_USPS"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["prisonbus_ravencreek"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["prisonbus_jefferson"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["prisonbus_meade"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
end

if getActivatedMods():contains("MilitaryUsedCarSkins") then
	NewCarTuningTable["blazerblackops"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["m151blackopps"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["hmmwvpolice"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["hmmwvblackopps"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["m35a2blackopps"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
end

if getActivatedMods():contains("RS_WaterCistern") then
	NewCarTuningTable["m50water"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["f700water"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["f700vacuum"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
end

if getActivatedMods():contains("PogDogPolice") then
	NewCarTuningTable["72beetlePogDog"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["Trailermovingmediumpogdog"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["Trailermovingbigpogdog"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["hmmwvhtPogDog"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["hmmwvtrPogDog"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["m35a2bedPogDog"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["m35a2coveredPogDog"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["m35a2fuelPogDog"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["m151canvasPogDog"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["chevystepvanPogDog"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
end

if getActivatedMods():contains("GarbageTruck") then
	NewCarTuningTable["GarbageTruck"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
end


-- TemplateFili
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"] = {
	Light = {
		shader = "vehiclewheel",
		icon = "media/ui/tuning2/protection_window_side.png",
		--secondModel = "StaticPart",
		category = protectionLight,
		protectionHealthDelta = protectionLightHealthDelta,
		protection = {"WindowFrontLeft"},
		removeIfBroken = true,
		install = {
			area = "TireFrontLeft",
			weight = "auto",
			use = {
				MetalPipe = 2,
				MetalBar=2,
				Screws=4,
				BlowTorch = 5,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
				secondary = "Base.Screwdriver",
			},
			skills = {
				MetalWelding = 3,
			},
			recipes = {carRecipe},
			requireInstalled = {"WindowFrontLeft"},
			time = timeLong,
		},
		uninstall = {
			area = "TireFrontLeft",
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 2,
			},
			result = "auto",
			time = timeLong,
		}
	},
	Heavy = {
		shader = "vehiclewheel",
		icon = "media/ui/tuning2/protection_window_sheet_side.png",
		--secondModel = "StaticPart",
		category = protectionHeavy,
		protection = {"WindowFrontLeft"},
		disableOpenWindowFromSeat = "SeatFrontLeft",
		removeIfBroken = true,
		install = {
			area = "TireFrontLeft",
			weight = "auto",
			use = {
				MetalPipe = 2,
				SheetMetal = 2,
				Screws=4,
				BlowTorch = 5,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
				secondary = "Base.Screwdriver",
			},
			skills = {
				MetalWelding = 5,
			},
			recipes = {carRecipe},
			requireInstalled = {"WindowFrontLeft"},
			time = timeLong,
		},
		uninstall = {
			area = "TireFrontLeft",
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 4,
			},
			result = "auto",
			time = timeLong,
		}
	}
}

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"].Light.install.area = "TireFrontRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"].Light.uninstall.area = "TireFrontRight"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"].Light.protection = {"WindowRearLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"].Light.install.requireInstalled = {"WindowRearLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"].Light.install.area = "TireRearLeft"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"].Light.uninstall.area = "TireRearLeft"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"].Light.protection = {"WindowRearRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"].Light.install.requireInstalled = {"WindowRearRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"].Light.install.area = "TireRearRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"].Light.uninstall.area = "TireRearRight"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.area = "TireFrontRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"].Heavy.uninstall.area = "TireFrontRight"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"].Heavy.protection = {"WindowRearLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.requireInstalled = {"WindowRearLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"].Heavy.disableOpenWindowFromSeat = "SeatRearLeft"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.area = "TireRearLeft"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"].Heavy.uninstall.area = "TireRearLeft"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"].Heavy.protection = {"WindowRearRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.requireInstalled = {"WindowRearRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"].Heavy.disableOpenWindowFromSeat = "SeatRearRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.area = "TireRearRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"].Heavy.uninstall.area = "TireRearRight"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleLeft"].Light.protection = {"WindowMiddleLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleLeft"].Light.install.requireInstalled = {"WindowMiddleLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.install.area = "TireFrontLeft"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.uninstall.area = "TireFrontLeft"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleRight"].Light.protection = {"WindowMiddleRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleRight"].Light.install.requireInstalled = {"WindowMiddleRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.install.area = "TireFrontRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.uninstall.area = "TireFrontRight"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.protection = {"WindowMiddleLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.install.requireInstalled = {"WindowMiddleLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.disableOpenWindowFromSeat = {"SeatMiddleLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.install.area = "TireFrontLeft"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.uninstall.area = "TireFrontLeft"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.protection = {"WindowMiddleRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.install.requireInstalled = {"WindowMiddleRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.disableOpenWindowFromSeat = {"SeatMiddleRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.install.area = "TireFrontRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.uninstall.area = "TireFrontRight"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"] = {
	Light = {
		icon = "media/ui/tuning2/protection_window_windshield.png",
		category = protectionLight,
		protectionHealthDelta = protectionLightHealthDelta,
		protection = {"Windshield"},
		removeIfBroken = true,
		install = {
			area = "TireFrontRight",
			weight = "auto",
			use = {
				MetalPipe = 4,
				MetalBar=4,
				Screws=6,
				BlowTorch = 5,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Screwdriver",
			},
			skills = {
				MetalWelding = 3,
			},
			recipes = {carRecipe},
			requireInstalled = {"Windshield"},
			time = timeLong,
		},
		uninstall = {
			area = "TireFrontRight",
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 2,
			},
			result = "auto",
			time = timeLong,
		}
	},
	Heavy = {
		icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
		category = protectionHeavy,
		protection = {"Windshield"},
		removeIfBroken = true,
		install = {
			area = "TireFrontRight",
			weight = "auto",
			use = {
				MetalPipe = 4,
				SheetMetal = 2,
				MetalBar=4,
				Screws=6,
				BlowTorch = 5,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Screwdriver",
			},
			skills = {
				MetalWelding = 5,
			},
			recipes = {carRecipe},
			requireInstalled = {"Windshield"},
			time = timeLong,
		},
		uninstall = {
			area = "TireFrontRight",
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 4,
			},
			result = "auto",
			time = timeLong,
		}
	}
}

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"] = {
	Default = {
		icon = "media/ui/tuning2/van_bullbar_1.png",
		name = "IGUI_ATA2_Bullbar",
		category = protectionMods,
		protectionHealthDelta = protectionBullbarHealthDelta,
		protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"},
		install = {
			weight = "auto",
			animation = "ATA_PickLock",
			use = {
				MetalPipe = 4,
				MetalBar=2,
				Screws=6,
				BlowTorch = 6,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
			},
			skills = {
				MetalWelding = 4,
				Mechanics = 2,
			},
			recipes = {"Intermediate Mechanics", carRecipe},
			time = timeMid, 
		},
		uninstall = {
			weight = "auto",
			animation = "ATA_Crowbar_DoorLeft",
			use = {
				BlowTorch=3,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 3,
			},
			result = "auto",
			time = timeShort,
		}
	}
}

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"] = {
	Light = {
		icon = "media/ui/tuning2/bus_protection_window_side.png",
		category = protectionLight,
		protectionHealthDelta = protectionLightHealthDelta,
		protection = {"TruckBed", "TrunkDoor", "GasTank"},
		install = {
			use = {
				MetalPipe = 4,
				MetalBar = 2,
				Screws = 4,
				BlowTorch = 4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
			},
			skills = {
				MetalWelding = 4,
			},
			recipes = {carRecipe},
			requireInstalled = {"TruckBed"},
			time = timeLong2, 
		},
		uninstall = {
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 3,
			},
			result = "auto",
			time = timeMid2,
		}
	},
	Heavy = {
		icon = "media/ui/tuning2/van_hood_protection.png",
		category = protectionHeavy,
		protection = {"TruckBed", "TrunkDoor", "GasTank"},
		install = {
			use = {
				SheetMetal = 4,
				MetalPipe = 4,
				MetalBar = 2,
				Screws = 6,
				BlowTorch = 4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
			},
			skills = {
				MetalWelding = 6,
			},
			recipes = {carRecipe},
			requireInstalled = {"TruckBed"},
			time = timeLong2, 
		},
		uninstall = {
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 5,
			},
			result = "auto",
			time = timeMid2,
		}
	}
}

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorsRear"] = {
	Light = {
		icon = "media/ui/tuning2/bus_protection_window_side.png",
		category = protectionLight,
		protectionHealthDelta = protectionLightHealthDelta,
		protection = {"TruckBed", "DoorRear"},
		install = {
			use = {
				MetalPipe = 4,
				MetalBar = 2,
				Screws = 4,
				BlowTorch = 4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
			},
			skills = {
				MetalWelding = 4,
			},
			recipes = {carRecipe},
			requireInstalled = {"TruckBed"},
			time = timeLong2, 
		},
		uninstall = {
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 3,
			},
			result = "auto",
			time = timeMid2,
		}
	},
	Heavy = {
		icon = "media/ui/tuning2/van_hood_protection.png",
		category = protectionHeavy,
		protection = {"TruckBed", "DoorRear"},
		install = {
			use = {
				SheetMetal = 4,
				MetalPipe = 4,
				MetalBar = 2,
				Screws = 6,
				BlowTorch = 4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
			},
			skills = {
				MetalWelding = 6,
			},
			recipes = {carRecipe},
			requireInstalled = {"TruckBed"},
			time = timeLong2, 
		},
		uninstall = {
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 5,
			},
			result = "auto",
			time = timeMid2,
		}
	}
}

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"] = {
	Light = {
		icon = "media/ui/tuning2/bus_protection_window_side.png",
		secondModel = "StaticPart",
		category = protectionLight,
		protectionHealthDelta = protectionLightHealthDelta,
		protection = {"DoorFrontLeft"},
		install = {
			area = "TireFrontLeft",
			weight = "auto",
			use = {
				MetalPipe = 4,
				MetalBar=4,
				Screws=4,
				BlowTorch = 8,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
			},
			skills = {
				MetalWelding = 4,
			},
			recipes = {carRecipe},
			requireInstalled = {"DoorFrontLeft"},
			time = timeLong,
		},
		uninstall = {
			area = "TireFrontLeft",
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=8,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 3,
			},
			result = "auto",
			time = timeMid,
		}
	},
	Heavy = {
		icon = "media/ui/tuning2/van_hood_protection.png",
		secondModel = "StaticPart",
		category = protectionHeavy,
		protection = {"DoorFrontLeft"},
		install = {
			area = "TireFrontLeft",
			weight = "auto",
			use = {
				MetalPipe = 4,
				MetalBar=4,
				SheetMetal=6,
				Screws=10,
				BlowTorch = 8,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
			},
			skills = {
				MetalWelding = 6,
			},
			recipes = {carRecipe},
			requireInstalled = {"DoorFrontLeft"},
			time = timeLong,
		},
		uninstall = {
			area = "TireFrontLeft",
			animation = "ATA_IdleLeverOpenMid",
			use = {
				BlowTorch=8,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 5,
			},
			result = "auto",
			time = timeMid,
		}
	}
}

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"].Light.install.area = "TireFrontRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"].Light.uninstall.area = "TireFrontRight"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"].Light.protection = {"DoorRearLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"].Light.install.requireInstalled = {"DoorRearLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"].Light.install.area = "TireRearLeft"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"].Light.uninstall.area = "TireRearLeft"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"].Light.protection = {"DoorRearRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"].Light.install.requireInstalled = {"DoorRearRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"].Light.install.area = "TireRearRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"].Light.uninstall.area = "TireRearRight"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.area = "TireFrontRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"].Heavy.uninstall.area = "TireFrontRight"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"].Heavy.protection = {"DoorRearLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"].Heavy.install.requireInstalled = {"DoorRearLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"].Heavy.install.area = "TireRearLeft"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"].Heavy.uninstall.area = "TireRearLeft"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"].Heavy.protection = {"DoorRearRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"].Heavy.install.requireInstalled = {"DoorRearRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"].Heavy.install.area = "TireRearRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"].Heavy.uninstall.area = "TireRearRight"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleLeft"].Light.protection = {"DoorMiddleLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleLeft"].Light.install.requireInstalled = {"DoorMiddleLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleLeft"].Light.install.area = "TireFrontRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleLeft"].Light.uninstall.area = "TireFrontRight"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleRight"].Light.protection = {"DoorMiddleRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleRight"].Light.install.requireInstalled = {"DoorMiddleRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleRight"].Light.install.area = "TireFrontRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleRight"].Light.uninstall.area = "TireFrontRight"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleLeft"].Heavy.protection = {"DoorMiddleLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleLeft"].Heavy.install.requireInstalled = {"DoorMiddleLeft"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleLeft"].Heavy.install.area = "TireFrontRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleLeft"].Heavy.uninstall.area = "TireFrontRight"

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleRight"].Heavy.protection = {"DoorMiddleRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleRight"].Heavy.install.requireInstalled = {"DoorMiddleRight"}
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleRight"].Heavy.install.area = "TireFrontRight"
NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleRight"].Heavy.uninstall.area = "TireFrontRight"

NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"] = {
	Default = {
		icon = "media/ui/tuning2/roof_rack_2.png",
		category = protectionMods,
		--interactiveTrunk = {
			--filling = {"ATA_VanDeRumba_roof_bag1", "ATA_VanDeRumba_roof_bag2", "ATA_VanDeRumba_roof_bag3", "ATA_VanDeRumba_roof_bag4", "ATA_VanDeRumba_roof_bag5", "ATA_VanDeRumba_roof_bag6"},
			--items = {
				--{
					--itemTypes = {"MetalDrum"},
					--modelNameByCount = {"ATA_VanDeRumba_roof_barrel"},
				--},
				--{
					--itemTypes = {"PetrolCan", "EmptyPetrolCan"},
					--modelNameByCount = {"ATA_VanDeRumba_roof_gascan0", "ATA_VanDeRumba_roof_gascan1", "ATA_VanDeRumba_roof_gascan2", "ATA_VanDeRumba_roof_gascan3", "ATA_VanDeRumba_roof_gascan4", "ATA_VanDeRumba_roof_gascan5", "ATA_VanDeRumba_roof_gascan6", "ATA_VanDeRumba_roof_gascan7", "ATA_VanDeRumba_roof_gascan8", },
				--},
			--}
		--},
		containerCapacity = 50,
		install = {
			area = "TruckBed",
			use = {
				MetalPipe = 6,
				SheetMetal = 6,
				MetalBar=4,
				BlowTorch = 10,
				Screws=12,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				primary = "Base.Wrench",
			},
			skills = {
				MetalWelding = 4,
			},
			recipes = {carRecipe},
			time = timeLong, 
		},
		uninstall = {
			area = "TruckBed",
			animation = "ATA_IdleLeverOpenHigh",
			use = {
				BlowTorch=8,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 3,
			},
			result = "auto",
			time = timeMid,
		}
	}
}

NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"] = {
	ATAProtection = {
		removeIfBroken = true,
		icon = "media/ui/tuning2/wheel_chain.png",
		category = protectionMods,
		protectionHealthDelta = protectionWheelsHealthDelta,
		protectionModel = true, 
		protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
		install = {
			area = "EngineDoor",
			sound = "ATA2InstallWheelChain",
			use = { 
				ATAProtectionWheelsChain = 1,
				BlowTorch = 4,
			},
			tools = { 
				bodylocation = "Base.WeldingMask", 
				primary = "Base.Wrench",
			},
			skills = {
				Mechanics = 2,
				MetalWelding = 3,
			},
			recipes = {carRecipe},
			requireInstalled = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"},
			time = timeLong, 
		},
		uninstall = {
			area = "EngineDoor",
			sound = "ATA2InstallWheelChain",
			use = {
				BlowTorch=4,
			},
			tools = {
				bodylocation = "Base.WeldingMask",
				both = "Base.Crowbar",
			},
			skills = {
				MetalWelding = 2,
			},
			result = {
				UnusableMetal=2,
			},
			time = timeMid,
		}
	}
}


-- 51chevy3100 - 2 door pickup without rack
NewCarTuningTable["51chevy3100"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["51chevy3100"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["51chevy3100"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["51chevy3100"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["51chevy3100"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["51chevy3100"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["51chevy3100"].parts["ATA2ProtectionTrunk"].Light.protection = {"TruckBedOpen", "GasTank"}
NewCarTuningTable["51chevy3100"].parts["ATA2ProtectionTrunk"].Heavy.protection = {"TruckBedOpen", "GasTank"}
NewCarTuningTable["51chevy3100"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["51chevy3100"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["51chevy3100"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["51chevy3100"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 64mustang - 2 door car with rack
NewCarTuningTable["64mustang"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["64mustang"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["64mustang"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["64mustang"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["64mustang"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["64mustang"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["64mustang"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["64mustang"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["64mustang"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["64mustang"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["64mustang"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 68wildcat  - 4 door sedan with rack
NewCarTuningTable["68wildcat"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["68wildcat"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["68wildcat"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"])
NewCarTuningTable["68wildcat"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"])
NewCarTuningTable["68wildcat"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["68wildcat"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["68wildcat"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["68wildcat"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["68wildcat"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["68wildcat"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["68wildcat"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["68wildcat"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"])
NewCarTuningTable["68wildcat"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"])
NewCarTuningTable["68wildcat"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["68wildcat"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 68wildcatconvert - 2 door car without rack
NewCarTuningTable["68wildcatconvert"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["68wildcatconvert"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["68wildcatconvert"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["68wildcatconvert"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["68wildcatconvert"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["68wildcatconvert"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["68wildcatconvert"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["68wildcatconvert"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["68wildcatconvert"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["68wildcatconvert"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 69chargerdaytona - 2 door car with rack, no bullbar
NewCarTuningTable["69chargerdaytona"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["69chargerdaytona"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["69chargerdaytona"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["69chargerdaytona"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["69chargerdaytona"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["69chargerdaytona"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["69chargerdaytona"].parts["ATA2ProtectionHood"].Light.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
NewCarTuningTable["69chargerdaytona"].parts["ATA2ProtectionHood"].Heavy.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
NewCarTuningTable["69chargerdaytona"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["69chargerdaytona"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["69chargerdaytona"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["69chargerdaytona"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 71chevyc10offroadlb - 2 door pickup without rack, no bullbar
NewCarTuningTable["71chevyc10offroadlb"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["71chevyc10offroadlb"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["71chevyc10offroadlb"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["71chevyc10offroadlb"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["71chevyc10offroadlb"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["71chevyc10offroadlb"].parts["ATA2ProtectionTrunk"].Light.protection = {"TruckBedOpen", "GasTank"}
NewCarTuningTable["71chevyc10offroadlb"].parts["ATA2ProtectionTrunk"].Heavy.protection = {"TruckBedOpen", "GasTank"}
NewCarTuningTable["71chevyc10offroadlb"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["71chevyc10offroadlb"].parts["ATA2ProtectionHood"].Light.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
NewCarTuningTable["71chevyc10offroadlb"].parts["ATA2ProtectionHood"].Heavy.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
NewCarTuningTable["71chevyc10offroadlb"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["71chevyc10offroadlb"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["71chevyc10offroadlb"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 73pinto - 2 door, 4 window car with rack
NewCarTuningTable["73pinto"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["73pinto"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["73pinto"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["73pinto"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"])
NewCarTuningTable["73pinto"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["73pinto"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["73pinto"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["73pinto"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["73pinto"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["73pinto"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["73pinto"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["73pinto"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["73pinto"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 80f350quad - 4 door 2 window pickup with expanded rack
NewCarTuningTable["80f350quad"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["80f350quad"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["80f350quad"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
NewCarTuningTable["80f350quad"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["80f350quad"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["80f350quad"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["80f350quad"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["80f350quad"].parts["ATA2ProtectionTrunk"].Light.protection = {"TruckBedOpen", "GasTank"}
NewCarTuningTable["80f350quad"].parts["ATA2ProtectionTrunk"].Heavy.protection = {"TruckBedOpen", "GasTank"}
NewCarTuningTable["80f350quad"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["80f350quad"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["80f350quad"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["80f350quad"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"])
NewCarTuningTable["80f350quad"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"])
NewCarTuningTable["80f350quad"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["80f350quad"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
NewCarTuningTable["80f350quad"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 80f350ambulance - 2 door van with expanded rack
NewCarTuningTable["80f350ambulance"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["80f350ambulance"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["80f350ambulance"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["80f350ambulance"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["80f350ambulance"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["80f350ambulance"].parts["ATA2ProtectionDoorsRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorsRear"])
NewCarTuningTable["80f350ambulance"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["80f350ambulance"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["80f350ambulance"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["80f350ambulance"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["80f350ambulance"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
NewCarTuningTable["80f350ambulance"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 85vicwag - 4 door car with expanded rack
NewCarTuningTable["85vicwag"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["85vicwag"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["85vicwag"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"])
NewCarTuningTable["85vicwag"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"])
NewCarTuningTable["85vicwag"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["85vicwag"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["85vicwag"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["85vicwag"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["85vicwag"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["85vicwag"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["85vicwag"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["85vicwag"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"])
NewCarTuningTable["85vicwag"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"])
NewCarTuningTable["85vicwag"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["85vicwag"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
NewCarTuningTable["85vicwag"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 85vicsheriff - 4 door car without rack, no bullbar
NewCarTuningTable["85vicsheriff"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["85vicsheriff"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["85vicsheriff"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"])
NewCarTuningTable["85vicsheriff"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"])
NewCarTuningTable["85vicsheriff"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["85vicsheriff"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["85vicsheriff"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["85vicsheriff"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["85vicsheriff"].parts["ATA2ProtectionHood"].Light.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
NewCarTuningTable["85vicsheriff"].parts["ATA2ProtectionHood"].Heavy.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
NewCarTuningTable["85vicsheriff"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["85vicsheriff"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["85vicsheriff"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"])
NewCarTuningTable["85vicsheriff"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"])
NewCarTuningTable["85vicsheriff"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 85vicranger - 4 door car without rack
NewCarTuningTable["85vicranger"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["85vicranger"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["85vicranger"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"])
NewCarTuningTable["85vicranger"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"])
NewCarTuningTable["85vicranger"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["85vicranger"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["85vicranger"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["85vicranger"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["85vicranger"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["85vicranger"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["85vicranger"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["85vicranger"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"])
NewCarTuningTable["85vicranger"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"])
NewCarTuningTable["85vicranger"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 86bounder - RV, expanded rack and stupid levels of annoying to work with
NewCarTuningTable["86bounder"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["86bounder"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["86bounder"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["86bounder"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["86bounder"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["86bounder"].parts["ATA2ProtectionDoorMiddleRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleRight"])
NewCarTuningTable["86bounder"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["86bounder"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
NewCarTuningTable["86bounder"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 86econolinerv - RV, expanded rack and stupid levels of annoying to work with
NewCarTuningTable["86econolinerv"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["86econolinerv"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["86econolinerv"].parts["ATA2ProtectionWindowMiddleLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleLeft"])
NewCarTuningTable["86econolinerv"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["86econolinerv"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["86econolinerv"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["86econolinerv"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["86econolinerv"].parts["ATA2ProtectionTrunk"].Light.protection = {"TruckBed", "GasTank"}
NewCarTuningTable["86econolinerv"].parts["ATA2ProtectionTrunk"].Heavy.protection = {"TruckBed", "GasTank"}
NewCarTuningTable["86econolinerv"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["86econolinerv"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["86econolinerv"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["86econolinerv"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"])
NewCarTuningTable["86econolinerv"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["86econolinerv"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
NewCarTuningTable["86econolinerv"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 87blazeroffroad - 2 door pickup with rack, no bullbar
NewCarTuningTable["87blazeroffroad"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["87blazeroffroad"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["87blazeroffroad"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["87blazeroffroad"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["87blazeroffroad"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["87blazeroffroad"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["87blazeroffroad"].parts["ATA2ProtectionHood"].Light.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
NewCarTuningTable["87blazeroffroad"].parts["ATA2ProtectionHood"].Heavy.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
NewCarTuningTable["87blazeroffroad"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["87blazeroffroad"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["87blazeroffroad"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["87blazeroffroad"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 87suburban - 4 door suv with expanded rack
NewCarTuningTable["87suburban"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["87suburban"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["87suburban"].parts["ATA2ProtectionWindowMiddleLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleLeft"])
NewCarTuningTable["87suburban"].parts["ATA2ProtectionWindowMiddleRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleRight"])
NewCarTuningTable["87suburban"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["87suburban"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["87suburban"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["87suburban"].parts["ATA2ProtectionDoorsRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorsRear"])
NewCarTuningTable["87suburban"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["87suburban"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["87suburban"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["87suburban"].parts["ATA2ProtectionDoorMiddleLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleLeft"])
NewCarTuningTable["87suburban"].parts["ATA2ProtectionDoorMiddleRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleRight"])
NewCarTuningTable["87suburban"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["87suburban"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
NewCarTuningTable["87suburban"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 92wrangler - 2 door, 4 window jeep without rack
NewCarTuningTable["92wrangler"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["92wrangler"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["92wrangler"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"])
NewCarTuningTable["92wrangler"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"])
NewCarTuningTable["92wrangler"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["92wrangler"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["92wrangler"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["92wrangler"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["92wrangler"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["92wrangler"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["92wrangler"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["92wrangler"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- astrovan 4 door minivan with expanded rack
NewCarTuningTable["astrovan"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["astrovan"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["astrovan"].parts["ATA2ProtectionWindowMiddleLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleLeft"])
NewCarTuningTable["astrovan"].parts["ATA2ProtectionWindowMiddleRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowMiddleRight"])
NewCarTuningTable["astrovan"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["astrovan"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["astrovan"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["astrovan"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["astrovan"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["astrovan"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["astrovan"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["astrovan"].parts["ATA2ProtectionDoorMiddleRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorMiddleRight"])
NewCarTuningTable["astrovan"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["astrovan"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
NewCarTuningTable["astrovan"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- chevystepvanswat - stepvan with expanded rack, has a special trunk
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["chevystepvanswat"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor", "GasTank"}
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor", "GasTank"}
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"])
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionDoorRearLeft"].Light.protection = {"DoorRearLeft", "FR_VehicleArmory", "FR_VehicleArmory2"}
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"])
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionDoorRearRight"].Light.protection = {"DoorRearRight", "FR_VehicleArmory", "FR_VehicleArmory2"}
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionDoorRearLeft"].Heavy.protection = {"DoorRearLeft", "FR_VehicleArmory", "FR_VehicleArmory2"}
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionDoorRearRight"].Heavy.protection = {"DoorRearRight", "FR_VehicleArmory", "FR_VehicleArmory2"}
--NewCarTuningTable["chevystepvanswat"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
--NewCarTuningTable["chevystepvanswat"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
NewCarTuningTable["chevystepvanswat"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- f700box - large box truck with extra large rack
NewCarTuningTable["f700box"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["f700box"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["f700box"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["f700box"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["f700box"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["f700box"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["f700box"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["f700box"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["f700box"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["f700box"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["f700box"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 200
NewCarTuningTable["f700box"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- Humvee with Hardtop - 4 door truck without rack, no bullbar, no rear windshield
NewCarTuningTable["hmmwvht"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["hmmwvht"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["hmmwvht"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearLeft"])
NewCarTuningTable["hmmwvht"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"])
NewCarTuningTable["hmmwvht"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["hmmwvht"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["hmmwvht"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["hmmwvht"].parts["ATA2ProtectionHood"].Light.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
NewCarTuningTable["hmmwvht"].parts["ATA2ProtectionHood"].Heavy.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
NewCarTuningTable["hmmwvht"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["hmmwvht"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["hmmwvht"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearLeft"])
NewCarTuningTable["hmmwvht"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"])
NewCarTuningTable["hmmwvht"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- schoolbus - large bus with extra large rack
NewCarTuningTable["schoolbus"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["schoolbus"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["schoolbus"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowRearRight"])
NewCarTuningTable["schoolbus"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["schoolbus"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["schoolbus"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2Bullbar"])
NewCarTuningTable["schoolbus"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["schoolbus"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["schoolbus"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["schoolbus"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorRearRight"])
NewCarTuningTable["schoolbus"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["schoolbus"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 200
NewCarTuningTable["schoolbus"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- tractorford7810 - it's a hecking tractor! A no rack, no bullbar, no trunk, 2 door monstrosity!
NewCarTuningTable["tractorford7810"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["tractorford7810"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["tractorford7810"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["tractorford7810"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["tractorford7810"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["tractorford7810"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["tractorford7810"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- 91blazerpd - 2 door truck without rack, no bullbar
NewCarTuningTable["91blazerpd"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["91blazerpd"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["91blazerpd"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["91blazerpd"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["91blazerpd"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["91blazerpd"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionHood"])
NewCarTuningTable["91blazerpd"].parts["ATA2ProtectionHood"].Light.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
NewCarTuningTable["91blazerpd"].parts["ATA2ProtectionHood"].Heavy.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
NewCarTuningTable["91blazerpd"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["91blazerpd"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["91blazerpd"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])


-- scamp - camper trailer with no windows, and an expanded rack. No bullbar.
NewCarTuningTable["Trailercamperscamp"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["Trailercamperscamp"].parts["ATA2ProtectionTrunk"].Light.protection = {"TruckBedOpen", "TrunkDoor", "DoorRear"}
NewCarTuningTable["Trailercamperscamp"].parts["ATA2ProtectionTrunk"].Heavy.protection = {"TruckBedOpen", "TrunkDoor", "DoorRear"}
NewCarTuningTable["Trailercamperscamp"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["Trailercamperscamp"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["Trailercamperscamp"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
NewCarTuningTable["Trailercamperscamp"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])
NewCarTuningTable["Trailercamperscamp"].parts["ATA2ProtectionWheels"].ATAProtection.protection = {"TireFrontLeft", "TireFrontRight"}


-- 51chevy trailer - old trailer with no windows, no rack, and no bullbar.
NewCarTuningTable["Trailer51chevy"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["Trailer51chevy"].parts["ATA2ProtectionTrunk"].Light.protection = {"TruckBedOpen"}
NewCarTuningTable["Trailer51chevy"].parts["ATA2ProtectionTrunk"].Heavy.protection = {"TruckBedOpen"}
NewCarTuningTable["Trailer51chevy"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])
NewCarTuningTable["Trailer51chevy"].parts["ATA2ProtectionWheels"].ATAProtection.protection = {"TireFrontLeft", "TireFrontRight"}
NewCarTuningTable["Trailer51chevy"].parts["ATA2ProtectionWheels"].ATAProtection.install.area = "TireFrontRight"
NewCarTuningTable["Trailer51chevy"].parts["ATA2ProtectionWheels"].ATAProtection.uninstall.area = "TireFrontRight"


-- medium moving trailer - box trailer with no windows, and an expanded rack. No bullbar.
NewCarTuningTable["Trailermovingmedium"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["Trailermovingmedium"].parts["ATA2ProtectionTrunk"].Light.protection = {"TruckBedOpen", "DoorRear"}
NewCarTuningTable["Trailermovingmedium"].parts["ATA2ProtectionTrunk"].Heavy.protection = {"TruckBedOpen", "DoorRear"}
NewCarTuningTable["Trailermovingmedium"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["Trailermovingmedium"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
NewCarTuningTable["Trailermovingmedium"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])
NewCarTuningTable["Trailermovingmedium"].parts["ATA2ProtectionWheels"].ATAProtection.protection = {"TireFrontLeft", "TireFrontRight"}
NewCarTuningTable["Trailermovingmedium"].parts["ATA2ProtectionWheels"].ATAProtection.install.area = "TireFrontRight"
NewCarTuningTable["Trailermovingmedium"].parts["ATA2ProtectionWheels"].ATAProtection.uninstall.area = "TireFrontRight"


-- big moving trailer - box trailer with no windows, and an extra large rack. No bullbar.
NewCarTuningTable["Trailermovingbig"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["Trailermovingbig"].parts["ATA2ProtectionTrunk"].Light.protection = {"TruckBedOpen", "DoorRear"}
NewCarTuningTable["Trailermovingbig"].parts["ATA2ProtectionTrunk"].Heavy.protection = {"TruckBedOpen", "DoorRear"}
NewCarTuningTable["Trailermovingbig"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["Trailermovingbig"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 200
NewCarTuningTable["Trailermovingbig"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])
NewCarTuningTable["Trailermovingbig"].parts["ATA2ProtectionWheels"].ATAProtection.install.area = "TireFrontRight"
NewCarTuningTable["Trailermovingbig"].parts["ATA2ProtectionWheels"].ATAProtection.uninstall.area = "TireFrontRight"


-- big fuel trailer - tanker trailer with no windows, no rack, and no bullbar.
NewCarTuningTable["Trailerfuelmedium"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])
NewCarTuningTable["Trailerfuelmedium"].parts["ATA2ProtectionWheels"].ATAProtection.install.area = "TireFrontRight"
NewCarTuningTable["Trailerfuelmedium"].parts["ATA2ProtectionWheels"].ATAProtection.uninstall.area = "TireFrontRight"

-- small fuel trailer - tanker trailer with no windows, no rack, and no bullbar.
NewCarTuningTable["Trailerfuelsmall"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateFili"].parts["ATA2ProtectionWheels"])
NewCarTuningTable["Trailerfuelsmall"].parts["ATA2ProtectionWheels"].ATAProtection.protection = {"TireFrontLeft", "TireFrontRight"}
NewCarTuningTable["Trailerfuelsmall"].parts["ATA2ProtectionWheels"].ATAProtection.install.area = "TireFrontRight"
NewCarTuningTable["Trailerfuelsmall"].parts["ATA2ProtectionWheels"].ATAProtection.uninstall.area = "TireFrontRight"


NewCarTuningTable["51chevy3100old"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["65gto"] = NewCarTuningTable["64mustang"]
NewCarTuningTable["68elcamino"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["69charger"] = NewCarTuningTable["64mustang"]
NewCarTuningTable["70chevelle"] = NewCarTuningTable["64mustang"]
NewCarTuningTable["70elcamino"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["71chevyc10lb"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["71chevyc10offroadsb"] = NewCarTuningTable["71chevyc10offroadlb"]
NewCarTuningTable["71chevyc10offroadstepside"] = NewCarTuningTable["71chevyc10offroadlb"]
NewCarTuningTable["71chevyc10sb"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["71chevyc10stepside"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["71impala"] = NewCarTuningTable["68wildcat"]
NewCarTuningTable["72beetle"] = NewCarTuningTable["73pinto"]
NewCarTuningTable["73falcon"] = NewCarTuningTable["64mustang"]
NewCarTuningTable["77transam"] = NewCarTuningTable["64mustang"]
NewCarTuningTable["79brougham"] = NewCarTuningTable["68wildcat"]
NewCarTuningTable["79datsun280z"] = NewCarTuningTable["68wildcatconvert"]
NewCarTuningTable["80f350"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["80f350offroad"] = NewCarTuningTable["71chevyc10offroadlb"]
NewCarTuningTable["83hilux"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["83hiluxoffroad"] = NewCarTuningTable["71chevyc10offroadlb"]
NewCarTuningTable["85vicsed"] = NewCarTuningTable["68wildcat"]
NewCarTuningTable["85vicwag2"] = NewCarTuningTable["85vicwag"]
NewCarTuningTable["86econoline"] = NewCarTuningTable["80f350ambulance"]
NewCarTuningTable["86econolineflorist"] = NewCarTuningTable["80f350ambulance"]
NewCarTuningTable["86econolineambulance"] = NewCarTuningTable["80f350ambulance"]
NewCarTuningTable["86montecarlo"] = NewCarTuningTable["64mustang"]
NewCarTuningTable["86yugo"] = NewCarTuningTable["73pinto"]
NewCarTuningTable["87blazer"] = NewCarTuningTable["64mustang"]
NewCarTuningTable["87c10sb"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["87c10lb"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["87c10offroadsb"] = NewCarTuningTable["71chevyc10offroadlb"]
NewCarTuningTable["87c10offroadlb"] = NewCarTuningTable["71chevyc10offroadlb"]
NewCarTuningTable["87c10utility"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["87c10mccoy"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["87c10fire"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["87caprice"] = NewCarTuningTable["68wildcat"]
NewCarTuningTable["87capricePD"] = NewCarTuningTable["85vicsheriff"]
NewCarTuningTable["90corolla"] = NewCarTuningTable["68wildcat"]
NewCarTuningTable["90ramsb"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["90ramlb"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["90ramoffroadsb"] = NewCarTuningTable["71chevyc10offroadlb"]
NewCarTuningTable["90ramoffroadlb"] = NewCarTuningTable["71chevyc10offroadlb"]
NewCarTuningTable["91celica"] = NewCarTuningTable["73pinto"]
NewCarTuningTable["91chevys10"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["91chevys10ext"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["91chevys10offroad"] = NewCarTuningTable["71chevyc10offroadlb"]
NewCarTuningTable["91chevys10offroadext"] = NewCarTuningTable["71chevyc10offroadlb"]
NewCarTuningTable["91crx"] = NewCarTuningTable["73pinto"]
NewCarTuningTable["91wagoneer"] = NewCarTuningTable["85vicwag"]
NewCarTuningTable["92crownvic"] = NewCarTuningTable["68wildcat"]
NewCarTuningTable["92crownvicPD"] = NewCarTuningTable["85vicsheriff"]
NewCarTuningTable["92wranglerjurassic"] = NewCarTuningTable["92wrangler"]
NewCarTuningTable["92wrangleroffroad"] = NewCarTuningTable["92wrangler"]
NewCarTuningTable["92wranglerranger"] = NewCarTuningTable["92wrangler"]
NewCarTuningTable["93explorer"] = NewCarTuningTable["85vicwag"]
NewCarTuningTable["93explorerjurassic"] = NewCarTuningTable["85vicsheriff"]
NewCarTuningTable["93jeepcherokee"] = NewCarTuningTable["85vicsed"]
NewCarTuningTable["93jeepcherokeeoffroad"] = NewCarTuningTable["85vicsheriff"]
NewCarTuningTable["chevystepvan"] = NewCarTuningTable["80f350ambulance"]
NewCarTuningTable["isuzubox"] = NewCarTuningTable["80f350ambulance"]
NewCarTuningTable["isuzuboxfood"] = NewCarTuningTable["80f350ambulance"]
NewCarTuningTable["isuzuboxelec"] = NewCarTuningTable["80f350ambulance"]
NewCarTuningTable["f700dump"] = NewCarTuningTable["68wildcatconvert"]
NewCarTuningTable["f700flatbed"] = NewCarTuningTable["51chevy3100"]
NewCarTuningTable["f700propane"] = NewCarTuningTable["68wildcatconvert"]
NewCarTuningTable["firepumper"] = NewCarTuningTable["85vicsheriff"]
NewCarTuningTable["generallee"] = NewCarTuningTable["64mustang"]
NewCarTuningTable["generalmeh"] = NewCarTuningTable["73pinto"]
NewCarTuningTable["hmmwvtr"] = NewCarTuningTable["91blazerpd"]
NewCarTuningTable["isuzuboxmccoy"] = NewCarTuningTable["68wildcatconvert"]
NewCarTuningTable["m35a2bed"] = NewCarTuningTable["91blazerpd"]
NewCarTuningTable["m35a2covered"] = NewCarTuningTable["91blazerpd"]
NewCarTuningTable["m35a2fuel"] = NewCarTuningTable["91blazerpd"]
NewCarTuningTable["m151canvas"] = NewCarTuningTable["91blazerpd"]
NewCarTuningTable["pursuitspecial"] = NewCarTuningTable["64mustang"]
NewCarTuningTable["moveurself"] = NewCarTuningTable["80f350ambulance"]
NewCarTuningTable["schoolbusshort"] = NewCarTuningTable["schoolbus"]
NewCarTuningTable["volvo244"] = NewCarTuningTable["68wildcat"]

if getActivatedMods():contains("STR") then
	NewCarTuningTable["91blazerranger"] = NewCarTuningTable["91blazerpd"]
	NewCarTuningTable["86econoline_ravencreek"] = NewCarTuningTable["80f350ambulance"]
	NewCarTuningTable["86econoline_jefferson"] = NewCarTuningTable["80f350ambulance"]
	NewCarTuningTable["86econoline_meade"] = NewCarTuningTable["80f350ambulance"]
	NewCarTuningTable["92wrangler_USPS"] = NewCarTuningTable["92wrangler"]
	NewCarTuningTable["prisonbus_ravencreek"] = NewCarTuningTable["schoolbus"]
	NewCarTuningTable["prisonbus_jefferson"] = NewCarTuningTable["schoolbus"]
	NewCarTuningTable["prisonbus_meade"] = NewCarTuningTable["schoolbus"]
end

if getActivatedMods():contains("MilitaryUsedCarSkins") then
	NewCarTuningTable["blazerblackops"] = NewCarTuningTable["91blazerpd"]
	NewCarTuningTable["m151blackopps"] = NewCarTuningTable["91blazerpd"]
	NewCarTuningTable["hmmwvpolice"] = NewCarTuningTable["hmmwvht"]
	NewCarTuningTable["hmmwvblackopps"] = NewCarTuningTable["hmmwvht"]
	NewCarTuningTable["m35a2blackopps"] = NewCarTuningTable["91blazerpd"]
end

if getActivatedMods():contains("RS_WaterCistern") then
	NewCarTuningTable["m50water"] = NewCarTuningTable["91blazerpd"]
	NewCarTuningTable["f700water"] = NewCarTuningTable["68wildcatconvert"]
	NewCarTuningTable["f700vacuum"] = NewCarTuningTable["68wildcatconvert"]
end

if getActivatedMods():contains("PogDogPolice") then
	NewCarTuningTable["72beetlePogDog"] = NewCarTuningTable["73pinto"]
	NewCarTuningTable["Trailermovingmediumpogdog"] = NewCarTuningTable["Trailermovingmedium"]
	NewCarTuningTable["Trailermovingbigpogdog"] = NewCarTuningTable["Trailermovingbig"]
	NewCarTuningTable["hmmwvhtPogDog"] = NewCarTuningTable["hmmwvht"]
	NewCarTuningTable["hmmwvtrPogDog"] = NewCarTuningTable["91blazerpd"]
	NewCarTuningTable["m35a2bedPogDog"] = NewCarTuningTable["91blazerpd"]
	NewCarTuningTable["m35a2coveredPogDog"] = NewCarTuningTable["91blazerpd"]
	NewCarTuningTable["m35a2fuelPogDog"] = NewCarTuningTable["91blazerpd"]
	NewCarTuningTable["m151canvasPogDog"] = NewCarTuningTable["91blazerpd"]
	NewCarTuningTable["chevystepvanPogDog"] = NewCarTuningTable["80f350ambulance"]
end

if getActivatedMods():contains("GarbageTruck") then
	NewCarTuningTable["GarbageTruck"] = NewCarTuningTable["68wildcatconvert"]
end

ATA2Tuning_AddNewCars(NewCarTuningTable)