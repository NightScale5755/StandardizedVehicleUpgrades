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
	local NewCarTuningTable = {}
	-- Entries
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

	-- CarNormal
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowFrontLeft"] = {
		Light = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_side.png",
			--secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 2,
				},
				result = "auto",
				time = 65,
			}
		},
		Heavy = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_sheet_side.png",
			--secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			disableOpenWindowFromSeat = "SeatFrontLeft",
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 4,
				},
				result = "auto",
				time = 65,
			}
		}
	}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowRearLeft"].Light.protection = {"WindowRearLeft"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowRearLeft"].Light.install.requireInstalled = {"WindowRearLeft"}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowRearRight"].Light.protection = {"WindowRearRight"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowRearRight"].Light.install.requireInstalled = {"WindowRearRight"}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowRearLeft"].Heavy.protection = {"WindowRearLeft"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.requireInstalled = {"WindowRearLeft"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowRearLeft"].Heavy.disableOpenWindowFromSeat = "SeatRearLeft"

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowRearRight"].Heavy.protection = {"WindowRearRight"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.requireInstalled = {"WindowRearRight"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindowRearRight"].Heavy.disableOpenWindowFromSeat = "SeatRearRight"

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindshield"] = {
		Light = {
			icon = "media/ui/tuning2/protection_window_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		}
	}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["CarNormal"].parts["ATA2Bullbar"] = {
		Default = {
			icon = "media/ui/tuning2/van_bullbar_1.png",
			name = "IGUI_ATA2_Bullbar",
			category = "Bullbars",
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
				time = 40, 
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
				time = 20,
			}
		}
	}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionTrunk"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			category = "Protection",
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
				time = 55, 
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
				time = 32,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			category = "Protection",
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
				time = 55, 
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
				time = 33,
			}
		}
	}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["CarNormal"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorFrontLeft"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorRearLeft"].Light.protection = {"DoorRearLeft"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorRearLeft"].Light.install.requireInstalled = {"DoorRearLeft"}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorRearRight"].Light.protection = {"DoorRearRight"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorRearRight"].Light.install.requireInstalled = {"DoorRearRight"}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorRearLeft"].Heavy.protection = {"DoorRearLeft"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorRearLeft"].Heavy.install.requireInstalled = {"DoorRearLeft"}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorRearRight"].Heavy.protection = {"DoorRearRight"}
	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionDoorRearRight"].Heavy.install.requireInstalled = {"DoorRearRight"}

	NewCarTuningTable["CarNormal"].parts["ATA2InteractiveTrunkRoofRack"] = {
		Default = {
			icon = "media/ui/tuning2/roof_rack_2.png",
			category = "Trunks",
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
				time = 60, 
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["CarNormal"].parts["ATA2ProtectionWheels"] = {
		ATAProtection = {
			removeIfBroken = true,
			icon = "media/ui/tuning2/wheel_chain.png",
			category = "Protection", 
			protectionModel = true, 
			protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
			install = { 
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
				time = 65, 
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	-- CarLights
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowFrontLeft"] = {
		Light = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 2,
				},
				result = "auto",
				time = 65,
			}
		},
		Heavy = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_sheet_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			disableOpenWindowFromSeat = "SeatFrontLeft",
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 4,
				},
				result = "auto",
				time = 65,
			}
		}
	}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowRearLeft"].Light.protection = {"WindowRearLeft"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowRearLeft"].Light.install.requireInstalled = {"WindowRearLeft"}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowRearRight"].Light.protection = {"WindowRearRight"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowRearRight"].Light.install.requireInstalled = {"WindowRearRight"}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowRearLeft"].Heavy.protection = {"WindowRearLeft"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.requireInstalled = {"WindowRearLeft"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowRearLeft"].Heavy.disableOpenWindowFromSeat = "SeatRearLeft"

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowRearRight"].Heavy.protection = {"WindowRearRight"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.requireInstalled = {"WindowRearRight"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindowRearRight"].Heavy.disableOpenWindowFromSeat = "SeatRearRight"

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindshield"] = {
		Light = {
			icon = "media/ui/tuning2/protection_window_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		}
	}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["CarLights"].parts["ATA2Bullbar"] = {
		Default = {
			icon = "media/ui/tuning2/van_bullbar_1.png",
			name = "IGUI_ATA2_Bullbar",
			category = "Bullbars",
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
				time = 40, 
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
				time = 20,
			}
		}
	}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionTrunk"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			category = "Protection",
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
				time = 55, 
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
				time = 32,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			category = "Protection",
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
				time = 55, 
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
				time = 33,
			}
		}
	}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["CarLights"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorFrontLeft"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorRearLeft"].Light.protection = {"DoorRearLeft"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorRearLeft"].Light.install.requireInstalled = {"DoorRearLeft"}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorRearRight"].Light.protection = {"DoorRearRight"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorRearRight"].Light.install.requireInstalled = {"DoorRearRight"}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorRearLeft"].Heavy.protection = {"DoorRearLeft"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorRearLeft"].Heavy.install.requireInstalled = {"DoorRearLeft"}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorRearRight"].Heavy.protection = {"DoorRearRight"}
	NewCarTuningTable["CarLights"].parts["ATA2ProtectionDoorRearRight"].Heavy.install.requireInstalled = {"DoorRearRight"}

	NewCarTuningTable["CarLights"].parts["ATA2ProtectionWheels"] = {
		ATAProtection = {
			removeIfBroken = true,
			icon = "media/ui/tuning2/wheel_chain.png",
			category = "Protection", 
			protectionModel = true, 
			protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
			install = { 
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
				time = 65, 
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	-- CarWagon
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowFrontLeft"] = {
		Light = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 2,
				},
				result = "auto",
				time = 65,
			}
		},
		Heavy = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_sheet_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			disableOpenWindowFromSeat = "SeatFrontLeft",
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 4,
				},
				result = "auto",
				time = 65,
			}
		}
	}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowRearLeft"].Light.protection = {"WindowRearLeft"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowRearLeft"].Light.install.requireInstalled = {"WindowRearLeft"}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowRearRight"].Light.protection = {"WindowRearRight"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowRearRight"].Light.install.requireInstalled = {"WindowRearRight"}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowRearLeft"].Heavy.protection = {"WindowRearLeft"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.requireInstalled = {"WindowRearLeft"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowRearLeft"].Heavy.disableOpenWindowFromSeat = "SeatRearLeft"

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowRearRight"].Heavy.protection = {"WindowRearRight"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.requireInstalled = {"WindowRearRight"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindowRearRight"].Heavy.disableOpenWindowFromSeat = "SeatRearRight"

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindshield"] = {
		Light = {
			icon = "media/ui/tuning2/protection_window_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		}
	}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["CarStationWagon"].parts["ATA2Bullbar"] = {
		Default = {
			icon = "media/ui/tuning2/van_bullbar_1.png",
			name = "IGUI_ATA2_Bullbar",
			category = "Bullbars",
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
				time = 40, 
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
				time = 20,
			}
		}
	}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionTrunk"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			category = "Protection",
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
				time = 55, 
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
				time = 32,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			category = "Protection",
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
				time = 55, 
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
				time = 33,
			}
		}
	}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorFrontLeft"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorRearLeft"].Light.protection = {"DoorRearLeft"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorRearLeft"].Light.install.requireInstalled = {"DoorRearLeft"}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorRearRight"].Light.protection = {"DoorRearRight"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorRearRight"].Light.install.requireInstalled = {"DoorRearRight"}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorRearLeft"].Heavy.protection = {"DoorRearLeft"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorRearLeft"].Heavy.install.requireInstalled = {"DoorRearLeft"}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorRearRight"].Heavy.protection = {"DoorRearRight"}
	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionDoorRearRight"].Heavy.install.requireInstalled = {"DoorRearRight"}

	NewCarTuningTable["CarStationWagon"].parts["ATA2InteractiveTrunkRoofRack"] = {
		Default = {
			icon = "media/ui/tuning2/roof_rack_2.png",
			category = "Trunks",
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
			containerCapacity = 100,
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
				time = 60, 
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["CarStationWagon"].parts["ATA2ProtectionWheels"] = {
		ATAProtection = {
			removeIfBroken = true,
			icon = "media/ui/tuning2/wheel_chain.png",
			category = "Protection", 
			protectionModel = true, 
			protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
			install = { 
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
				time = 65, 
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	-- SmallCar
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowFrontLeft"] = {
		Light = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 2,
				},
				result = "auto",
				time = 65,
			}
		},
		Heavy = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_sheet_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			disableOpenWindowFromSeat = "SeatFrontLeft",
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 4,
				},
				result = "auto",
				time = 65,
			}
		}
	}

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearLeft"].Light.protection = {"WindowRearLeft"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearLeft"].Light.install.requireInstalled = {"WindowRearLeft"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearLeft"].Light.install.area = "TireRearLeft"
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearLeft"].Light.uninstall.area = "TireRearLeft"

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearRight"].Light.protection = {"WindowRearRight"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearRight"].Light.install.requireInstalled = {"WindowRearRight"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearRight"].Light.install.area = "TireRearRight"
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearRight"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearLeft"].Heavy.protection = {"WindowRearLeft"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.requireInstalled = {"WindowRearLeft"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.area = "TireRearLeft"
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearLeft"].Heavy.uninstall.area = "TireRearLeft"
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearLeft"].Heavy.disableOpenWindowFromSeat = "SeatRearLeft"

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearRight"].Heavy.protection = {"WindowRearRight"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.requireInstalled = {"WindowRearRight"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearRight"].Heavy.uninstall.area = "TireRearRight"
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindowRearRight"].Heavy.disableOpenWindowFromSeat = "SeatRearRight"

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindshield"] = {
		Light = {
			icon = "media/ui/tuning2/protection_window_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		}
	}

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["SmallCar"].parts["ATA2Bullbar"] = {
		Default = {
			icon = "media/ui/tuning2/van_bullbar_1.png",
			name = "IGUI_ATA2_Bullbar",
			category = "Bullbars",
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
				time = 40, 
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
				time = 20,
			}
		}
	}

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionTrunk"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			category = "Protection",
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
				time = 55, 
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
				time = 32,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			category = "Protection",
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
				time = 55, 
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
				time = 33,
			}
		}
	}

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["SmallCar"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionDoorFrontLeft"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["SmallCar"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["SmallCar"].parts["ATA2InteractiveTrunkRoofRack"] = {
		Default = {
			icon = "media/ui/tuning2/roof_rack_2.png",
			category = "Trunks",
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
				time = 60, 
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["SmallCar"].parts["ATA2ProtectionWheels"] = {
		ATAProtection = {
			removeIfBroken = true,
			icon = "media/ui/tuning2/wheel_chain.png",
			category = "Protection", 
			protectionModel = true, 
			protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
			install = { 
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
				time = 65, 
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	-- SmallCar2
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindowFrontLeft"] = {
		Light = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 2,
				},
				result = "auto",
				time = 65,
			}
		},
		Heavy = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_sheet_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			disableOpenWindowFromSeat = "SeatFrontLeft",
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 4,
				},
				result = "auto",
				time = 65,
			}
		}
	}

	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}

	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"

	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindshield"] = {
		Light = {
			icon = "media/ui/tuning2/protection_window_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		}
	}

	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["SmallCar02"].parts["ATA2Bullbar"] = {
		Default = {
			icon = "media/ui/tuning2/van_bullbar_1.png",
			name = "IGUI_ATA2_Bullbar",
			category = "Bullbars",
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
				time = 40, 
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
				time = 20,
			}
		}
	}

	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionTrunk"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			category = "Protection",
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
				time = 55, 
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
				time = 32,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			category = "Protection",
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
				time = 55, 
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
				time = 33,
			}
		}
	}

	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor"}
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor"}
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionDoorFrontLeft"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["SmallCar02"].parts["ATA2InteractiveTrunkRoofRack"] = {
		Default = {
			icon = "media/ui/tuning2/roof_rack_2.png",
			category = "Trunks",
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
				time = 60, 
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["SmallCar02"].parts["ATA2ProtectionWheels"] = {
		ATAProtection = {
			removeIfBroken = true,
			icon = "media/ui/tuning2/wheel_chain.png",
			category = "Protection", 
			protectionModel = true, 
			protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
			install = { 
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
				time = 65, 
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	-- PickUpTruck
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindowFrontLeft"] = {
		Light = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 2,
				},
				result = "auto",
				time = 65,
			}
		},
		Heavy = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_sheet_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			disableOpenWindowFromSeat = "SeatFrontLeft",
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 4,
				},
				result = "auto",
				time = 65,
			}
		}
	}

	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}

	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"

	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindshield"] = {
		Light = {
			icon = "media/ui/tuning2/protection_window_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		}
	}

	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["PickUpTruck"].parts["ATA2Bullbar"] = {
		Default = {
			icon = "media/ui/tuning2/van_bullbar_1.png",
			name = "IGUI_ATA2_Bullbar",
			category = "Bullbars",
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
				time = 40, 
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
				time = 20,
			}
		}
	}

	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionTrunk"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			category = "Protection",
			protection = {"TruckBedOpen", "GasTank"},
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
				requireInstalled = {"TruckBedOpen"},
				time = 55, 
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
				time = 32,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			category = "Protection",
			protection = {"TruckBedOpen", "GasTank"},
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
				requireInstalled = {"TruckBedOpen"},
				time = 55, 
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
				time = 33,
			}
		}
	}

	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor"}
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor"}
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionDoorFrontLeft"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["PickUpTruck"].parts["ATA2ProtectionWheels"] = {
		ATAProtection = {
			removeIfBroken = true,
			icon = "media/ui/tuning2/wheel_chain.png",
			category = "Protection", 
			protectionModel = true, 
			protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
			install = { 
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
				time = 65, 
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	-- PickUpVan
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindowFrontLeft"] = {
		Light = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 2,
				},
				result = "auto",
				time = 65,
			}
		},
		Heavy = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_sheet_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			disableOpenWindowFromSeat = "SeatFrontLeft",
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 4,
				},
				result = "auto",
				time = 65,
			}
		}
	}

	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}

	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"

	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindshield"] = {
		Light = {
			icon = "media/ui/tuning2/protection_window_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		}
	}

	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["PickUpVan"].parts["ATA2Bullbar"] = {
		Default = {
			icon = "media/ui/tuning2/van_bullbar_1.png",
			name = "IGUI_ATA2_Bullbar",
			category = "Bullbars",
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
				time = 40, 
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
				time = 20,
			}
		}
	}

	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionTrunk"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			category = "Protection",
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
				time = 55, 
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
				time = 32,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			category = "Protection",
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
				time = 55, 
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
				time = 33,
			}
		}
	}

	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor"}
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor"}
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionDoorFrontLeft"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["PickUpVan"].parts["ATA2InteractiveTrunkRoofRack"] = {
		Default = {
			icon = "media/ui/tuning2/roof_rack_2.png",
			category = "Trunks",
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
			containerCapacity = 100,
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
				time = 60, 
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["PickUpVan"].parts["ATA2ProtectionWheels"] = {
		ATAProtection = {
			removeIfBroken = true,
			icon = "media/ui/tuning2/wheel_chain.png",
			category = "Protection", 
			protectionModel = true, 
			protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
			install = { 
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
				time = 65, 
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	-- Van
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindowFrontLeft"] = {
		Light = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_side.png",
			--secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 2,
				},
				result = "auto",
				time = 65,
			}
		},
		Heavy = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_sheet_side.png",
			--secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			disableOpenWindowFromSeat = "SeatFrontLeft",
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 4,
				},
				result = "auto",
				time = 65,
			}
		}
	}

	NewCarTuningTable["Van"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["Van"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}

	NewCarTuningTable["Van"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"

	NewCarTuningTable["Van"].parts["ATA2ProtectionWindshield"] = {
		Light = {
			icon = "media/ui/tuning2/protection_window_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		}
	}

	NewCarTuningTable["Van"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["Van"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["Van"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["Van"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["Van"].parts["ATA2Bullbar"] = {
		Default = {
			icon = "media/ui/tuning2/van_bullbar_1.png",
			name = "IGUI_ATA2_Bullbar",
			category = "Bullbars",
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
				time = 40, 
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
				time = 20,
			}
		}
	}

	NewCarTuningTable["Van"].parts["ATA2ProtectionDoorsRear"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			category = "Protection",
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
				time = 55, 
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
				time = 32,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			category = "Protection",
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
				time = 55, 
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
				time = 33,
			}
		}
	}

	NewCarTuningTable["Van"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["Van"].parts["ATA2ProtectionDoorsRear"])
	NewCarTuningTable["Van"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor"}
	NewCarTuningTable["Van"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["Van"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor"}
	NewCarTuningTable["Van"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["Van"].parts["ATA2ProtectionDoorFrontLeft"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["Van"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["Van"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["Van"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
	NewCarTuningTable["Van"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["Van"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
	NewCarTuningTable["Van"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["Van"].parts["ATA2InteractiveTrunkRoofRack"] = {
		Default = {
			icon = "media/ui/tuning2/roof_rack_2.png",
			category = "Trunks",
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
			containerCapacity = 100,
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
				time = 60, 
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["Van"].parts["ATA2ProtectionWheels"] = {
		ATAProtection = {
			removeIfBroken = true,
			icon = "media/ui/tuning2/wheel_chain.png",
			category = "Protection", 
			protectionModel = true, 
			protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
			install = { 
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
				time = 65, 
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	-- VanRadio
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindowFrontLeft"] = {
		Light = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 2,
				},
				result = "auto",
				time = 65,
			}
		},
		Heavy = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_sheet_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			disableOpenWindowFromSeat = "SeatFrontLeft",
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 4,
				},
				result = "auto",
				time = 65,
			}
		}
	}

	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}

	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"

	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindshield"] = {
		Light = {
			icon = "media/ui/tuning2/protection_window_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		}
	}

	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["VanRadio"].parts["ATA2Bullbar"] = {
		Default = {
			icon = "media/ui/tuning2/van_bullbar_1.png",
			name = "IGUI_ATA2_Bullbar",
			category = "Bullbars",
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
				time = 40, 
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
				time = 20,
			}
		}
	}

	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionDoorsRear"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			category = "Protection",
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
				time = 55, 
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
				time = 32,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			category = "Protection",
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
				time = 55, 
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
				time = 33,
			}
		}
	}

	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["VanRadio"].parts["ATA2ProtectionDoorsRear"])
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor"}
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor"}
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionDoorFrontLeft"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["VanRadio"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["VanRadio"].parts["ATA2ProtectionWheels"] = {
		ATAProtection = {
			removeIfBroken = true,
			icon = "media/ui/tuning2/wheel_chain.png",
			category = "Protection", 
			protectionModel = true, 
			protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
			install = { 
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
				time = 65, 
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	-- VanSeats
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowFrontLeft"] = {
		Light = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 2,
				},
				result = "auto",
				time = 65,
			}
		},
		Heavy = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_sheet_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			disableOpenWindowFromSeat = "SeatFrontLeft",
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 4,
				},
				result = "auto",
				time = 65,
			}
		}
	}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowMiddleLeft"] = copy(NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowMiddleLeft"].Light.protection = {"WindowMiddleLeft"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowMiddleLeft"].Light.install.requireInstalled = {"WindowMiddleLeft"}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowMiddleRight"] = copy(NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowMiddleRight"].Light.protection = {"WindowMiddleRight"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowMiddleRight"].Light.install.requireInstalled = {"WindowMiddleRight"}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.protection = {"WindowMiddleLeft"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.install.requireInstalled = {"WindowMiddleLeft"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowMiddleLeft"].Heavy.disableOpenWindowFromSeat = {"SeatMiddleLeft"}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.protection = {"WindowMiddleRight"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.install.requireInstalled = {"WindowMiddleRight"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindowMiddleRight"].Heavy.disableOpenWindowFromSeat = {"SeatMiddleRight"}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindshield"] = {
		Light = {
			icon = "media/ui/tuning2/protection_window_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		}
	}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["VanSeats"].parts["ATA2Bullbar"] = {
		Default = {
			icon = "media/ui/tuning2/van_bullbar_1.png",
			name = "IGUI_ATA2_Bullbar",
			category = "Bullbars",
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
				time = 40, 
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
				time = 20,
			}
		}
	}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorsRear"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			category = "Protection",
			protection = {"DoorRear"},
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
				time = 55, 
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
				time = 32,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			category = "Protection",
			protection = {"DoorRear"},
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
				time = 55, 
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
				time = 33,
			}
		}
	}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorsRear"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorFrontLeft"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorMiddleLeft"] = copy(NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorMiddleLeft"].Light.protection = {"DoorMiddleLeft"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorMiddleLeft"].Light.install.requireInstalled = {"DoorMiddleLeft"}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorMiddleRight"] = copy(NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorMiddleRight"].Light.protection = {"DoorMiddleRight"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorMiddleRight"].Light.install.requireInstalled = {"DoorMiddleRight"}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorMiddleLeft"].Heavy.protection = {"DoorMiddleLeft"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorMiddleLeft"].Heavy.install.requireInstalled = {"DoorMiddleLeft"}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorMiddleRight"].Heavy.protection = {"DoorMiddleRight"}
	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionDoorMiddleRight"].Heavy.install.requireInstalled = {"DoorMiddleRight"}

	NewCarTuningTable["VanSeats"].parts["ATA2InteractiveTrunkRoofRack"] = {
		Default = {
			icon = "media/ui/tuning2/roof_rack_2.png",
			category = "Trunks",
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
			containerCapacity = 100,
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
				time = 60, 
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["VanSeats"].parts["ATA2ProtectionWheels"] = {
		ATAProtection = {
			removeIfBroken = true,
			icon = "media/ui/tuning2/wheel_chain.png",
			category = "Protection", 
			protectionModel = true, 
			protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
			install = { 
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
				time = 65, 
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	-- StepVan
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindowFrontLeft"] = {
		Light = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 2,
				},
				result = "auto",
				time = 65,
			}
		},
		Heavy = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_sheet_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"WindowFrontLeft"},
			disableOpenWindowFromSeat = "SeatFrontLeft",
			removeIfBroken = true,
			install = {
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
				time = 65,
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
					MetalWelding = 4,
				},
				result = "auto",
				time = 65,
			}
		}
	}

	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}

	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"

	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindshield"] = {
		Light = {
			icon = "media/ui/tuning2/protection_window_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		}
	}

	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["StepVan"].parts["ATA2Bullbar"] = {
		Default = {
			icon = "media/ui/tuning2/van_bullbar_1.png",
			name = "IGUI_ATA2_Bullbar",
			category = "Bullbars",
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
				time = 40, 
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
				time = 20,
			}
		}
	}

	NewCarTuningTable["StepVan"].parts["ATA2ProtectionDoorsRear"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			category = "Protection",
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
				time = 55, 
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
				time = 32,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			category = "Protection",
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
				time = 55, 
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
				time = 33,
			}
		}
	}

	NewCarTuningTable["StepVan"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["StepVan"].parts["ATA2ProtectionDoorsRear"])
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor"}
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["StepVan"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor"}
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["StepVan"].parts["ATA2ProtectionDoorFrontLeft"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["StepVan"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["StepVan"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["StepVan"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
	NewCarTuningTable["StepVan"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

	NewCarTuningTable["StepVan"].parts["ATA2InteractiveTrunkRoofRack"] = {
		Default = {
			icon = "media/ui/tuning2/roof_rack_2.png",
			category = "Trunks",
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
			containerCapacity = 100,
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
				time = 60, 
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["StepVan"].parts["ATA2ProtectionWheels"] = {
		ATAProtection = {
			removeIfBroken = true,
			icon = "media/ui/tuning2/wheel_chain.png",
			category = "Protection", 
			protectionModel = true, 
			protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
			install = { 
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
				time = 65, 
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

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

		-- Chevalier_Rhino_TowTruck - 2 door pickup towtruck without rack, no bullbar
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindowFrontLeft"] = {
			Light = {
				shader = "vehiclewheel",
				icon = "media/ui/tuning2/protection_window_side.png",
				--secondModel = "StaticPart",
				category = "Protection",
				protection = {"WindowFrontLeft"},
				removeIfBroken = true,
				install = {
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
					time = 65,
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
						MetalWelding = 2,
					},
					result = "auto",
					time = 65,
				}
			},
			Heavy = {
				shader = "vehiclewheel",
				icon = "media/ui/tuning2/protection_window_sheet_side.png",
				--secondModel = "StaticPart",
				category = "Protection",
				protection = {"WindowFrontLeft"},
				disableOpenWindowFromSeat = "SeatFrontLeft",
				removeIfBroken = true,
				install = {
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
					time = 65,
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
						MetalWelding = 4,
					},
					result = "auto",
					time = 65,
				}
			}
		}

		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindowFrontLeft"])
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}

		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"

		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindshield"] = {
			Light = {
				icon = "media/ui/tuning2/protection_window_windshield.png",
				category = "Protection",
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
					time = 65,
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
					time = 65,
				}
			},
			Heavy = {
				icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
				category = "Protection",
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
					time = 65,
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
					time = 65,
				}
			}
		}

		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindshield"])
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionTrunk"] = {
			Light = {
				icon = "media/ui/tuning2/bus_protection_window_side.png",
				category = "Protection",
				protection = {"TruckBedOpen", "GasTank"},
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
					requireInstalled = {"TruckBedOpen"},
					time = 55, 
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
					time = 32,
				}
			},
			Heavy = {
				icon = "media/ui/tuning2/van_hood_protection.png",
				category = "Protection",
				protection = {"TruckBedOpen", "GasTank"},
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
					requireInstalled = {"TruckBedOpen"},
					time = 55, 
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
					time = 33,
				}
			}
		}

		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionTrunk"])
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionHood"].Light.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionHood"].Heavy.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionDoorFrontLeft"] = {
			Light = {
				icon = "media/ui/tuning2/bus_protection_window_side.png",
				--secondModel = "StaticPart",
				category = "Protection",
				protection = {"DoorFrontLeft"},
				install = {
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
					time = 60,
				},
				uninstall = {
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
					time = 40,
				}
			},
			Heavy = {
				icon = "media/ui/tuning2/van_hood_protection.png",
				--secondModel = "StaticPart",
				category = "Protection",
				protection = {"DoorFrontLeft"},
				install = {
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
					time = 60,
				},
				uninstall = {
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
					time = 40,
				}
			}
		}

		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionDoorFrontLeft"])
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

		NewCarTuningTable["Chevalier_Rhino_TowTruck"].parts["ATA2ProtectionWheels"] = {
			ATAProtection = {
				removeIfBroken = true,
				icon = "media/ui/tuning2/wheel_chain.png",
				category = "Protection", 
				protectionModel = true, 
				protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
				install = { 
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
					time = 65, 
				},
				uninstall = {
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
					time = 40,
				}
			}
		}

	end

	if getActivatedMods():contains("ETKI") then

	-- RallyETK
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontLeft"] = {
		Light = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_side.png",
			--secondModel = "StaticPart",
			category = "Protection",
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
				time = 65,
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
					MetalWelding = 2,
				},
				result = "auto",
				time = 65,
			}
		},
		Heavy = {
			shader = "vehiclewheel",
			icon = "media/ui/tuning2/protection_window_sheet_side.png",
			--secondModel = "StaticPart",
			category = "Protection",
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
				time = 65,
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
					MetalWelding = 4,
				},
				result = "auto",
				time = 65,
			}
		}
	}

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontRight"].Light.install.area = "TireFrontRight"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontRight"].Light.uninstall.area = "TireFrontRight"

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearLeft"].Light.protection = {"WindowRearLeft"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearLeft"].Light.install.requireInstalled = {"WindowRearLeft"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearLeft"].Light.install.area = "TireRearLeft"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearLeft"].Light.uninstall.area = "TireRearLeft"

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontLeft"])
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearRight"].Light.protection = {"WindowRearRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearRight"].Light.install.requireInstalled = {"WindowRearRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearRight"].Light.install.area = "TireRearRight"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearRight"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.area = "TireFrontRight"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontRight"].Heavy.uninstall.area = "TireFrontRight"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearLeft"].Heavy.protection = {"WindowRearLeft"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.requireInstalled = {"WindowRearLeft"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.area = "TireRearLeft"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearLeft"].Heavy.uninstall.area = "TireRearLeft"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearLeft"].Heavy.disableOpenWindowFromSeat = "SeatRearLeft"

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearRight"].Heavy.protection = {"WindowRearRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.requireInstalled = {"WindowRearRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearRight"].Heavy.uninstall.area = "TireRearRight"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindowRearRight"].Heavy.disableOpenWindowFromSeat = "SeatRearRight"

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindshield"] = {
		Light = {
			icon = "media/ui/tuning2/protection_window_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
			category = "Protection",
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
				time = 65,
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
				time = 65,
			}
		}
	}

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindshield"])
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["RallyETK"].parts["ATA2Bullbar"] = {
		Default = {
			icon = "media/ui/tuning2/van_bullbar_1.png",
			name = "IGUI_ATA2_Bullbar",
			category = "Bullbars",
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
				time = 40, 
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
				time = 20,
			}
		}
	}

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionTrunk"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			category = "Protection",
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
				time = 55, 
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
				time = 32,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			category = "Protection",
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
				time = 55, 
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
				time = 33,
			}
		}
	}

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["RallyETK"].parts["ATA2ProtectionTrunk"])
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionHood"].Light.protection = {"EngineDoor"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionHood"].Heavy.protection = {"EngineDoor"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorFrontLeft"] = {
		Light = {
			icon = "media/ui/tuning2/bus_protection_window_side.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
				area = "DoorFrontLeft",
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		},
		Heavy = {
			icon = "media/ui/tuning2/van_hood_protection.png",
			secondModel = "StaticPart",
			category = "Protection",
			protection = {"DoorFrontLeft"},
			install = {
				area = "DoorFrontLeft",
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
				time = 60,
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorFrontRight"].Light.install.area = "DoorFrontRight"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorFrontRight"].Light.uninstall.area = "DoorFrontRight"

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearLeft"].Light.protection = {"DoorRearLeft"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearLeft"].Light.install.requireInstalled = {"DoorRearLeft"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearLeft"].Light.install.area = "TireRearLeft"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearLeft"].Light.uninstall.area = "TireRearLeft"

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorFrontLeft"])
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearRight"].Light.protection = {"DoorRearRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearRight"].Light.install.requireInstalled = {"DoorRearRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearRight"].Light.install.area = "TireRearRight"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearRight"].Light.uninstall.area = "TireRearRight"

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.area = "DoorFrontRight"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorFrontRight"].Heavy.uninstall.area = "DoorFrontRight"

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearLeft"].Heavy.protection = {"DoorRearLeft"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearLeft"].Heavy.install.requireInstalled = {"DoorRearLeft"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearLeft"].Heavy.install.area = "TireRearLeft"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearLeft"].Heavy.uninstall.area = "TireRearLeft"

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearRight"].Heavy.protection = {"DoorRearRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearRight"].Heavy.install.requireInstalled = {"DoorRearRight"}
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearRight"].Heavy.install.area = "TireRearRight"
	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionDoorRearRight"].Heavy.uninstall.area = "TireRearRight"

	NewCarTuningTable["RallyETK"].parts["ATA2InteractiveTrunkRoofRack"] = {
		Default = {
			icon = "media/ui/tuning2/roof_rack_2.png",
			category = "Trunks",
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
				time = 60, 
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
				time = 40,
			}
		}
	}

	NewCarTuningTable["RallyETK"].parts["ATA2ProtectionWheels"] = {
		ATAProtection = {
			removeIfBroken = true,
			icon = "media/ui/tuning2/wheel_chain.png",
			category = "Protection", 
			protectionModel = true, 
			protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
			install = { 
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
				time = 65, 
			},
			uninstall = {
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
				time = 40,
			}
		}
	}

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
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowFrontLeft"] = {
			Light = {
				shader = "vehiclewheel",
				icon = "media/ui/tuning2/protection_window_side.png",
				--secondModel = "StaticPart",
				category = "Protection",
				protection = {"WindowFrontLeft"},
				removeIfBroken = true,
				install = {
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
					time = 65,
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
						MetalWelding = 2,
					},
					result = "auto",
					time = 65,
				}
			},
			Heavy = {
				shader = "vehiclewheel",
				icon = "media/ui/tuning2/protection_window_sheet_side.png",
				--secondModel = "StaticPart",
				category = "Protection",
				protection = {"WindowFrontLeft"},
				disableOpenWindowFromSeat = "SeatFrontLeft",
				removeIfBroken = true,
				install = {
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
					time = 65,
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
						MetalWelding = 4,
					},
					result = "auto",
					time = 65,
				}
			}
		}

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowRearLeft"].Light.protection = {"WindowRearLeft"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowRearLeft"].Light.install.requireInstalled = {"WindowRearLeft"}

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowRearRight"].Light.protection = {"WindowRearRight"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowRearRight"].Light.install.requireInstalled = {"WindowRearRight"}

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowRearLeft"].Heavy.protection = {"WindowRearLeft"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.requireInstalled = {"WindowRearLeft"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowRearLeft"].Heavy.disableOpenWindowFromSeat = "SeatRearLeft"

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowRearRight"].Heavy.protection = {"WindowRearRight"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.requireInstalled = {"WindowRearRight"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindowRearRight"].Heavy.disableOpenWindowFromSeat = "SeatRearRight"

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindshield"] = {
			Light = {
				icon = "media/ui/tuning2/protection_window_windshield.png",
				category = "Protection",
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
					time = 65,
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
					time = 65,
				}
			},
			Heavy = {
				icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
				category = "Protection",
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
					time = 65,
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
					time = 65,
				}
			}
		}

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindshield"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionTrunk"] = {
			Light = {
				icon = "media/ui/tuning2/bus_protection_window_side.png",
				category = "Protection",
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
					time = 55, 
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
					time = 32,
				}
			},
			Heavy = {
				icon = "media/ui/tuning2/van_hood_protection.png",
				category = "Protection",
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
					time = 55, 
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
					time = 33,
				}
			}
		}

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionTrunk"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionHood"].Light.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionHood"].Heavy.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorFrontLeft"] = {
			Light = {
				icon = "media/ui/tuning2/bus_protection_window_side.png",
				secondModel = "StaticPart",
				category = "Protection",
				protection = {"DoorFrontLeft"},
				install = {
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
					time = 60,
				},
				uninstall = {
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
					time = 40,
				}
			},
			Heavy = {
				icon = "media/ui/tuning2/van_hood_protection.png",
				secondModel = "StaticPart",
				category = "Protection",
				protection = {"DoorFrontLeft"},
				install = {
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
					time = 60,
				},
				uninstall = {
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
					time = 40,
				}
			}
		}

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorRearLeft"].Light.protection = {"DoorRearLeft"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorRearLeft"].Light.install.requireInstalled = {"DoorRearLeft"}

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorRearRight"].Light.protection = {"DoorRearRight"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorRearRight"].Light.install.requireInstalled = {"DoorRearRight"}

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorRearLeft"].Heavy.protection = {"DoorRearLeft"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorRearLeft"].Heavy.install.requireInstalled = {"DoorRearLeft"}

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorRearRight"].Heavy.protection = {"DoorRearRight"}
		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionDoorRearRight"].Heavy.install.requireInstalled = {"DoorRearRight"}

		NewCarTuningTable["GavrilGrandMarshalInterceptor"].parts["ATA2ProtectionWheels"] = {
			ATAProtection = {
				removeIfBroken = true,
				icon = "media/ui/tuning2/wheel_chain.png",
				category = "Protection", 
				protectionModel = true, 
				protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
				install = { 
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
					time = 65, 
				},
				uninstall = {
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
					time = 40,
				}
			}
		}

		-- GavrilGrandMarshalUndercover
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowFrontLeft"] = {
			Light = {
				shader = "vehiclewheel",
				icon = "media/ui/tuning2/protection_window_side.png",
				--secondModel = "StaticPart",
				category = "Protection",
				protection = {"WindowFrontLeft"},
				removeIfBroken = true,
				install = {
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
					time = 65,
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
						MetalWelding = 2,
					},
					result = "auto",
					time = 65,
				}
			},
			Heavy = {
				shader = "vehiclewheel",
				icon = "media/ui/tuning2/protection_window_sheet_side.png",
				--secondModel = "StaticPart",
				category = "Protection",
				protection = {"WindowFrontLeft"},
				disableOpenWindowFromSeat = "SeatFrontLeft",
				removeIfBroken = true,
				install = {
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
					time = 65,
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
						MetalWelding = 4,
					},
					result = "auto",
					time = 65,
				}
			}
		}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowRearLeft"].Light.protection = {"WindowRearLeft"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowRearLeft"].Light.install.requireInstalled = {"WindowRearLeft"}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowRearRight"].Light.protection = {"WindowRearRight"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowRearRight"].Light.install.requireInstalled = {"WindowRearRight"}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowFrontRight"].Heavy.disableOpenWindowFromSeat = "SeatFrontRight"

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowRearLeft"].Heavy.protection = {"WindowRearLeft"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.requireInstalled = {"WindowRearLeft"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowRearLeft"].Heavy.disableOpenWindowFromSeat = "SeatRearLeft"

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowRearRight"].Heavy.protection = {"WindowRearRight"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.requireInstalled = {"WindowRearRight"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindowRearRight"].Heavy.disableOpenWindowFromSeat = "SeatRearRight"

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindshield"] = {
			Light = {
				icon = "media/ui/tuning2/protection_window_windshield.png",
				category = "Protection",
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
					time = 65,
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
					time = 65,
				}
			},
			Heavy = {
				icon = "media/ui/tuning2/protection_window_sheet_windshield.png",
				category = "Protection",
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
					time = 65,
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
					time = 65,
				}
			}
		}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindshieldRear"] = copy(NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindshield"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindshieldRear"].Light.protection = {"WindshieldRear"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindshieldRear"].Light.install.requireInstalled = {"WindshieldRear"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindshieldRear"].Light.install.area = "TireRearRight"
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindshieldRear"].Light.uninstall.area = "TireRearRight"

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindshieldRear"].Heavy.protection = {"WindshieldRear"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindshieldRear"].Heavy.install.area = "TireRearRight"
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWindshieldRear"].Heavy.uninstall.area = "TireRearRight"

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionTrunk"] = {
			Light = {
				icon = "media/ui/tuning2/bus_protection_window_side.png",
				category = "Protection",
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
					time = 55, 
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
					time = 32,
				}
			},
			Heavy = {
				icon = "media/ui/tuning2/van_hood_protection.png",
				category = "Protection",
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
					time = 55, 
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
					time = 33,
				}
			}
		}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionHood"] = copy(NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionTrunk"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionHood"].Light.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionHood"].Light.install.requireInstalled = {"EngineDoor"}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionHood"].Heavy.protection = {"HeadlightLeft", "HeadlightRight", "EngineDoor"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionHood"].Heavy.install.requireInstalled = {"EngineDoor"}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorFrontLeft"] = {
			Light = {
				icon = "media/ui/tuning2/bus_protection_window_side.png",
				secondModel = "StaticPart",
				category = "Protection",
				protection = {"DoorFrontLeft"},
				install = {
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
					time = 60,
				},
				uninstall = {
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
					time = 40,
				}
			},
			Heavy = {
				icon = "media/ui/tuning2/van_hood_protection.png",
				secondModel = "StaticPart",
				category = "Protection",
				protection = {"DoorFrontLeft"},
				install = {
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
					time = 60,
				},
				uninstall = {
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
					time = 40,
				}
			}
		}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorRearLeft"] = copy(NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorRearLeft"].Light.protection = {"DoorRearLeft"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorRearLeft"].Light.install.requireInstalled = {"DoorRearLeft"}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorRearRight"] = copy(NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorFrontLeft"])
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorRearRight"].Light.protection = {"DoorRearRight"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorRearRight"].Light.install.requireInstalled = {"DoorRearRight"}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorRearLeft"].Heavy.protection = {"DoorRearLeft"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorRearLeft"].Heavy.install.requireInstalled = {"DoorRearLeft"}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorRearRight"].Heavy.protection = {"DoorRearRight"}
		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionDoorRearRight"].Heavy.install.requireInstalled = {"DoorRearRight"}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2InteractiveTrunkRoofRack"] = {
			Default = {
				icon = "media/ui/tuning2/roof_rack_2.png",
				category = "Trunks",
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
					time = 60, 
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
					time = 40,
				}
			}
		}

		NewCarTuningTable["GavrilGrandMarshalUndercover"].parts["ATA2ProtectionWheels"] = {
			ATAProtection = {
				removeIfBroken = true,
				icon = "media/ui/tuning2/wheel_chain.png",
				category = "Protection", 
				protectionModel = true, 
				protection = {"TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight"}, 
				install = { 
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
					time = 65, 
				},
				uninstall = {
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
					time = 40,
				}
			}
		}

		NewCarTuningTable["GavrilGrandMarshal"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["GavrilGrandMarshalLuxe"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["GavrilGrandMarshalSport"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["GavrilGrandMarshalPolice"] = NewCarTuningTable["GavrilGrandMarshalInterceptor"]
		NewCarTuningTable["GavrilGrandMarshal"] = NewCarTuningTable["CarNormal"]
		NewCarTuningTable["GavrilGrandMarshalTaxi"] = NewCarTuningTable["CarLights"]

	end

	ATA2Tuning_AddNewCars(NewCarTuningTable)
end