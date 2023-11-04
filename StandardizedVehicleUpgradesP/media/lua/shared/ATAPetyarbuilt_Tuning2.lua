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

local carRecipe = "ATAPetyarbuiltRecipes"
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
NewCarTuningTable["TemplatePetyarbuilt379"] = {
	addPartsFromVehicleScript = "",
	parts = {}
}
NewCarTuningTable["ATAPetyarbuilt"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["ATAPetyarbuiltSleeper"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["ATAPetyarbuiltSleeperLong"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}
NewCarTuningTable["TrailerTSMega"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}

-- TemplatePetyarbuilt379
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontLeft"] = {
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

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontRight"].Light.install.area = "TireFrontRight"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontRight"].Light.uninstall.area = "TireFrontRight"

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearLeft"].Light.protection = {"WindowRearLeft"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearLeft"].Light.install.requireInstalled = {"WindowRearLeft"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearLeft"].Light.install.area = "TireRearLeft"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearLeft"].Light.uninstall.area = "TireRearLeft"

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearRight"].Light.protection = {"WindowRearRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearRight"].Light.install.requireInstalled = {"WindowRearRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearRight"].Light.install.area = "TireRearRight"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearRight"].Light.uninstall.area = "TireRearRight"

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.area = "TireFrontRight"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontRight"].Heavy.uninstall.area = "TireFrontRight"

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearLeft"].Heavy.protection = {"WindowRearLeft"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.requireInstalled = {"WindowRearLeft"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearLeft"].Heavy.disableOpenWindowFromSeat = "SeatRearLeft"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.area = "TireRearLeft"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearLeft"].Heavy.uninstall.area = "TireRearLeft"

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearRight"].Heavy.protection = {"WindowRearRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.requireInstalled = {"WindowRearRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearRight"].Heavy.disableOpenWindowFromSeat = "SeatRearRight"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.area = "TireRearRight"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearRight"].Heavy.uninstall.area = "TireRearRight"

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindshield"] = {
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

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2Bullbar"] = {
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

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionTrunk"] = {
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

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionHood"] = {
    Light = {
        icon = "media/ui/tuning2/bus_protection_window_side.png",
        category = protectionLight,
		protectionHealthDelta = protectionLightHealthDelta,
        protection = {"EngineDoor", "GasTank"},
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
			requireInstalled = {"EngineDoor"},
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
		protection = {"EngineDoor", "GasTank"},
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
			requireInstalled = {"EngineDoor"},
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

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontLeft"] = {
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

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontRight"].Light.install.area = "TireFrontRight"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontRight"].Light.uninstall.area = "TireFrontRight"

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearLeft"].Light.protection = {"DoorRearLeft"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearLeft"].Light.install.requireInstalled = {"DoorRearLeft"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearLeft"].Light.install.area = "TireRearLeft"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearLeft"].Light.uninstall.area = "TireRearLeft"

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearRight"].Light.protection = {"DoorRearRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearRight"].Light.install.requireInstalled = {"DoorRearRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearRight"].Light.install.area = "TireRearRight"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearRight"].Light.uninstall.area = "TireRearRight"

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.area = "TireFrontRight"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontRight"].Heavy.uninstall.area = "TireFrontRight"

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearLeft"].Heavy.protection = {"DoorRearLeft"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearLeft"].Heavy.install.requireInstalled = {"DoorRearLeft"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearLeft"].Heavy.install.area = "TireRearLeft"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearLeft"].Heavy.uninstall.area = "TireRearLeft"

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearRight"].Heavy.protection = {"DoorRearRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearRight"].Heavy.install.requireInstalled = {"DoorRearRight"}
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearRight"].Heavy.install.area = "TireRearRight"
NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorRearRight"].Heavy.uninstall.area = "TireRearRight"

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2InteractiveTrunkRoofRack"] = {
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
		containerCapacity = 200,
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

NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWheels"] = {
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


-- ATAPetyarbuilt
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindshieldRear"])
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2Bullbar"])
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionHood"])
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWheels"])
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWheels"].ATAProtection.protection = {"TireFrontLeft", "TireFrontRight", "TireMiddleLeft", "TireMiddleRight", "TireRearLeft", "TireRearRight"}
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWheels"].ATAProtection.install.requireInstalled = {"TireFrontLeft", "TireFrontRight", "TireMiddleLeft", "TireMiddleRight", "TireRearLeft", "TireRearRight"}


-- ATAPetyarbuiltSleeper
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontRight"])
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindowRearRight"])
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2Bullbar"])
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionHood"])
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionDoorFrontRight"])
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWheels"])
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWheels"].ATAProtection.protection = {"TireFrontLeft", "TireFrontRight", "TireMiddleLeft", "TireMiddleRight", "TireRearLeft", "TireRearRight"}
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWheels"].ATAProtection.install.requireInstalled = {"TireFrontLeft", "TireFrontRight", "TireMiddleLeft", "TireMiddleRight", "TireRearLeft", "TireRearRight"}


-- petyarbuilt379 trailer - semi trailer with no windows, and an extra large rack. No bullbar.
NewCarTuningTable["TrailerTSMega"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionTrunk"])
NewCarTuningTable["TrailerTSMega"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2InteractiveTrunkRoofRack"])
NewCarTuningTable["TrailerTSMega"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplatePetyarbuilt379"].parts["ATA2ProtectionWheels"])
NewCarTuningTable["TrailerTSMega"].parts["ATA2ProtectionWheels"].ATAProtection.install.area = "TireFrontRight"
NewCarTuningTable["TrailerTSMega"].parts["ATA2ProtectionWheels"].ATAProtection.uninstall.area = "TireFrontRight"


NewCarTuningTable["ATAPetyarbuiltSleeperLong"] = NewCarTuningTable["ATAPetyarbuiltSleeper"]

ATA2Tuning_AddNewCars(NewCarTuningTable)