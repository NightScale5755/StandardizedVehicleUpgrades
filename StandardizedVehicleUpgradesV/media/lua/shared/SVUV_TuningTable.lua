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

if not getActivatedMods():contains("SCKCO") then

	local carRecipe = "ATAVanillaRecipes"
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
	NewCarTuningTable["TemplateVanilla"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["ModernCar"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["ModernCar02"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["CarNormal"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["CarLights"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["CarLightsPolice"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["CarTaxi"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["CarTaxi2"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["CarStationWagon"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["CarStationWagon2"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["StepVan"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["StepVan_Heralds"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["StepVan_Scarlet"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["StepVanMail"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["CarLuxury"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["OffRoad"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["PickUpTruck"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["PickUpTruckMccoy"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["PickUpTruckLights"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["PickUpTruckLightsFire"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["PickUpVan"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["PickUpVanMccoy"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["PickUpVanLights"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["PickUpVanLightsFire"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["PickUpVanLightsPolice"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["SmallCar"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["SmallCar02"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["SUV"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["VanSeats"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["Van"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["VanSpecial"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["VanSpiffo"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["Van_KnoxDisti"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["Van_LectroMax"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["Van_MassGenFac"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["Van_Transit"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["VanAmbulance"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["VanRadio"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["VanRadio_3N"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}
	NewCarTuningTable["SportsCar"] = {
		addPartsFromVehicleScript = "",
		parts = {}
	}

	if getActivatedMods():contains("STR") then
		NewCarTuningTable["Van_ravencreekdoc"] = {
			addPartsFromVehicleScript = "",
			parts = {}
		}
		NewCarTuningTable["Van_meadedoc"] = {
			addPartsFromVehicleScript = "",
			parts = {}
		}
		NewCarTuningTable["Van_jeffersondoc"] = {
			addPartsFromVehicleScript = "",
			parts = {}
		}
		NewCarTuningTable["Van_jeffersondoc"] = {
			addPartsFromVehicleScript = "",
			parts = {}
		}
		NewCarTuningTable["87gmcarmouredcar"] = {
			addPartsFromVehicleScript = "",
			parts = {}
		}
	end

	if getActivatedMods():contains("HTowTruckFix") then
		NewCarTuningTable["Chevalier_Rhino_TowTruck"] = {
			addPartsFromVehicleScript = "",
			parts = {}
		}
	end

	if getActivatedMods():contains("ETKI") then
		NewCarTuningTable["RallyETK"] = {
			addPartsFromVehicleScript = "",
			parts = {}
		}
	end

	if getActivatedMods():contains("GavrilGrandMarshal") then
		NewCarTuningTable["GavrilGrandMarshalInterceptor"] = {
			addPartsFromVehicleScript = "",
			parts = {}
		}
		NewCarTuningTable["GavrilGrandMarshalUndercover"] = {
			addPartsFromVehicleScript = "",
			parts = {}
		}
	end

	if getActivatedMods():contains("DashRoamer") then
		NewCarTuningTable["DashRoamer"] = {
			addPartsFromVehicleScript = "",
			parts = {}
		}
	end


	-- TemplateVanilla
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"] = {
		Light = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_side.png",
			--secondModel = "StaticPart",
			category = protectionLight,
			protection = {"WindowFrontLeft"},
			protectionHealthDelta = protectionLightHealthDelta,
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

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"].Light.install.area = "TireFrontRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"].Light.uninstall.area = "TireFrontRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"].Light.protection = {"WindowRearLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"].Light.install.requireInstalled = {"WindowRearLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"].Light.install.area = "TireRearLeft"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"].Light.uninstall.area = "TireRearLeft"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"].Light.protection = {"WindowRearRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"].Light.install.requireInstalled = {"WindowRearRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"].Light.install.area = "TireRearRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.area = "TireFrontRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"].Heavy.uninstall.area = "TireFrontRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"].Heavy.protection = {"WindowRearLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.requireInstalled = {"WindowRearLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"].Heavy.disableOpenWindowFromSeat = "SeatRearLeft"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.area = "TireRearLeft"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"].Heavy.uninstall.area = "TireRearLeft"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"].Heavy.protection = {"WindowRearRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.requireInstalled = {"WindowRearRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"].Heavy.disableOpenWindowFromSeat = "SeatRearRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleLeft"].Light.protection = {"WindowMiddleLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleLeft"].Light.install.requireInstalled = {"WindowMiddleLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.install.area = "TireFrontLeft"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.uninstall.area = "TireFrontLeft"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleRight"].Light.protection = {"WindowMiddleRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleRight"].Light.install.requireInstalled = {"WindowMiddleRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.install.area = "TireFrontRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.uninstall.area = "TireFrontRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.protection = {"WindowMiddleLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.install.requireInstalled = {"WindowMiddleLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.disableOpenWindowFromSeat = {"SeatMiddleLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.install.area = "TireFrontLeft"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.uninstall.area = "TireFrontLeft"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.protection = {"WindowMiddleRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.install.requireInstalled = {"WindowMiddleRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.disableOpenWindowFromSeat = {"SeatMiddleRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.install.area = "TireFrontRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.uninstall.area = "TireFrontRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"] = {
		Light = {
			icon = "media/ui/tuning2/protection_window_windshield.png",
			category = protectionLight,
			protection = {"Windshield"},
			protectionHealthDelta = protectionLightHealthDelta,
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

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2Bullbar"] = {
		Default = {
			icon = "media/ui/tuning2/van_bullbar_1.png",
			name = "IGUI_ATA2_Bullbar",
			category = protectionMods,
			protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"},
			protectionHealthDelta = protectionBullbarHealthDelta,
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

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionTrunk"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			category = protectionLight,
			protection = {"TruckBed", "TrunkDoor", "GasTank"},
			protectionHealthDelta = protectionLightHealthDelta,
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

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorsRear"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			category = protectionLight,
			protection = {"TruckBed", "DoorRear"},
			protectionHealthDelta = protectionLightHealthDelta,
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

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			secondModel = "StaticPart",
			category = protectionLight,
			protection = {"DoorFrontLeft"},
			protectionHealthDelta = protectionLightHealthDelta,
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

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"].Light.install.area = "TireFrontRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"].Light.uninstall.area = "TireFrontRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearLeft"].Light.protection = {"DoorRearLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearLeft"].Light.install.requireInstalled = {"DoorRearLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearLeft"].Light.install.area = "TireRearLeft"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearLeft"].Light.uninstall.area = "TireRearLeft"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"].Light.protection = {"DoorRearRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"].Light.install.requireInstalled = {"DoorRearRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"].Light.install.area = "TireRearRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.area = "TireFrontRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"].Heavy.uninstall.area = "TireFrontRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearLeft"].Heavy.protection = {"DoorRearLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearLeft"].Heavy.install.requireInstalled = {"DoorRearLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearLeft"].Heavy.install.area = "TireRearLeft"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearLeft"].Heavy.uninstall.area = "TireRearLeft"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"].Heavy.protection = {"DoorRearRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"].Heavy.install.requireInstalled = {"DoorRearRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleLeft"].Light.protection = {"DoorMiddleLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleLeft"].Light.install.requireInstalled = {"DoorMiddleLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleLeft"].Light.install.area = "TireFrontRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleLeft"].Light.uninstall.area = "TireFrontRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleRight"].Light.protection = {"DoorMiddleRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleRight"].Light.install.requireInstalled = {"DoorMiddleRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleRight"].Light.install.area = "TireFrontRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleRight"].Light.uninstall.area = "TireFrontRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleLeft"].Heavy.protection = {"DoorMiddleLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleLeft"].Heavy.install.requireInstalled = {"DoorMiddleLeft"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleLeft"].Heavy.install.area = "TireFrontRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleLeft"].Heavy.uninstall.area = "TireFrontRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleRight"].Heavy.protection = {"DoorMiddleRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleRight"].Heavy.install.requireInstalled = {"DoorMiddleRight"}
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleRight"].Heavy.install.area = "TireFrontRight"
	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleRight"].Heavy.uninstall.area = "TireFrontRight"

	NewCarTuningTable["TemplateVanilla"].parts["ATA2InteractiveTrunkRoofRack"] = {
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

	NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"] = {
		ATAProtection = {
			removeIfBroken = true,
			icon = "media/ui/tuning2/wheel_chain.png",
			category = protectionMods, 
			protectionModel = true, 
			protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
			protectionHealthDelta = protectionWheelsHealthDelta,
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


	-- CarNormal
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
	NewCarTuningTable["CarNormal"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2Bullbar"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearLeft"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"])
	NewCarTuningTable["CarNormal"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2InteractiveTrunkRoofRack"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])


	-- CarLights
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
	NewCarTuningTable["CarLights"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2Bullbar"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearLeft"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])


	-- CarWagon
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2Bullbar"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearLeft"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2InteractiveTrunkRoofRack"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])


	-- SmallCar
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
	NewCarTuningTable["SmallCar"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2Bullbar"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"])
	NewCarTuningTable["SmallCar"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2InteractiveTrunkRoofRack"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])


	-- SmallCar2
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
	NewCarTuningTable["SmallCar02"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2Bullbar"])
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["SmallCar02"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2InteractiveTrunkRoofRack"])
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])


	-- PickUpTruck
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
	NewCarTuningTable["PickUpTruck"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2Bullbar"])
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionTrunk"].Light.protection = {"TruckBedOpen", "GasTank"}
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionTrunk"].Heavy.protection = {"TruckBedOpen", "GasTank"}
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"])
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])


	-- PickUpVan
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
	NewCarTuningTable["PickUpVan"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2Bullbar"])
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"])
	NewCarTuningTable["PickUpVan"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2InteractiveTrunkRoofRack"])
	NewCarTuningTable["PickUpVan"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])


	-- Van
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
	NewCarTuningTable["Van"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2Bullbar"])
	NewCarTuningTable["Van"].parts["ATA2ProtectionDoorsRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorsRear"])
	NewCarTuningTable["Van"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
	NewCarTuningTable["Van"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["Van"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"])
	NewCarTuningTable["Van"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2InteractiveTrunkRoofRack"])
	NewCarTuningTable["Van"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
	NewCarTuningTable["Van"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])


	-- VanRadio
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
	NewCarTuningTable["VanRadio"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2Bullbar"])
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionDoorsRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorsRear"])
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"])
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])


	-- VanSeats
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowMiddleLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleLeft"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowMiddleRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleRight"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
	NewCarTuningTable["VanSeats"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2Bullbar"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorsRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorsRear"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorMiddleLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleLeft"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorMiddleRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorMiddleRight"])
	NewCarTuningTable["VanSeats"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2InteractiveTrunkRoofRack"])
	NewCarTuningTable["VanSeats"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])


	-- StepVan
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
	NewCarTuningTable["StepVan"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2Bullbar"])
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionDoorsRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorsRear"])
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"])
	NewCarTuningTable["StepVan"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2InteractiveTrunkRoofRack"])
	NewCarTuningTable["StepVan"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])


	NewCarTuningTable["ModernCar"] = NewCarTuningTable["CarNormal"]
	NewCarTuningTable["ModernCar02"] = NewCarTuningTable["CarNormal"]
	NewCarTuningTable["CarStationWagon2"] = NewCarTuningTable["CarStationWagon"]
	NewCarTuningTable["SUV"] = NewCarTuningTable["CarStationWagon"]
	NewCarTuningTable["CarLightsPolice"] = NewCarTuningTable["CarLights"]
	NewCarTuningTable["CarTaxi"] = NewCarTuningTable["CarLights"]
	NewCarTuningTable["CarTaxi2"] = NewCarTuningTable["CarLights"]
	NewCarTuningTable["CarLuxury"] = NewCarTuningTable["SmallCar02"]
	NewCarTuningTable["SportsCar"] = NewCarTuningTable["SmallCar02"]
	NewCarTuningTable["OffRoad"] = NewCarTuningTable["SmallCar"]
	NewCarTuningTable["PickUpTruckMccoy"] = NewCarTuningTable["PickUpTruck"]
	NewCarTuningTable["PickUpTruckLightsFire"] = NewCarTuningTable["PickUpTruck"]
	NewCarTuningTable["PickUpTruckLights"] = NewCarTuningTable["PickUpTruck"]
	NewCarTuningTable["PickUpVanMccoy"] = NewCarTuningTable["PickUpVan"]
	NewCarTuningTable["PickUpVanLightsFire"] = NewCarTuningTable["PickUpVan"]
	NewCarTuningTable["PickUpVanLightsPolice"] = NewCarTuningTable["PickUpVan"]
	NewCarTuningTable["PickUpVanLights"] = NewCarTuningTable["PickUpVan"]
	NewCarTuningTable["StepVan_Heralds"] = NewCarTuningTable["StepVan"]
	NewCarTuningTable["StepVanMail"] = NewCarTuningTable["StepVan"]
	NewCarTuningTable["StepVan_Scarlet"] = NewCarTuningTable["StepVan"]
	NewCarTuningTable["Van_KnoxDisti"] = NewCarTuningTable["Van"]
	NewCarTuningTable["Van_Transit"] = NewCarTuningTable["Van"]
	NewCarTuningTable["VanSpiffo"] = NewCarTuningTable["Van"]
	NewCarTuningTable["VanSpecial"] = NewCarTuningTable["Van"]
	NewCarTuningTable["Van_MassGenFac"] = NewCarTuningTable["Van"]
	NewCarTuningTable["Van_LectroMax"] = NewCarTuningTable["Van"]
	NewCarTuningTable["VanRadio_3N"] = NewCarTuningTable["VanRadio"]
	NewCarTuningTable["VanAmbulance"] = NewCarTuningTable["VanRadio"]

	if getActivatedMods():contains("STR") then
		NewCarTuningTable["Van_ravencreekdoc"] = NewCarTuningTable["Van"]
		NewCarTuningTable["Van_meadedoc"] = NewCarTuningTable["Van"]
		NewCarTuningTable["Van_jeffersondoc"] = NewCarTuningTable["VanSeats"]
		NewCarTuningTable["87gmcarmouredcar"] = NewCarTuningTable["PickUpVan"]
	end

	if getActivatedMods():contains("VVehicleEnhancer") then
		NewCarTuningTable["CarOldsFull"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["CarNormalPoncho"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["CarLightsStatepolice"] = NewCarTuningTable["CarLights"]
		NewCarTuningTable["CarLightsSheriff"] = NewCarTuningTable["CarLights"]
		NewCarTuningTable["CarLightsFireDept"] = NewCarTuningTable["CarLights"]
		NewCarTuningTable["CarLightsFireDept2"] = NewCarTuningTable["CarLights"]
		NewCarTuningTable["CarOldWagon"] = NewCarTuningTable["CarStationWagon"]
		NewCarTuningTable["CarPonchoWagon"] = NewCarTuningTable["CarStationWagon"]
		NewCarTuningTable["PickUpVanf76"] = NewCarTuningTable["PickUpVan"]
		NewCarTuningTable["PickUpTruckf76"] = NewCarTuningTable["PickUpTruck"]
		NewCarTuningTable["73cayenne"] = NewCarTuningTable["PickUpTruck"]
		NewCarTuningTable["Vanateam"] = NewCarTuningTable["Van"]
		NewCarTuningTable["Vanboogie"] = NewCarTuningTable["Van"]
		NewCarTuningTable["Boltrs"] = NewCarTuningTable["SmallCar"]
		NewCarTuningTable["SmallCarSwiffer"] = NewCarTuningTable["SmallCar02"]
		NewCarTuningTable["280sport"] = NewCarTuningTable["CarNormal"]
	end

	if getActivatedMods():contains("TallerMecanico") then
		NewCarTuningTable["VanSnakeneta"] = NewCarTuningTable["Van"]
		NewCarTuningTable["VanGenova"] = NewCarTuningTable["Van"]
--		NewCarTuningTable["CarTaxiArg"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["StepVan_Nubasian"] = NewCarTuningTable["StepVan"]
	end

	if getActivatedMods():contains("HTowTruckFix") then

		-- Chevalier_Rhino_TowTruck
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionTrunk"])
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionTrunk"].Light.protection = {"TruckBedOpen", "GasTank"}
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionTrunk"].Heavy.protection = {"TruckBedOpen", "GasTank"}
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionHood"].Light.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionHood"].Heavy.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"])
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])

	end

	if getActivatedMods():contains("ETKI") then

		-- RallyETK
		NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
		NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
		NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"])
		NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"])
		NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
		NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
		NewCarTuningTable["RallyETK"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2Bullbar"])
		NewCarTuningTable["RallyETK"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionTrunk"])
		NewCarTuningTable["RallyETK"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
		NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
		NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"])
		NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearLeft"])
		NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"])
		NewCarTuningTable["RallyETK"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2InteractiveTrunkRoofRack"])
		NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])


		NewCarTuningTable["ETK2400tiEvo"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["ETK2400tixEvo"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["PreETK2400"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["PreETK2400i"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["PreETK2400ix"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["PreETK2400ti"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["PreETK2400tix"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["PostETK2400"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["PostETK2400i"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["PostETK2400ix"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["PostETK2400ti"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["PostETK2400tix"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["PostETK2400ix"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["PreETK3000i"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["PreETK3000ix"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["PostETK3000i"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["PostETK3000ix"] = NewCarTuningTable["CarNormal"]
	end

	if getActivatedMods():contains("IbishuCovet") then
		NewCarTuningTable["IbishuCovetDx"] = NewCarTuningTable["SmallCar"]
		NewCarTuningTable["IbishuCovetDxi"] = NewCarTuningTable["SmallCar"]
		NewCarTuningTable["IbishuCovetLxi"] = NewCarTuningTable["SmallCar"]
		NewCarTuningTable["IbishuCovetZxi"] = NewCarTuningTable["SmallCar"]
		NewCarTuningTable["IbishuCovetZxiSpecial"] = NewCarTuningTable["SmallCar"]

	end

	if getActivatedMods():contains("GavrilGrandMarshal") then

		-- GavrilGrandMarshalInterceptor
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionTrunk"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionHood"].Light.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionHood"].Heavy.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearLeft"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])


		-- GavrilGrandMarshalUndercover
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearLeft"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionTrunk"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionHood"].Light.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionHood"].Heavy.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearLeft"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2InteractiveTrunkRoofRack"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])


		NewCarTuningTable["GavrilGrandMarshal"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["GavrilGrandMarshalLuxe"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["GavrilGrandMarshalSport"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["GavrilGrandMarshalPolice"] = NewCarTuningTable["GavrilGrandMarshalInterceptor"]
		NewCarTuningTable["GavrilGrandMarshal"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["GavrilGrandMarshalTaxi"] = NewCarTuningTable["CarLights"]

	end

	if getActivatedMods():contains("DashRoamer") then

		-- DashRoamer
		NewCarTuningTable["DashRoamer"].parts["ATA2ProtectionWindowFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontLeft"])
		NewCarTuningTable["DashRoamer"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowFrontRight"])
		NewCarTuningTable["DashRoamer"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowRearRight"])
		NewCarTuningTable["DashRoamer"].parts["ATA2ProtectionWindowMiddleRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindowMiddleRight"])
		NewCarTuningTable["DashRoamer"].parts["ATA2ProtectionWindshield"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshield"])
		NewCarTuningTable["DashRoamer"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWindshieldRear"])
		NewCarTuningTable["DashRoamer"].parts["ATA2Bullbar"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2Bullbar"])
		NewCarTuningTable["DashRoamer"].parts["ATA2ProtectionTrunk"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionTrunk"])
		NewCarTuningTable["DashRoamer"].parts["ATA2ProtectionTrunk"].Light.protection = {"TruckBed", "GasTank"}
		NewCarTuningTable["DashRoamer"].parts["ATA2ProtectionTrunk"].Heavy.protection = {"TruckBed", "GasTank"}
		NewCarTuningTable["DashRoamer"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionHood"])
		NewCarTuningTable["DashRoamer"].parts["ATA2ProtectionDoorFrontLeft"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontLeft"])
		NewCarTuningTable["DashRoamer"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorFrontRight"])
		NewCarTuningTable["DashRoamer"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionDoorRearRight"])
		NewCarTuningTable["DashRoamer"].parts["ATA2InteractiveTrunkRoofRack"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2InteractiveTrunkRoofRack"])
		NewCarTuningTable["DashRoamer"].parts["ATA2InteractiveTrunkRoofRack"].Default.containerCapacity = 100
		NewCarTuningTable["DashRoamer"].parts["ATA2ProtectionWheels"] = copy(NewCarTuningTable["TemplateVanilla"].parts["ATA2ProtectionWheels"])

	end

	ATA2Tuning_AddNewCars(NewCarTuningTable)
end