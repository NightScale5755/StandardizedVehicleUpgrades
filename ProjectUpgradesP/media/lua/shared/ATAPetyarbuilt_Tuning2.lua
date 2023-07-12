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
local NewCarTuningTable = {}
-- Entries
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

-- ATAPetyarbuilt
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowFrontLeft"] = {
    Light = {
        shader = "vehiclewheel",
        icon = "media/ui/tuning2/protection_window_side.png",
        secondModel = "StaticPart",
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
            time = 65,
        }
    },
    Heavy = {
        shader = "vehiclewheel",
        icon = "media/ui/tuning2/protection_window_sheet_side.png",
        secondModel = "StaticPart",
        category = "Protection",
        protection = {"WindowFrontLeft"},
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
            time = 65,
        }
    }
}

NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowFrontRight"].Light.install.area = "TireFrontRight"
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowFrontRight"].Light.uninstall.area = "TireFrontRight"

NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.area = "TireFrontRight"
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowFrontRight"].Heavy.uninstall.area = "TireFrontRight"

NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindshield"] = {
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

NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowRear"] = copy(NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindshield"])
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowRear"].Light.protection = {"WindshieldRear"}
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowRear"].Light.install.requireInstalled = {"WindshieldRear"}
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowRear"].Light.install.area = "TireRearRight"
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowRear"].Light.uninstall.area = "TireRearRight"

NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowRear"].Heavy.protection = {"WindshieldRear"}
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowRear"].Heavy.install.requireInstalled = {"WindshieldRear"}
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowRear"].Heavy.install.area = "TireRearRight"
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWindowRear"].Heavy.uninstall.area = "TireRearRight"

NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2Bullbar"] = {
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

NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionDoorFrontLeft"] = {
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

NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

NewCarTuningTable["ATAPetyarbuilt"].parts["ATA2ProtectionWheels"] = {
    ATAProtection = {
        removeIfBroken = true,
        icon = "media/ui/tuning2/wheel_chain.png",
        category = "Protection", 
        protectionModel = true, 
        protection = {"TireFrontLeft", "TireFrontRight", "TireMiddleLeft", "TireMiddleRight", "TireRearLeft", "TireRearRight"}, 
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
            recipes = {"Basic Tuning"},
            requireInstalled = {"TireFrontLeft", "TireFrontRight", "TireMiddleLeft", "TireMiddleRight", "TireRearLeft", "TireRearRight"},
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

-- ATAPetyarbuiltSleeper
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowFrontLeft"] = {
    Light = {
        shader = "vehiclewheel",
        icon = "media/ui/tuning2/protection_window_side.png",
        secondModel = "StaticPart",
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
            time = 65,
        }
    },
    Heavy = {
        shader = "vehiclewheel",
        icon = "media/ui/tuning2/protection_window_sheet_side.png",
        secondModel = "StaticPart",
        category = "Protection",
        protection = {"WindowFrontLeft"},
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
            time = 65,
        }
    }
}

NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowFrontRight"] = copy(NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowFrontRight"].Light.protection = {"WindowFrontRight"}
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowFrontRight"].Light.install.requireInstalled = {"WindowFrontRight"}
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowFrontRight"].Light.install.area = "TireFrontRight"
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowFrontRight"].Light.uninstall.area = "TireFrontRight"

NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearLeft"] = copy(NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearLeft"].Light.protection = {"WindowRearLeft"}
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearLeft"].Light.install.requireInstalled = {"WindowRearLeft"}
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearLeft"].Light.install.area = "TireMiddleLeft"
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearLeft"].Light.uninstall.area = "TireMiddleLeft"

NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearRight"] = copy(NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowFrontLeft"])
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearRight"].Light.protection = {"WindowRearRight"}
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearRight"].Light.install.requireInstalled = {"WindowRearRight"}
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearRight"].Light.install.area = "TireMiddleRight"
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearRight"].Light.uninstall.area = "TireMiddleRight"

NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowFrontRight"].Heavy.protection = {"WindowFrontRight"}
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.requireInstalled = {"WindowFrontRight"}
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowFrontRight"].Heavy.install.area = "TireFrontRight"
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowFrontRight"].Heavy.uninstall.area = "TireFrontRight"

NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearLeft"].Heavy.protection = {"WindowRearLeft"}
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.requireInstalled = {"WindowRearLeft"}
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearLeft"].Heavy.install.area = "TireMiddleLeft"
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearLeft"].Heavy.uninstall.area = "TireMiddleLeft"

NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearRight"].Heavy.protection = {"WindowRearRight"}
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.requireInstalled = {"WindowRearRight"}
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearRight"].Heavy.install.area = "TireMiddleRight"
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindowRearRight"].Heavy.uninstall.area = "TireMiddleRight"

NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWindshield"] = {
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

NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2Bullbar"] = {
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

NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionDoorFrontLeft"] = {
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

NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionDoorFrontRight"] = copy(NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionDoorFrontLeft"])
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionDoorFrontRight"].Light.protection = {"DoorFrontRight"}
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionDoorFrontRight"].Light.install.requireInstalled = {"DoorFrontRight"}

NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionDoorFrontRight"].Heavy.protection = {"DoorFrontRight"}
NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionDoorFrontRight"].Heavy.install.requireInstalled = {"DoorFrontRight"}

NewCarTuningTable["ATAPetyarbuiltSleeper"].parts["ATA2ProtectionWheels"] = {
    ATAProtection = {
        removeIfBroken = true,
        icon = "media/ui/tuning2/wheel_chain.png",
        category = "Protection", 
        protectionModel = true, 
        protection = {"TireFrontLeft", "TireFrontRight", "TireMiddleLeft", "TireMiddleRight", "TireRearLeft", "TireRearRight"}, 
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
            recipes = {"Basic Tuning"},
            requireInstalled = {"TireFrontLeft", "TireFrontRight", "TireMiddleLeft", "TireMiddleRight", "TireRearLeft", "TireRearRight"},
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

NewCarTuningTable["ATAPetyarbuiltSleeperLong"] = NewCarTuningTable["ATAPetyarbuiltSleeper"]

ATA2Tuning_AddNewCars(NewCarTuningTable)