___Globals = {
    --SpawnPart = PopConstructions.SpawnPart,
    SpawnConstruction = PopConstructions.SpawnConstruction,
    DestroyPart = PopConstructions.DestroyPart,
    DestroyConstruction = PopConstructions.DestroyConstruction,
    DestroyConstructions = PopConstructions.DestroyConstructions,
    DuplicatePart  = PopConstructions.DuplicatePart ,
    DuplicateConstruction  = PopConstructions.DuplicateConstruction ,

}
Heap={
    Traffic_Cone_4x6 = {
        AssetName = "Traffic Cone 4x6",
        DisplayName = "Traffic Cone",
        Category = "Props",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 19.3882732391357,
        Mass = 2,
        Strength = 0,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 0
        },
        Behaviors = {        }
    },
    Traffic_Barrier_Concrete_10x30 = {
        AssetName = "Traffic Barrier Concrete 10x30",
        DisplayName = "Concrete Traffic Barrier",
        Category = "Props",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 911.999938964844,
        Mass = 2000,
        Strength = 0,
        Properties = {
            Material = "",
            Density = 2000,
            Mass = 2000,
            Strength = 0
        },
        Behaviors = {        }
    },
    Football = {
        AssetName = "Football",
        DisplayName = "Football",
        Category = "Props",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 11.4940404891968,
        Mass = 0.400000005960464,
        Strength = 0,
        Properties = {
            Material = "",
            Density = 0.400000005960464,
            Mass = 0.400000005960464,
            Strength = 0
        },
        Behaviors = {        }
    },
    Solar_Panel_25x15 = {
        AssetName = "Solar Panel 25x15",
        DisplayName = "Solar Panel 25x15",
        Category = "Power",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 187.499984741211,
        Mass = 56.2999992370605,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 56.2999992370605,
            Mass = 56.2999992370605,
            Strength = 500
        },
        Behaviors = {
            Solar_Panel = {
                IsTweakable = false,
                Channels = {
                    "Power",
                },
            },
        }
    },
    Solar_Panel_15x9 = {
        AssetName = "Solar Panel 15x9",
        DisplayName = "Solar Panel 15x9",
        Category = "Power",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 67.5,
        Mass = 20.2999992370605,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 20.2999992370605,
            Mass = 20.2999992370605,
            Strength = 500
        },
        Behaviors = {
            Solar_Panel = {
                IsTweakable = false,
                Channels = {
                    "Power",
                },
            },
        }
    },
    Solar_Panel_9x5 = {
        AssetName = "Solar Panel 9x5",
        DisplayName = "Solar Panel 9x5",
        Category = "Power",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 22.4999980926514,
        Mass = 6.80000019073486,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 6.80000019073486,
            Mass = 6.80000019073486,
            Strength = 500
        },
        Behaviors = {
            Solar_Panel = {
                IsTweakable = false,
                Channels = {
                    "Power",
                },
            },
        }
    },
    Generator_Alternator_Medium = {
        AssetName = "Generator Alternator Medium",
        DisplayName = "Alternator Medium",
        Category = "Power",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 7.28318548202515,
        Mass = 2.40000009536743,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.40000009536743,
            Mass = 2.40000009536743,
            Strength = 1000
        },
        Behaviors = {
            Generator = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                    "Torque (Nm)",
                    "Power",
                },
            },
        }
    },
    Battery_15x9 = {
        AssetName = "Battery 15x9",
        DisplayName = "Battery 200 kWh",
        Category = "Power",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 135,
        Mass = 108,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 108,
            Mass = 108,
            Strength = 1000
        },
        Behaviors = {
            Battery = {
                IsTweakable = true,
                Channels = {
                    "Energy",
                    "Power",
                },
            },
        }
    },
    Battery_9x5 = {
        AssetName = "Battery 9x5",
        DisplayName = "Battery 50 kWh",
        Category = "Power",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 44.9999961853027,
        Mass = 36,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 36,
            Mass = 36,
            Strength = 1000
        },
        Behaviors = {
            Battery = {
                IsTweakable = true,
                Channels = {
                    "Energy",
                    "Power",
                },
            },
        }
    },
    Battery_4x3 = {
        AssetName = "Battery 4x3",
        DisplayName = "Battery 2 kWh",
        Category = "Power",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 24,
        Mass = 19,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 19,
            Mass = 19,
            Strength = 1000
        },
        Behaviors = {
            Battery = {
                IsTweakable = true,
                Channels = {
                    "Energy",
                    "Power",
                },
            },
        }
    },
    Battery_3x2_5 = {
        AssetName = "Battery 3x2.5",
        DisplayName = "Battery 1.25 kWh",
        Category = "Power",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 15,
        Mass = 11,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 11,
            Mass = 11,
            Strength = 1000
        },
        Behaviors = {
            Battery = {
                IsTweakable = true,
                Channels = {
                    "Energy",
                    "Power",
                },
            },
        }
    },
    Battery_2x1_5 = {
        AssetName = "Battery 2x1.5",
        DisplayName = "Battery 0.5 kWh",
        Category = "Power",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 3,
        Mass = 2.40000009536743,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.40000009536743,
            Mass = 2.40000009536743,
            Strength = 1000
        },
        Behaviors = {
            Battery = {
                IsTweakable = true,
                Channels = {
                    "Energy",
                    "Power",
                },
            },
        }
    },
    Pipe_Tee_Small = {
        AssetName = "Pipe Tee Small",
        DisplayName = "Small Tee Pipe",
        Category = "Pipes",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 0.200000002980232,
        Mass = 0.0240000020712614,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.0240000020712614,
            Strength = 60
        },
        Behaviors = {
            Pipe = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Pipe_Tee_90_Small = {
        AssetName = "Pipe Tee 90 Small",
        DisplayName = "Small Tee 90 Pipe",
        Category = "Pipes",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 0.200000002980232,
        Mass = 0.0240000020712614,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.0240000020712614,
            Strength = 60
        },
        Behaviors = {
            Pipe = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Pipe_Tee_90 = {
        AssetName = "Pipe Tee 90",
        DisplayName = "Tee 90 Pipe",
        Category = "Pipes",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 0.550000011920929,
        Mass = 0.0660000070929527,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.0660000070929527,
            Strength = 60
        },
        Behaviors = {
            Pipe = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Pipe_Tee = {
        AssetName = "Pipe Tee",
        DisplayName = "Tee Pipe",
        Category = "Pipes",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 0.400000005960464,
        Mass = 0.0480000041425228,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.0480000041425228,
            Strength = 60
        },
        Behaviors = {
            Pipe = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Pipe_Straight_Resizable = {
        AssetName = "Pipe Straight Resizable",
        DisplayName = "Straight Pipe",
        Category = "Pipes",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 1.31475639343262,
        Mass = 0.157770767807961,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.157770767807961,
            Strength = 60
        },
        Behaviors = {
            Pipe = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Pipe_Cross_Small = {
        AssetName = "Pipe Cross Small",
        DisplayName = "Small Cross Pipe",
        Category = "Pipes",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 0.200000002980232,
        Mass = 0.0240000020712614,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.0240000020712614,
            Strength = 60
        },
        Behaviors = {
            Pipe = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Pipe_Corner_90_Small = {
        AssetName = "Pipe Corner 90 Small",
        DisplayName = "Small Corner 90 Pipe",
        Category = "Pipes",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 0.200000002980232,
        Mass = 0.0240000020712614,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.0240000020712614,
            Strength = 60
        },
        Behaviors = {
            Pipe = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Pipe_Cross = {
        AssetName = "Pipe Cross",
        DisplayName = "Cross Pipe",
        Category = "Pipes",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 0.550000011920929,
        Mass = 0.0660000070929527,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.0660000070929527,
            Strength = 60
        },
        Behaviors = {
            Pipe = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Pipe_Corner_Small = {
        AssetName = "Pipe Corner Small",
        DisplayName = "Small Corner Pipe",
        Category = "Pipes",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 0.200000002980232,
        Mass = 0.0240000020712614,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.0240000020712614,
            Strength = 60
        },
        Behaviors = {
            Pipe = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Pipe_Corner_90 = {
        AssetName = "Pipe Corner 90",
        DisplayName = "Corner 90 Pipe",
        Category = "Pipes",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 0.400000005960464,
        Mass = 0.0480000041425228,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.0480000041425228,
            Strength = 60
        },
        Behaviors = {
            Pipe = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Pipe_Corner = {
        AssetName = "Pipe Corner",
        DisplayName = "Corner Pipe",
        Category = "Pipes",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 0.349999994039536,
        Mass = 0.0419999994337559,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.0419999994337559,
            Strength = 60
        },
        Behaviors = {
            Pipe = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Pipe_Clamped = {
        AssetName = "Pipe Clamped",
        DisplayName = "Clamped Pipe",
        Category = "Pipes",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 0.200000002980232,
        Mass = 0.0240000020712614,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.0240000020712614,
            Strength = 60
        },
        Behaviors = {
            Pipe = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Motor_Stepper_Small = {
        AssetName = "Motor Stepper Small",
        DisplayName = "Stepper Motor Small",
        Category = "Motors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2,
        Mass = 0.600000023841858,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.600000023841858,
            Mass = 0.600000023841858,
            Strength = 1000
        },
        Behaviors = {
            Stepper_Motor = {
                IsTweakable = true,
                Channels = {
                    "Angle",
                    "Angular Speed",
                    "Power",
                },
            },
        }
    },
    Motor_Stepper_Medium = {
        AssetName = "Motor Stepper Medium",
        DisplayName = "Stepper Motor Medium",
        Category = "Motors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 16,
        Mass = 4.80000019073486,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.80000019073486,
            Mass = 4.80000019073486,
            Strength = 1000
        },
        Behaviors = {
            Stepper_Motor = {
                IsTweakable = true,
                Channels = {
                    "Angle",
                    "Angular Speed",
                    "Power",
                },
            },
        }
    },
    Motor_Starter_Small = {
        AssetName = "Motor Starter Small",
        DisplayName = "Starter Motor Small",
        Category = "Motors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.93199992179871,
        Mass = 0.600000023841858,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.600000023841858,
            Mass = 0.600000023841858,
            Strength = 1000
        },
        Behaviors = {
            Starter_Motor = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                    "Torque (Nm)",
                    "Power",
                },
            },
        }
    },
    Motor_Servo_Small = {
        AssetName = "Motor Servo Small",
        DisplayName = "Servo Motor Small",
        Category = "Motors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2,
        Mass = 0.600000023841858,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.600000023841858,
            Mass = 0.600000023841858,
            Strength = 1000
        },
        Behaviors = {
            Servo_Motor = {
                IsTweakable = true,
                Channels = {
                    "Angle",
                    "Angular Speed",
                    "Power",
                },
            },
        }
    },
    Motor_Servo_Medium = {
        AssetName = "Motor Servo Medium",
        DisplayName = "Servo Motor Medium",
        Category = "Motors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 16,
        Mass = 4.80000019073486,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.80000019073486,
            Mass = 4.80000019073486,
            Strength = 1000
        },
        Behaviors = {
            Servo_Motor = {
                IsTweakable = true,
                Channels = {
                    "Angle",
                    "Angular Speed",
                    "Power",
                },
            },
        }
    },
    Motor_Servo_Continuous_Small = {
        AssetName = "Motor Servo Continuous Small",
        DisplayName = "Continuous Servo Motor Small",
        Category = "Motors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2,
        Mass = 0.600000023841858,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.600000023841858,
            Mass = 0.600000023841858,
            Strength = 1000
        },
        Behaviors = {
            Continuous_Servo_Motor = {
                IsTweakable = true,
                Channels = {
                    "Angle",
                    "Angular Speed",
                    "Torque (Nm)",
                    "Power",
                },
            },
        }
    },
    Motor_Servo_Continuous_Medium = {
        AssetName = "Motor Servo Continuous Medium",
        DisplayName = "Continuous Servo Motor Medium",
        Category = "Motors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 16,
        Mass = 4.80000019073486,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.80000019073486,
            Mass = 4.80000019073486,
            Strength = 1000
        },
        Behaviors = {
            Continuous_Servo_Motor = {
                IsTweakable = true,
                Channels = {
                    "Angle",
                    "Angular Speed",
                    "Torque (Nm)",
                    "Power",
                },
            },
        }
    },
    Motor_Electric_Small = {
        AssetName = "Motor Electric Small",
        DisplayName = "Electric Motor Small",
        Category = "Motors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 16,
        Mass = 4.80000019073486,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.80000019073486,
            Mass = 4.80000019073486,
            Strength = 1000
        },
        Behaviors = {
            Electric_Motor = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                    "Torque (Nm)",
                    "Power",
                },
            },
        }
    },
    Motor_Electric_Medium = {
        AssetName = "Motor Electric Medium",
        DisplayName = "Electric Motor Medium",
        Category = "Motors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 45,
        Mass = 13.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 13.5,
            Mass = 13.5,
            Strength = 1000
        },
        Behaviors = {
            Electric_Motor = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                    "Torque (Nm)",
                    "Power",
                },
            },
        }
    },
    Motor_Electric_Large = {
        AssetName = "Motor Electric Large",
        DisplayName = "Electric Motor Large",
        Category = "Motors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 117.219757080078,
        Mass = 35,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 35,
            Mass = 35,
            Strength = 1000
        },
        Behaviors = {
            Electric_Motor = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                    "Torque (Nm)",
                    "Power",
                },
            },
        }
    },
    LinearActuator_Small_Piston = {
        AssetName = "LinearActuator Small Piston",
        DisplayName = "Linear Actuator (Piston) Small",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.21491289138794,
        Mass = 1,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1,
            Strength = 500
        },
        Behaviors = {        }
    },
    LinearActuator_Small_Barrel = {
        AssetName = "LinearActuator Small Barrel",
        DisplayName = "Linear Actuator (Barrel) Small",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.09439539909363,
        Mass = 2,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 500
        },
        Behaviors = {
            Linear_Actuator = {
                IsTweakable = true,
                Channels = {
                    "Position",
                    "Power",
                },
            },
        }
    },
    LinearActuator_Medium_Piston = {
        AssetName = "LinearActuator Medium Piston",
        DisplayName = "Linear Actuator (Piston) Medium",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.09848594665527,
        Mass = 2,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 500
        },
        Behaviors = {        }
    },
    LinearActuator_Medium_Barrel = {
        AssetName = "LinearActuator Medium Barrel",
        DisplayName = "Linear Actuator (Barrel) Medium",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 3.66519165039063,
        Mass = 4,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4,
            Mass = 4,
            Strength = 500
        },
        Behaviors = {
            Linear_Actuator = {
                IsTweakable = true,
                Channels = {
                    "Position",
                    "Power",
                },
            },
        }
    },
    LinearActuator_LargeLong_Piston = {
        AssetName = "LinearActuator LargeLong Piston",
        DisplayName = "Linear Actuator (Piston) Large Long",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 8.3775806427002,
        Mass = 7,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 7,
            Mass = 7,
            Strength = 500
        },
        Behaviors = {        }
    },
    LinearActuator_LargeLong_Barrel = {
        AssetName = "LinearActuator LargeLong Barrel",
        DisplayName = "Linear Actuator (Barrel) Large Long",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 18.5550327301025,
        Mass = 14,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 14,
            Mass = 14,
            Strength = 500
        },
        Behaviors = {
            Linear_Actuator = {
                IsTweakable = true,
                Channels = {
                    "Position",
                    "Power",
                },
            },
        }
    },
    LinearActuator_Large_Piston = {
        AssetName = "LinearActuator Large Piston",
        DisplayName = "Linear Actuator (Piston) Large",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 5.23598718643188,
        Mass = 5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 5,
            Mass = 5,
            Strength = 500
        },
        Behaviors = {        }
    },
    LinearActuator_Large_Barrel = {
        AssetName = "LinearActuator Large Barrel",
        DisplayName = "Linear Actuator (Barrel) Large",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 11.4864473342896,
        Mass = 10,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 10,
            Mass = 10,
            Strength = 500
        },
        Behaviors = {
            Linear_Actuator = {
                IsTweakable = true,
                Channels = {
                    "Position",
                    "Power",
                },
            },
        }
    },
    LinearActuator_Ball_Small_Piston = {
        AssetName = "LinearActuator Ball Small Piston",
        DisplayName = "Linear Actuator (Piston) Small",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.21491289138794,
        Mass = 1,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1,
            Strength = 500
        },
        Behaviors = {        }
    },
    LinearActuator_Ball_Small_Barrel = {
        AssetName = "LinearActuator Ball Small Barrel",
        DisplayName = "Linear Actuator (Barrel) Small",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.09439539909363,
        Mass = 2,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 500
        },
        Behaviors = {
            Linear_Actuator = {
                IsTweakable = true,
                Channels = {
                    "Position",
                    "Power",
                },
            },
        }
    },
    LinearActuator_Ball_Medium_Piston = {
        AssetName = "LinearActuator Ball Medium Piston",
        DisplayName = "Linear Actuator (Piston) Medium",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.09848594665527,
        Mass = 2,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 500
        },
        Behaviors = {        }
    },
    LinearActuator_Ball_Medium_Barrel = {
        AssetName = "LinearActuator Ball Medium Barrel",
        DisplayName = "Linear Actuator (Barrel) Medium",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 3.66519165039063,
        Mass = 4,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4,
            Mass = 4,
            Strength = 500
        },
        Behaviors = {
            Linear_Actuator = {
                IsTweakable = true,
                Channels = {
                    "Position",
                    "Power",
                },
            },
        }
    },
    LinearActuator_Ball_LargeLong_Piston = {
        AssetName = "LinearActuator Ball LargeLong Piston",
        DisplayName = "Linear Actuator (Piston) Large Long",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 8.3775806427002,
        Mass = 7,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 7,
            Mass = 7,
            Strength = 500
        },
        Behaviors = {        }
    },
    LinearActuator_Ball_LargeLong_Barrel = {
        AssetName = "LinearActuator Ball LargeLong Barrel",
        DisplayName = "Linear Actuator (Barrel) Large Long",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 18.5550327301025,
        Mass = 14,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 14,
            Mass = 14,
            Strength = 500
        },
        Behaviors = {
            Linear_Actuator = {
                IsTweakable = true,
                Channels = {
                    "Position",
                    "Power",
                },
            },
        }
    },
    LinearActuator_Ball_Large_Piston = {
        AssetName = "LinearActuator Ball Large Piston",
        DisplayName = "Linear Actuator (Piston) Large",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 5.23598718643188,
        Mass = 5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 5,
            Mass = 5,
            Strength = 500
        },
        Behaviors = {        }
    },
    LinearActuator_Ball_Large_Barrel = {
        AssetName = "LinearActuator Ball Large Barrel",
        DisplayName = "Linear Actuator (Barrel) Large",
        Category = "Linear Actuators",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 11.4864473342896,
        Mass = 10,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 10,
            Mass = 10,
            Strength = 500
        },
        Behaviors = {
            Linear_Actuator = {
                IsTweakable = true,
                Channels = {
                    "Position",
                    "Power",
                },
            },
        }
    },
    Light_UprightRound_x2 = {
        AssetName = "Light UprightRound x2",
        DisplayName = "Upright Round Light x2",
        Category = "Lights",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 6.5,
        Mass = 0.699999988079071,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.699999988079071,
            Mass = 0.699999988079071,
            Strength = 500
        },
        Behaviors = {
            Light = {
                IsTweakable = true,
                Channels = {
                    "Power",
                },
            },
        }
    },
    Light_UprightRound_x1_5 = {
        AssetName = "Light UprightRound x1.5",
        DisplayName = "Upright Round Light x1.5",
        Category = "Lights",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.87500023841858,
        Mass = 0.300000011920929,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.300000011920929,
            Mass = 0.300000011920929,
            Strength = 500
        },
        Behaviors = {
            Light = {
                IsTweakable = true,
                Channels = {
                    "Power",
                },
            },
        }
    },
    Light_UprightRect_x2 = {
        AssetName = "Light UprightRect x2",
        DisplayName = "Upright Rectangular Light x2",
        Category = "Lights",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 4.39999961853027,
        Mass = 0.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 500
        },
        Behaviors = {
            Light = {
                IsTweakable = true,
                Channels = {
                    "Power",
                },
            },
        }
    },
    Light_UprightRect_x1_5 = {
        AssetName = "Light UprightRect x1.5",
        DisplayName = "Upright Rectangular Light x1.5",
        Category = "Lights",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.42499995231628,
        Mass = 0.300000011920929,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.300000011920929,
            Mass = 0.300000011920929,
            Strength = 500
        },
        Behaviors = {
            Light = {
                IsTweakable = true,
                Channels = {
                    "Power",
                },
            },
        }
    },
    Light_Rect_2x2 = {
        AssetName = "Light Rect 2x2",
        DisplayName = "Rectangular Light 2x2",
        Category = "Lights",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 4,
        Mass = 0.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 500
        },
        Behaviors = {
            Light = {
                IsTweakable = true,
                Channels = {
                    "Power",
                },
            },
        }
    },
    Light_Rect_1x2 = {
        AssetName = "Light Rect 1x2",
        DisplayName = "Rectangular Light 1x2",
        Category = "Lights",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2,
        Mass = 0.300000011920929,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.300000011920929,
            Mass = 0.300000011920929,
            Strength = 500
        },
        Behaviors = {
            Light = {
                IsTweakable = true,
                Channels = {
                    "Power",
                },
            },
        }
    },
    Light_Rect_1x1 = {
        AssetName = "Light Rect 1x1",
        DisplayName = "Rectangular Light 1x1",
        Category = "Lights",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 1,
        Mass = 0.200000002980232,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.200000002980232,
            Mass = 0.200000002980232,
            Strength = 500
        },
        Behaviors = {
            Light = {
                IsTweakable = true,
                Channels = {
                    "Power",
                },
            },
        }
    },
    Light_Cone_x1 = {
        AssetName = "Light Cone x1",
        DisplayName = "Cone Light x1",
        Category = "Lights",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 1,
        Mass = 0.200000002980232,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.200000002980232,
            Mass = 0.200000002980232,
            Strength = 500
        },
        Behaviors = {
            Light = {
                IsTweakable = true,
                Channels = {
                    "Power",
                },
            },
        }
    },
    Gear_Worm_1T_CW_7x1 = {
        AssetName = "Gear Worm 1T CW 7x1",
        DisplayName = "Worm Gear CW x7",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 11.7267789840698,
        Mass = 5.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 5.5,
            Mass = 5.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Worm_1T_CW_3x1 = {
        AssetName = "Gear Worm 1T CW 3x1",
        DisplayName = "Worm Gear CW x3",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 4.65819644927979,
        Mass = 2.40000009536743,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.40000009536743,
            Mass = 2.40000009536743,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Worm_1T_CW_1x1 = {
        AssetName = "Gear Worm 1T CW 1x1",
        DisplayName = "Worm Gear CW x1",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 0.523598790168762,
        Mass = 1.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Worm_1T_CCW_7x1 = {
        AssetName = "Gear Worm 1T CCW 7x1",
        DisplayName = "Worm Gear CCW x7",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 11.7267789840698,
        Mass = 5.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 5.5,
            Mass = 5.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Worm_1T_CCW_3x1 = {
        AssetName = "Gear Worm 1T CCW 3x1",
        DisplayName = "Worm Gear CCW x3",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 4.65819644927979,
        Mass = 2.40000009536743,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.40000009536743,
            Mass = 2.40000009536743,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Worm_1T_CCW_1x1 = {
        AssetName = "Gear Worm 1T CCW 1x1",
        DisplayName = "Worm Gear CCW x1",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 0.523598790168762,
        Mass = 1.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_Ratchet_24T_1x3 = {
        AssetName = "Gear Spur Ratchet 24T 1x3",
        DisplayName = "Ratchet Gear x3 (24T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 13.1829071044922,
        Mass = 4.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },

            Ratchet = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Gear_Spur_Ratchet_20T_1x2_5 = {
        AssetName = "Gear Spur Ratchet 20T 1x2.5",
        DisplayName = "Ratchet Gear x2.5 (20T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 9.22450160980225,
        Mass = 3.79999995231628,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3.79999995231628,
            Mass = 3.79999995231628,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },

            Ratchet = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Gear_Spur_Ratchet_16T_1x2 = {
        AssetName = "Gear Spur Ratchet 16T 1x2",
        DisplayName = "Ratchet Gear x2 (16T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 5.97295331954956,
        Mass = 3,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },

            Ratchet = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Gear_Spur_Ratchet_12T_1x1_5 = {
        AssetName = "Gear Spur Ratchet 12T 1x1.5",
        DisplayName = "Ratchet Gear x1.5 (12T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.42826318740845,
        Mass = 2.29999995231628,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.29999995231628,
            Mass = 2.29999995231628,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },

            Ratchet = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Gear_Spur_Ratchet_8T_1x1 = {
        AssetName = "Gear Spur Ratchet 8T 1x1",
        DisplayName = "Ratchet Gear x1 (8T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 1.59043121337891,
        Mass = 1.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },

            Ratchet = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Gear_Spur_Clutch_24T_1x3 = {
        AssetName = "Gear Spur Clutch 24T 1x3",
        DisplayName = "Clutch Gear x3 (24T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 13.1829071044922,
        Mass = 4.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },

            Clutch = {
                IsTweakable = true,
                Channels = {
                    "Torque (Nm)",
                },
            },
        }
    },
    Gear_Spur_Clutch_20T_1x2_5 = {
        AssetName = "Gear Spur Clutch 20T 1x2.5",
        DisplayName = "Clutch Gear x2.5 (20T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 9.22450160980225,
        Mass = 3.79999995231628,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3.79999995231628,
            Mass = 3.79999995231628,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },

            Clutch = {
                IsTweakable = true,
                Channels = {
                    "Torque (Nm)",
                },
            },
        }
    },
    Gear_Spur_Clutch_16T_1x2 = {
        AssetName = "Gear Spur Clutch 16T 1x2",
        DisplayName = "Clutch Gear x2 (16T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 5.97295331954956,
        Mass = 3,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },

            Clutch = {
                IsTweakable = true,
                Channels = {
                    "Torque (Nm)",
                },
            },
        }
    },
    Gear_Spur_Clutch_12T_1x1_5 = {
        AssetName = "Gear Spur Clutch 12T 1x1.5",
        DisplayName = "Clutch Gear x1.5 (12T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.42826318740845,
        Mass = 2.29999995231628,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.29999995231628,
            Mass = 2.29999995231628,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },

            Clutch = {
                IsTweakable = true,
                Channels = {
                    "Torque (Nm)",
                },
            },
        }
    },
    Gear_Spur_Clutch_8T_1x1 = {
        AssetName = "Gear Spur Clutch 8T 1x1",
        DisplayName = "Clutch Gear x1 (8T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 1.59043121337891,
        Mass = 1.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },

            Clutch = {
                IsTweakable = true,
                Channels = {
                    "Torque (Nm)",
                },
            },
        }
    },
    Gear_Spur_72T_1x9 = {
        AssetName = "Gear Spur 72T 1x9",
        DisplayName = "Spur Gear x9 (72T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 64.8673400878906,
        Mass = 13.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 13.5,
            Mass = 13.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_64T_1x8 = {
        AssetName = "Gear Spur 64T 1x8",
        DisplayName = "Spur Gear x8 (64T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 51.4370307922363,
        Mass = 12,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 12,
            Mass = 12,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_56T_1x7 = {
        AssetName = "Gear Spur 56T 1x7",
        DisplayName = "Spur Gear x7 (56T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 39.5775260925293,
        Mass = 10.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 10.5,
            Mass = 10.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_48T_1x6 = {
        AssetName = "Gear Spur 48T 1x6",
        DisplayName = "Spur Gear x6 (48T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 29.2888088226318,
        Mass = 9,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 9,
            Mass = 9,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_40T_1x5 = {
        AssetName = "Gear Spur 40T 1x5",
        DisplayName = "Spur Gear x5 (40T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 20.5708847045898,
        Mass = 7.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 7.5,
            Mass = 7.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_36T_1x4_5 = {
        AssetName = "Gear Spur 36T 1x4.5",
        DisplayName = "Spur Gear x4.5 (36T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 16.8009757995605,
        Mass = 6.80000019073486,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 6.80000019073486,
            Mass = 6.80000019073486,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_32T_1x4 = {
        AssetName = "Gear Spur 32T 1x4",
        DisplayName = "Spur Gear x4 (32T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 13.4237623214722,
        Mass = 6,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_28T_1x3_5 = {
        AssetName = "Gear Spur 28T 1x3.5",
        DisplayName = "Spur Gear x3.5 (28T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 10.4392509460449,
        Mass = 5.30000019073486,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 5.30000019073486,
            Mass = 5.30000019073486,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_24T_1x3 = {
        AssetName = "Gear Spur 24T 1x3",
        DisplayName = "Spur Gear x3 (24T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 7.84743642807007,
        Mass = 4.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_22T_1x2_75 = {
        AssetName = "Gear Spur 22T 1x2.75",
        DisplayName = "Spur Gear x2.75 (22T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 6.69879102706909,
        Mass = 4.19999980926514,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.19999980926514,
            Mass = 4.19999980926514,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_20T_1x2_5 = {
        AssetName = "Gear Spur 20T 1x2.5",
        DisplayName = "Spur Gear x2.5 (20T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 5.64832210540771,
        Mass = 3.79999995231628,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3.79999995231628,
            Mass = 3.79999995231628,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_18T_1x2_25 = {
        AssetName = "Gear Spur 18T 1x2.25",
        DisplayName = "Spur Gear x2.25 (18T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 4.69602680206299,
        Mass = 3.40000009536743,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3.40000009536743,
            Mass = 3.40000009536743,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_16T_1x2 = {
        AssetName = "Gear Spur 16T 1x2",
        DisplayName = "Spur Gear x2 (16T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.5782413482666,
        Mass = 3,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_14T_1x1_75 = {
        AssetName = "Gear Spur 14T 1x1.75",
        DisplayName = "Spur Gear x1.75 (14T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2.82229542732239,
        Mass = 2.70000004768372,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.70000004768372,
            Mass = 2.70000004768372,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_12T_1x1_5 = {
        AssetName = "Gear Spur 12T 1x1.5",
        DisplayName = "Spur Gear x1.5 (12T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2.1645245552063,
        Mass = 2.40000009536743,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.40000009536743,
            Mass = 2.40000009536743,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_10T_1x1_25 = {
        AssetName = "Gear Spur 10T 1x1.25",
        DisplayName = "Spur Gear x1.25 (10T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 1.60492825508118,
        Mass = 2.09999990463257,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.09999990463257,
            Mass = 2.09999990463257,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Spur_8T_1x1 = {
        AssetName = "Gear Spur 8T 1x1",
        DisplayName = "Spur Gear x1 (8T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 1.14350688457489,
        Mass = 1.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Rack_x7 = {
        AssetName = "Gear Rack x7",
        DisplayName = "Rack Gear x7",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.5,
        Mass = 3.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3.5,
            Mass = 3.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Gear_Rack_x3 = {
        AssetName = "Gear Rack x3",
        DisplayName = "Rack Gear x3",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 1.5,
        Mass = 2,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Gear_Rack_2_Hole_SliderRail_x13 = {
        AssetName = "Gear Rack 2-Hole SliderRail x13",
        DisplayName = "Rack Gear 2-Hole & Slider x13",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 7.54719734191895,
        Mass = 7.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 7.5,
            Mass = 7.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                },
            },

            Slider_Rail = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Gear_Rack_2_Hole_SliderRail_x7 = {
        AssetName = "Gear Rack 2-Hole SliderRail x7",
        DisplayName = "Rack Gear 2-Hole & Slider x7",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 4.54719734191895,
        Mass = 4.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                },
            },

            Slider_Rail = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Gear_Rack_2_Hole_SliderRail_x5 = {
        AssetName = "Gear Rack 2-Hole SliderRail x5",
        DisplayName = "Rack Gear 2-Hole & Slider x5",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.54719758033752,
        Mass = 3.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3.5,
            Mass = 3.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                },
            },

            Slider_Rail = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Gear_Rack_2_Hole_SliderRail_x3 = {
        AssetName = "Gear Rack 2-Hole SliderRail x3",
        DisplayName = "Rack Gear 2-Hole & Slider x3",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2.54719758033752,
        Mass = 2.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.5,
            Mass = 2.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                },
            },

            Slider_Rail = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Gear_Rack_2_Ball_SliderRail_x7 = {
        AssetName = "Gear Rack 2-Ball SliderRail x7",
        DisplayName = "Rack Gear 2-Ball & Slider x7",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.94178628921509,
        Mass = 4.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                },
            },

            Slider_Rail = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Gear_Rack_2_Ball_SliderRail_x5 = {
        AssetName = "Gear Rack 2-Ball SliderRail x5",
        DisplayName = "Rack Gear 2-Ball & Slider x5",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2.94178628921509,
        Mass = 3.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3.5,
            Mass = 3.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                },
            },

            Slider_Rail = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Gear_Rack_2_Ball_SliderRail_x3 = {
        AssetName = "Gear Rack 2-Ball SliderRail x3",
        DisplayName = "Rack Gear 2-Ball & Slider x3",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 1.94178664684296,
        Mass = 2.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.5,
            Mass = 2.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                },
            },

            Slider_Rail = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Gear_Differential_Spur_48T = {
        AssetName = "Gear Differential Spur 48T",
        DisplayName = "Differential Spur Gear (48T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 32.661449432373,
        Mass = 10,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 10,
            Mass = 10,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },

            Differential_Gear = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Gear_Differential_Spur_32T = {
        AssetName = "Gear Differential Spur 32T",
        DisplayName = "Differential Spur Gear (32T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 16.7964096069336,
        Mass = 7,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 7,
            Mass = 7,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },

            Differential_Gear = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Gear_Differential_Crown_48T = {
        AssetName = "Gear Differential Crown 48T",
        DisplayName = "Differential Crown Gear (48T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 17.7020721435547,
        Mass = 10,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 10,
            Mass = 10,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },

            Differential_Gear = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Gear_Differential_Crown_32T = {
        AssetName = "Gear Differential Crown 32T",
        DisplayName = "Differential Crown Gear (32T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 10.2800598144531,
        Mass = 7,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 7,
            Mass = 7,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },

            Differential_Gear = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Gear_Crown_Lo_48T_1x6 = {
        AssetName = "Gear Crown Lo 48T 1x6",
        DisplayName = "Crown Gear Lo x6 (48T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 14.3294258117676,
        Mass = 9,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 9,
            Mass = 9,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Crown_Lo_40T_1x5 = {
        AssetName = "Gear Crown Lo 40T 1x5",
        DisplayName = "Crown Gear Lo x5 (40T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 10.264988899231,
        Mass = 7.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 7.5,
            Mass = 7.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Crown_Lo_32T_1x4 = {
        AssetName = "Gear Crown Lo 32T 1x4",
        DisplayName = "Crown Gear Lo x4 (32T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 6.90741395950317,
        Mass = 6,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Crown_Lo_24T_1x3 = {
        AssetName = "Gear Crown Lo 24T 1x3",
        DisplayName = "Crown Gear Lo x3 (24T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 4.25669384002686,
        Mass = 4.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Crown_Lo_16T_1x2 = {
        AssetName = "Gear Crown Lo 16T 1x2",
        DisplayName = "Crown Gear Lo x2 (16T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2.04916906356812,
        Mass = 3,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Crown_Hi_48T_1x6 = {
        AssetName = "Gear Crown Hi 48T 1x6",
        DisplayName = "Crown Gear Hi x6 (48T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 14.3294258117676,
        Mass = 9,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 9,
            Mass = 9,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Crown_Hi_40T_1x5 = {
        AssetName = "Gear Crown Hi 40T 1x5",
        DisplayName = "Crown Gear Hi x5 (40T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 10.264988899231,
        Mass = 7.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 7.5,
            Mass = 7.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Crown_Hi_32T_1x4 = {
        AssetName = "Gear Crown Hi 32T 1x4",
        DisplayName = "Crown Gear Hi x4 (32T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 6.90741395950317,
        Mass = 6,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Crown_Hi_24T_1x3 = {
        AssetName = "Gear Crown Hi 24T 1x3",
        DisplayName = "Crown Gear Hi x3 (24T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 4.25669384002686,
        Mass = 4.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Crown_Hi_16T_1x2 = {
        AssetName = "Gear Crown Hi 16T 1x2",
        DisplayName = "Crown Gear Hi x2 (16T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2.04916906356812,
        Mass = 3,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Bevel_Lo_48T_1x6 = {
        AssetName = "Gear Bevel Lo 48T 1x6",
        DisplayName = "Bevel Gear Lo x6 (48T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 22.7817840576172,
        Mass = 9,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 9,
            Mass = 9,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Bevel_Lo_40T_1x5 = {
        AssetName = "Gear Bevel Lo 40T 1x5",
        DisplayName = "Bevel Gear Lo x5 (40T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 15.9331083297729,
        Mass = 7.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 7.5,
            Mass = 7.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Bevel_Lo_32T_1x4 = {
        AssetName = "Gear Bevel Lo 32T 1x4",
        DisplayName = "Bevel Gear Lo x4 (32T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 10.3410758972168,
        Mass = 6,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Bevel_Lo_24T_1x3 = {
        AssetName = "Gear Bevel Lo 24T 1x3",
        DisplayName = "Bevel Gear Lo x3 (24T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 5.74201250076294,
        Mass = 4.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Bevel_Lo_16T_1x2 = {
        AssetName = "Gear Bevel Lo 16T 1x2",
        DisplayName = "Bevel Gear Lo x2 (16T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2.66325235366821,
        Mass = 3,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Bevel_Hi_48T_1x6 = {
        AssetName = "Gear Bevel Hi 48T 1x6",
        DisplayName = "Bevel Gear Hi x6 (48T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 26.4122886657715,
        Mass = 9,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 9,
            Mass = 9,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Bevel_Hi_40T_1x5 = {
        AssetName = "Gear Bevel Hi 40T 1x5",
        DisplayName = "Bevel Gear Hi x5 (40T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 18.5661563873291,
        Mass = 7.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 7.5,
            Mass = 7.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Bevel_Hi_32T_1x4 = {
        AssetName = "Gear Bevel Hi 32T 1x4",
        DisplayName = "Bevel Gear Hi x4 (32T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 12.1337461471558,
        Mass = 6,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Bevel_Hi_24T_1x3 = {
        AssetName = "Gear Bevel Hi 24T 1x3",
        DisplayName = "Bevel Gear Hi x3 (24T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 6.85138750076294,
        Mass = 4.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Gear_Bevel_Hi_16T_1x2 = {
        AssetName = "Gear Bevel Hi 16T 1x2",
        DisplayName = "Bevel Gear Hi x2 (16T)",
        Category = "Gears",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.24641060829163,
        Mass = 3,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 1000
        },
        Behaviors = {
            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    FuelTank_15x5 = {
        AssetName = "FuelTank 15x5",
        DisplayName = "Fuel Tank 375 Litre",
        Category = "Fuel",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 374.999969482422,
        Mass = 280,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 280,
            Mass = 280,
            Strength = 1000
        },
        Behaviors = {
            Fuel_Tank = {
                IsTweakable = true,
                Channels = {
                    "Fuel",
                    "Fuel Flow Rate (g/s)",
                },
            },
        }
    },
    FuelTank_7x5 = {
        AssetName = "FuelTank 7x5",
        DisplayName = "Fuel Tank 70 Litre",
        Category = "Fuel",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 69.9999923706055,
        Mass = 50,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 50,
            Mass = 50,
            Strength = 1000
        },
        Behaviors = {
            Fuel_Tank = {
                IsTweakable = true,
                Channels = {
                    "Fuel",
                    "Fuel Flow Rate (g/s)",
                },
            },
        }
    },
    FuelTank_3x2 = {
        AssetName = "FuelTank 3x2",
        DisplayName = "Fuel Tank 9 Litre",
        Category = "Fuel",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 9,
        Mass = 6.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 6.5,
            Mass = 6.5,
            Strength = 1000
        },
        Behaviors = {
            Fuel_Tank = {
                IsTweakable = true,
                Channels = {
                    "Fuel",
                    "Fuel Flow Rate (g/s)",
                },
            },
        }
    },
    Sensor_SpeedAltitude = {
        AssetName = "Sensor SpeedAltitude",
        DisplayName = "Speed & Altitude Sensor",
        Category = "Electronics",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2,
        Mass = 0.600000023841858,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.600000023841858,
            Mass = 0.600000023841858,
            Strength = 500
        },
        Behaviors = {
            Speed_and_Altitude_Sensor = {
                IsTweakable = true,
                Channels = {
                    "Speed (km/h or mph)",
                    "Speed (m/s or ft/s)",
                    "Altitude (m or ft)",
                    "Rate-of-Climb (m/s or ft/s)",
                },
            },
        }
    },
    Sensor_Attitude = {
        AssetName = "Sensor Attitude",
        DisplayName = "Attitude Sensor",
        Category = "Electronics",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2,
        Mass = 0.600000023841858,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.600000023841858,
            Mass = 0.600000023841858,
            Strength = 500
        },
        Behaviors = {
            Attitude_Sensor = {
                IsTweakable = false,
                Channels = {
                    "Heading",
                    "Pitch",
                    "Roll",
                },
            },
        }
    },
    Sensor_Angle = {
        AssetName = "Sensor Angle",
        DisplayName = "Angle Sensor",
        Category = "Electronics",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2,
        Mass = 0.600000023841858,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.600000023841858,
            Mass = 0.600000023841858,
            Strength = 500
        },
        Behaviors = {
            Angle_Sensor = {
                IsTweakable = false,
                Channels = {
                    "Angle",
                    "Angular Speed",
                    "RPM",
                },
            },
        }
    },
    Sensor_Accelerometer = {
        AssetName = "Sensor Accelerometer",
        DisplayName = "Accelerometer Sensor",
        Category = "Electronics",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2,
        Mass = 0.600000023841858,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.600000023841858,
            Mass = 0.600000023841858,
            Strength = 500
        },
        Behaviors = {
            Accelerometer_Sensor = {
                IsTweakable = false,
                Channels = {
                    "Acceleration",
                    "Longitudinal Accel",
                    "Lateral Accel",
                    "Vertical Accel",
                },
            },
        }
    },
    Display_16x4Char_9x4 = {
        AssetName = "Display 16x4Char 9x4",
        DisplayName = "4 Line Display 9x4",
        Category = "Electronics",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 17.9999980926514,
        Mass = 5.40000009536743,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 5.40000009536743,
            Mass = 5.40000009536743,
            Strength = 500
        },
        Behaviors = {
            Text_Display = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Display_16x4Char_5x2 = {
        AssetName = "Display 16x4Char 5x2",
        DisplayName = "4 Line Display 5x2",
        Category = "Electronics",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 5,
        Mass = 1.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 500
        },
        Behaviors = {
            Text_Display = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Display_16x2Char_9x2 = {
        AssetName = "Display 16x2Char 9x2",
        DisplayName = "2 Line Display 9x2",
        Category = "Electronics",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 8.99999904632568,
        Mass = 2.70000004768372,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 2.70000004768372,
            Mass = 2.70000004768372,
            Strength = 500
        },
        Behaviors = {
            Text_Display = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Display_16x2Char_5x1 = {
        AssetName = "Display 16x2Char 5x1",
        DisplayName = "2 Line Display 5x1",
        Category = "Electronics",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.5,
        Mass = 0.800000011920929,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.800000011920929,
            Mass = 0.800000011920929,
            Strength = 500
        },
        Behaviors = {
            Text_Display = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Display_8x2Char_5x2 = {
        AssetName = "Display 8x2Char 5x2",
        DisplayName = "2 Line Display 5x2",
        Category = "Electronics",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 5,
        Mass = 1.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 500
        },
        Behaviors = {
            Text_Display = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Display_8x2Char_3x1 = {
        AssetName = "Display 8x2Char 3x1",
        DisplayName = "2 Line Display 3x1",
        Category = "Electronics",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.5,
        Mass = 0.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 500
        },
        Behaviors = {
            Text_Display = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Display_8x1Char_3x1 = {
        AssetName = "Display 8x1Char 3x1",
        DisplayName = "1 Line Display 3x1",
        Category = "Electronics",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.5,
        Mass = 0.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 500
        },
        Behaviors = {
            Text_Display = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Steering_Wheel_x4 = {
        AssetName = "Steering Wheel x4",
        DisplayName = "Steering Wheel x4",
        Category = "Control Wheels",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 12.5663709640503,
        Mass = 0.300000011920929,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.300000011920929,
            Mass = 0.300000011920929,
            Strength = 500
        },
        Behaviors = {
            Control_Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Sports_Steering_Wheel_x4 = {
        AssetName = "Sports Steering Wheel x4",
        DisplayName = "Sports Steering Wheel x4",
        Category = "Control Wheels",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 15.079644203186,
        Mass = 0.300000011920929,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.300000011920929,
            Mass = 0.300000011920929,
            Strength = 500
        },
        Behaviors = {
            Control_Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Hand_Wheel_x5 = {
        AssetName = "Hand Wheel x5",
        DisplayName = "Hand Wheel x5",
        Category = "Control Wheels",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 19.705638885498,
        Mass = 0.400000005960464,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.400000005960464,
            Mass = 0.400000005960464,
            Strength = 500
        },
        Behaviors = {
            Control_Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Hand_Wheel_x3 = {
        AssetName = "Hand Wheel x3",
        DisplayName = "Hand Wheel x3",
        Category = "Control Wheels",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 7.13926982879639,
        Mass = 0.200000002980232,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.200000002980232,
            Mass = 0.200000002980232,
            Strength = 500
        },
        Behaviors = {
            Control_Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    SliderRail_Resizable = {
        AssetName = "SliderRail Resizable",
        DisplayName = "Slider Rail",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 7,
        Mass = 5.49500036239624,
        Strength = 685,
        Properties = {
            Material = "",
            Density = 0.785000026226044,
            Mass = 5.49500036239624,
            Strength = 685
        },
        Behaviors = {
            Contiguous_Slider_Rail = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Rotor_4 = {
        AssetName = "Rotor 4",
        DisplayName = "Rotor 4",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 3.52359867095947,
        Mass = 2,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Rotor_3 = {
        AssetName = "Rotor 3",
        DisplayName = "Rotor 3",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.77359890937805,
        Mass = 1,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Rotor_2 = {
        AssetName = "Rotor 2",
        DisplayName = "Rotor 2",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.02359867095947,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_UJYoke_Axle_Resizable = {
        AssetName = "Connector UJYoke Axle Resizable",
        DisplayName = "U-Joint Yoke & Axle",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 3.7453076839447,
        Mass = 3.7453076839447,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 3.7453076839447,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Plate_Axle_Resizable = {
        AssetName = "Connector Plate Axle Resizable",
        DisplayName = "Plate & Axle",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.39080929756165,
        Mass = 1.39080929756165,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1.39080929756165,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Plate2_Axle_Resizable = {
        AssetName = "Connector Plate2 Axle Resizable",
        DisplayName = "2-Plate & Axle",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.83259570598602,
        Mass = 1.83259570598602,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1.83259570598602,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Pin = {
        AssetName = "Connector Pin",
        DisplayName = "Pin",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.30899691581726,
        Mass = 0,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0,
            Mass = 0,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_PerpSocket_Axle_Resizable = {
        AssetName = "Connector PerpSocket Axle Resizable",
        DisplayName = "Socket & Axle (V)",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.14537227153778,
        Mass = 1.14537227153778,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1.14537227153778,
            Strength = 1000
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Connector_PerpSocket = {
        AssetName = "Connector PerpSocket",
        DisplayName = "Socket (V)",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 0.728947639465332,
        Mass = 0.400000005960464,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.400000005960464,
            Mass = 0.400000005960464,
            Strength = 1000
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Connector_ParaSocket_Axle_Resizable = {
        AssetName = "Connector ParaSocket Axle Resizable",
        DisplayName = "Socket & Axle (H)",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.09628486633301,
        Mass = 1.09628486633301,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1.09628486633301,
            Strength = 1000
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Connector_ParaSocket = {
        AssetName = "Connector ParaSocket",
        DisplayName = "Socket (H)",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 0.64059042930603,
        Mass = 0.400000005960464,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.400000005960464,
            Mass = 0.400000005960464,
            Strength = 1000
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Connector_Offset_3_Hole_x5 = {
        AssetName = "Connector Offset 3-Hole x5",
        DisplayName = "Offset 3-Hole x5",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.84511053562164,
        Mass = 3,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Offset_3_Hole_x3 = {
        AssetName = "Connector Offset 3-Hole x3",
        DisplayName = "Offset 3-Hole x3",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.76340699195862,
        Mass = 2.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.5,
            Mass = 2.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_KnuckleJointOuter180_Axle_Resizable = {
        AssetName = "Connector KnuckleJointOuter180 Axle Resizable",
        DisplayName = "Knuckle Joint (Outer 180) & Axle",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.09628486633301,
        Mass = 1.09628486633301,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1.09628486633301,
            Strength = 1000
        },
        Behaviors = {
            Knuckle_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Connector_KnuckleJointOuter180 = {
        AssetName = "Connector KnuckleJointOuter180",
        DisplayName = "Knuckle Joint (Outer 180)",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 0.64059042930603,
        Mass = 0.400000005960464,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.400000005960464,
            Mass = 0.400000005960464,
            Strength = 1000
        },
        Behaviors = {
            Knuckle_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Connector_KnuckleJointOuter90_Axle_Resizable = {
        AssetName = "Connector KnuckleJointOuter90 Axle Resizable",
        DisplayName = "Knuckle Joint (Outer 90) & Axle",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.09628486633301,
        Mass = 1.09628486633301,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1.09628486633301,
            Strength = 1000
        },
        Behaviors = {
            Knuckle_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Connector_KnuckleJointOuter90 = {
        AssetName = "Connector KnuckleJointOuter90",
        DisplayName = "Knuckle Joint (Outer 90)",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 0.64059042930603,
        Mass = 0.400000005960464,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.400000005960464,
            Mass = 0.400000005960464,
            Strength = 1000
        },
        Behaviors = {
            Knuckle_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Connector_KnuckleJointInner_Axle_Resizable = {
        AssetName = "Connector KnuckleJointInner Axle Resizable",
        DisplayName = "Knuckle Joint (Inner) & Axle",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.09628486633301,
        Mass = 1.09628486633301,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1.09628486633301,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_KnuckleJointInner = {
        AssetName = "Connector KnuckleJointInner",
        DisplayName = "Knuckle Joint (Inner)",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 0.64059042930603,
        Mass = 0.400000005960464,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.400000005960464,
            Mass = 0.400000005960464,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_CVJointOuter_Axle_Resizable = {
        AssetName = "Connector CVJointOuter Axle Resizable",
        DisplayName = "CV Joint (Outer) & Axle",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.09628486633301,
        Mass = 1.09628486633301,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1.09628486633301,
            Strength = 1000
        },
        Behaviors = {
            CV_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Connector_CVJointOuter = {
        AssetName = "Connector CVJointOuter",
        DisplayName = "CV Joint (Outer)",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 0.64059042930603,
        Mass = 0.400000005960464,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.400000005960464,
            Mass = 0.400000005960464,
            Strength = 1000
        },
        Behaviors = {
            CV_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Connector_CVJointInner_Axle_Resizable = {
        AssetName = "Connector CVJointInner Axle Resizable",
        DisplayName = "CV Joint (Inner) & Axle",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.09628486633301,
        Mass = 1.09628486633301,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1.09628486633301,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_CVJointInner = {
        AssetName = "Connector CVJointInner",
        DisplayName = "CV Joint (Inner)",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 0.64059042930603,
        Mass = 0.400000005960464,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.400000005960464,
            Mass = 0.400000005960464,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Ball_Axle_Resizable = {
        AssetName = "Connector Ball Axle Resizable",
        DisplayName = "Ball & Axle",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.14537227153778,
        Mass = 1.14537227153778,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1.14537227153778,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Ball = {
        AssetName = "Connector Ball",
        DisplayName = "Ball",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 0.728947639465332,
        Mass = 0.400000005960464,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.400000005960464,
            Mass = 0.400000005960464,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_AngleLimiter_Block = {
        AssetName = "Connector AngleLimiter Block",
        DisplayName = "Angle Limiter (Block to Axle)",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {
            Angle_Limiter = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Connector_AngleLimiter_Axle = {
        AssetName = "Connector AngleLimiter Axle",
        DisplayName = "Angle Limiter (Axle to Axle)",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.30899691581726,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {
            Angle_Limiter = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Connector_AngleAxle180 = {
        AssetName = "Connector AngleAxle180",
        DisplayName = "Angle Axle 180",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.07992243766785,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_AngleAxle157_5 = {
        AssetName = "Connector AngleAxle157_5",
        DisplayName = "Angle Axle 157.5",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.24354708194733,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_AngleAxle150 = {
        AssetName = "Connector AngleAxle150",
        DisplayName = "Angle Axle 150",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.24354708194733,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_AngleAxle135 = {
        AssetName = "Connector AngleAxle135",
        DisplayName = "Angle Axle 135",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.24354708194733,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_AngleAxle120 = {
        AssetName = "Connector AngleAxle120",
        DisplayName = "Angle Axle 120",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.24354708194733,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_AngleAxle90 = {
        AssetName = "Connector AngleAxle90",
        DisplayName = "Angle Axle 90",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.24354708194733,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_AngleAxle4x90 = {
        AssetName = "Connector AngleAxle4x90",
        DisplayName = "Angle Axle 4 x 90",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.63624608516693,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_AngleAxle3x120 = {
        AssetName = "Connector AngleAxle3x120",
        DisplayName = "Angle Axle 3 x 120",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.6035213470459,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_AngleAxle3x90 = {
        AssetName = "Connector AngleAxle3x90",
        DisplayName = "Angle Axle 3 x 90",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.43989658355713,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Angle180 = {
        AssetName = "Connector Angle180",
        DisplayName = "Angle 180",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.09439539909363,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Angle157_5 = {
        AssetName = "Connector Angle157_5",
        DisplayName = "Angle 157.5",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.61799383163452,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Angle150 = {
        AssetName = "Connector Angle150",
        DisplayName = "Angle 150",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.61799383163452,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Angle135 = {
        AssetName = "Connector Angle135",
        DisplayName = "Angle 135",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.61799383163452,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Angle120 = {
        AssetName = "Connector Angle120",
        DisplayName = "Angle 120",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.61799383163452,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Angle90 = {
        AssetName = "Connector Angle90",
        DisplayName = "Angle 90",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.61799383163452,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Angle4x90 = {
        AssetName = "Connector Angle4x90",
        DisplayName = "Angle 4 x 90",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 4.18879079818726,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Angle3x120 = {
        AssetName = "Connector Angle3x120",
        DisplayName = "Angle 3 x 120",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 3.92699074745178,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Angle3x90 = {
        AssetName = "Connector Angle3x90",
        DisplayName = "Angle 3 x 90",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 3.40339231491089,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_Angle0 = {
        AssetName = "Connector Angle0",
        DisplayName = "Angle 0",
        Category = "Connectors",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.30899691581726,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_2_Hole_SliderRail_Resizable = {
        AssetName = "Connector 2-Hole SliderRail Resizable",
        DisplayName = "2-Hole & Slider (V)",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 5.5471978187561,
        Mass = 4.3545503616333,
        Strength = 685,
        Properties = {
            Material = "",
            Density = 0.785000026226044,
            Mass = 4.3545503616333,
            Strength = 685
        },
        Behaviors = {
            Slider_Rail = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Connector_2_Hole_Plate_Resizable = {
        AssetName = "Connector 2-Hole Plate Resizable",
        DisplayName = "2-Hole & Plate (V)",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 5.5471978187561,
        Mass = 5.5471978187561,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 5.5471978187561,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_2_Hole_Para_SliderRail_Resizable = {
        AssetName = "Connector 2-Hole Para SliderRail Resizable",
        DisplayName = "2-Hole & Slider (H)",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 5.5471978187561,
        Mass = 4.3545503616333,
        Strength = 685,
        Properties = {
            Material = "",
            Density = 0.785000026226044,
            Mass = 4.3545503616333,
            Strength = 685
        },
        Behaviors = {
            Slider_Rail = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Connector_2_Hole_Para_Plate_Resizable = {
        AssetName = "Connector 2-Hole Para Plate Resizable",
        DisplayName = "2-Hole & Plate (H)",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 5.5471978187561,
        Mass = 5.5471978187561,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 5.5471978187561,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_2_Hole_Axle_Resizable = {
        AssetName = "Connector 2-Hole Axle Resizable",
        DisplayName = "2-Hole & Axle",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.78161859512329,
        Mass = 2.78161859512329,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 2.78161859512329,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_2_Hole_Axle_Perp_Resizable = {
        AssetName = "Connector 2-Hole Axle Perp Resizable",
        DisplayName = "2-Hole & Axle (Perp)",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.78161859512329,
        Mass = 2.78161859512329,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 2.78161859512329,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_1_Hole_SliderRail_Resizable = {
        AssetName = "Connector 1-Hole SliderRail Resizable",
        DisplayName = "1-Hole & Slider (V)",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 4.77359867095947,
        Mass = 3.74727511405945,
        Strength = 685,
        Properties = {
            Material = "",
            Density = 0.785000026226044,
            Mass = 3.74727511405945,
            Strength = 685
        },
        Behaviors = {
            Slider_Rail = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Connector_1_Hole_Plate_Resizable = {
        AssetName = "Connector 1-Hole Plate Resizable",
        DisplayName = "1-Hole & Plate (V)",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 4.77359867095947,
        Mass = 4.77359867095947,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 4.77359867095947,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_1_Hole_Para_SliderRail_Resizable = {
        AssetName = "Connector 1-Hole Para SliderRail Resizable",
        DisplayName = "1-Hole & Slider (H)",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 4.77359867095947,
        Mass = 3.74727511405945,
        Strength = 685,
        Properties = {
            Material = "",
            Density = 0.785000026226044,
            Mass = 3.74727511405945,
            Strength = 685
        },
        Behaviors = {
            Slider_Rail = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Connector_1_Hole_Para_Plate_Resizable = {
        AssetName = "Connector 1-Hole Para Plate Resizable",
        DisplayName = "1-Hole & Plate (H)",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 4.77359867095947,
        Mass = 4.77359867095947,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 4.77359867095947,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Connector_1_Hole_Axle_Resizable = {
        AssetName = "Connector 1-Hole Axle Resizable",
        DisplayName = "1-Hole & Axle",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.570796251297,
        Mass = 1.570796251297,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1.570796251297,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Axle_Scaffold_Resizable = {
        AssetName = "Axle Scaffold Resizable",
        DisplayName = "Scaffold Axle",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.71616864204407,
        Mass = 0,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0,
            Mass = 0,
            Strength = 500
        },
        Behaviors = {        }
    },
    Axle_Resizable = {
        AssetName = "Axle Resizable",
        DisplayName = "Axle",
        Category = "Connectors",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.71616864204407,
        Mass = 2.71616864204407,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 2.71616864204407,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Fan_AirCooled_x3 = {
        AssetName = "Fan AirCooled x3",
        DisplayName = "Air-cooled Fan x3",
        Category = "Combustion Engines",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 6.27493762969971,
        Mass = 0.5,
        Strength = 750,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 750
        },
        Behaviors = {        }
    },
    Fan_7Blade_x4 = {
        AssetName = "Fan 7Blade x4",
        DisplayName = "7-Blade Fan x4",
        Category = "Combustion Engines",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 5.9729528427124,
        Mass = 0.25,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.25,
            Mass = 0.25,
            Strength = 500
        },
        Behaviors = {        }
    },
    Fan_4Blade_x3 = {
        AssetName = "Fan 4Blade x3",
        DisplayName = "4-Blade Fan x3",
        Category = "Combustion Engines",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.30259895324707,
        Mass = 0.200000002980232,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.200000002980232,
            Mass = 0.200000002980232,
            Strength = 500
        },
        Behaviors = {        }
    },
    Engine_ThrottleBody_x1 = {
        AssetName = "Engine ThrottleBody x1",
        DisplayName = "Engine Throttle x1",
        Category = "Combustion Engines",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.6875,
        Mass = 0.100000001490116,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.100000001490116,
            Mass = 0.100000001490116,
            Strength = 1000
        },
        Behaviors = {
            Pipe = {
                IsTweakable = false,
                Channels = {
                },
            },

            Engine_Throttle = {
                IsTweakable = true,
                Channels = {
                    "Butterfly Angle",
                    "Throttle Flow Rate (g/s)",
                    "Manifold Flow Rate (g/s)",
                    "Manifold Pressure (bar)",
                },
            },
        }
    },
    Engine_Head_x2 = {
        AssetName = "Engine Head x2",
        DisplayName = "Engine Head x2",
        Category = "Combustion Engines",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 6,
        Mass = 2,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 1000
        },
        Behaviors = {
            Engine_Head = {
                IsTweakable = true,
                Channels = {
                    "Volumetric Efficiency (%)",
                    "Intake Port Flow Rate (g/s)",
                    "Fuel Flow Rate (g/s)",
                    "Thermal Efficiency (%)",
                    "Is Stalled",
                    "Is Ignition Cut",
                },
            },
        }
    },
    Engine_Head_x1 = {
        AssetName = "Engine Head x1",
        DisplayName = "Engine Head x1",
        Category = "Combustion Engines",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 1.5,
        Mass = 1,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1,
            Strength = 1000
        },
        Behaviors = {
            Engine_Head = {
                IsTweakable = true,
                Channels = {
                    "Volumetric Efficiency (%)",
                    "Intake Port Flow Rate (g/s)",
                    "Fuel Flow Rate (g/s)",
                    "Thermal Efficiency (%)",
                    "Is Stalled",
                    "Is Ignition Cut",
                },
            },
        }
    },
    Engine_Cylinder_2x2_Translucent = {
        AssetName = "Engine Cylinder 2x2 Translucent",
        DisplayName = "Engine Cylinder 2x2 2L (Transparent)",
        Category = "Combustion Engines",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 7.84799957275391,
        Mass = 2,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 1000
        },
        Behaviors = {
            Engine_Cylinder = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Engine_Cylinder_2x2 = {
        AssetName = "Engine Cylinder 2x2",
        DisplayName = "Engine Cylinder 2x2 2L",
        Category = "Combustion Engines",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 7.84799957275391,
        Mass = 2,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 1000
        },
        Behaviors = {
            Engine_Cylinder = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Engine_Cylinder_1x1_Translucent = {
        AssetName = "Engine Cylinder 1x1 Translucent",
        DisplayName = "Engine Cylinder 1x1 0.7L (Transparent)",
        Category = "Combustion Engines",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.25,
        Mass = 1,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1,
            Strength = 1000
        },
        Behaviors = {
            Engine_Cylinder = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Engine_Cylinder_1x1 = {
        AssetName = "Engine Cylinder 1x1",
        DisplayName = "Engine Cylinder 1x1 0.7L",
        Category = "Combustion Engines",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.25,
        Mass = 1,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1,
            Strength = 1000
        },
        Behaviors = {
            Engine_Cylinder = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Engine_Crank_x2 = {
        AssetName = "Engine Crank x2",
        DisplayName = "Engine Crank x2",
        Category = "Combustion Engines",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 11.9537601470947,
        Mass = 1.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 1000
        },
        Behaviors = {
            Engine_Crank = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Engine_Crank_x1 = {
        AssetName = "Engine Crank x1",
        DisplayName = "Engine Crank x1",
        Category = "Combustion Engines",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 5.97688007354736,
        Mass = 0.800000011920929,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.800000011920929,
            Mass = 0.800000011920929,
            Strength = 1000
        },
        Behaviors = {
            Engine_Crank = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Engine_Crank_Rear_x2_Axle_Resizable = {
        AssetName = "Engine Crank Rear x2 Axle Resizable",
        DisplayName = "Engine Rear (Driven) Crank x2 & Axle",
        Category = "Combustion Engines",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 12.3094129562378,
        Mass = 3.07735323905945,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.25,
            Mass = 3.07735323905945,
            Strength = 1000
        },
        Behaviors = {
            Engine_Crank = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                    "Torque (Nm)",
                    "Power",
                },
            },
        }
    },
    Engine_Crank_Rear_x1_Axle_Resizable = {
        AssetName = "Engine Crank Rear x1 Axle Resizable",
        DisplayName = "Engine Rear (Driven) Crank x1 & Axle",
        Category = "Combustion Engines",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 6.3325343132019,
        Mass = 1.58313357830048,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.25,
            Mass = 1.58313357830048,
            Strength = 1000
        },
        Behaviors = {
            Engine_Crank = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                    "Torque (Nm)",
                    "Power",
                },
            },
        }
    },
    Engine_Crank_Nose_Axle_Resizable = {
        AssetName = "Engine Crank Nose Axle Resizable",
        DisplayName = "Engine Crank Nose & Axle",
        Category = "Combustion Engines",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 0.556323707103729,
        Mass = 0.139080926775932,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.25,
            Mass = 0.139080926775932,
            Strength = 1000
        },
        Behaviors = {        }
    },
    CheckpointCylinder_Resizable = {
        AssetName = "CheckpointCylinder Resizable",
        DisplayName = "Cylinder Checkpoint",
        Category = "Checkpoints",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 7068.5830078125,
        Mass = 0,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0,
            Mass = 0,
            Strength = 500
        },
        Behaviors = {
            Checkpoint = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    CheckpointBox_Resizable = {
        AssetName = "CheckpointBox Resizable",
        DisplayName = "Box Checkpoint",
        Category = "Checkpoints",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 8999.9990234375,
        Mass = 0,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0,
            Mass = 0,
            Strength = 500
        },
        Behaviors = {
            Checkpoint = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Ratchet_Block = {
        AssetName = "Ratchet Block",
        DisplayName = "Ratchet (Block to Axle)",
        Category = "Brakes & Clutches",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.27234506607056,
        Mass = 1.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 1000
        },
        Behaviors = {
            Ratchet = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Ratchet_Axle = {
        AssetName = "Ratchet Axle",
        DisplayName = "Ratchet (Axle to Axle)",
        Category = "Brakes & Clutches",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 3.85368728637695,
        Mass = 1.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 1000
        },
        Behaviors = {
            Ratchet = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Clutch_x3 = {
        AssetName = "Clutch x3",
        DisplayName = "Clutch x3",
        Category = "Brakes & Clutches",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 7.46651840209961,
        Mass = 3,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 1000
        },
        Behaviors = {
            Clutch = {
                IsTweakable = true,
                Channels = {
                    "Torque (Nm)",
                },
            },
        }
    },
    Clutch_Ring_Gear_x4 = {
        AssetName = "Clutch Ring Gear x4",
        DisplayName = "Clutch & Ring Gear x4 (32T)",
        Category = "Brakes & Clutches",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 27.1093254089355,
        Mass = 6,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 1000
        },
        Behaviors = {
            Clutch = {
                IsTweakable = true,
                Channels = {
                    "Torque (Nm)",
                },
            },

            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Clutch_Ring_Gear_x3 = {
        AssetName = "Clutch Ring Gear x3",
        DisplayName = "Clutch & Ring Gear x3 (24T)",
        Category = "Brakes & Clutches",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 15.9566707611084,
        Mass = 4.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 1000
        },
        Behaviors = {
            Clutch = {
                IsTweakable = true,
                Channels = {
                    "Torque (Nm)",
                },
            },

            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Clutch_Centrifugal_x3 = {
        AssetName = "Clutch Centrifugal x3",
        DisplayName = "Centrifugal Clutch x3",
        Category = "Brakes & Clutches",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 7.46651840209961,
        Mass = 3,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 1000
        },
        Behaviors = {
            Centrifugal_Clutch = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                    "Torque (Nm)",
                },
            },
        }
    },
    Clutch_Centrifugal_x2 = {
        AssetName = "Clutch Centrifugal x2",
        DisplayName = "Centrifugal Clutch x2",
        Category = "Brakes & Clutches",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.9046642780304,
        Mass = 2,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 1000
        },
        Behaviors = {
            Centrifugal_Clutch = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                    "Torque (Nm)",
                },
            },
        }
    },
    Clutch_Centrifugal_Ring_Gear_x3 = {
        AssetName = "Clutch Centrifugal Ring Gear x3",
        DisplayName = "Centrifugal Clutch & Ring Gear x3 (24T)",
        Category = "Brakes & Clutches",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 15.9566707611084,
        Mass = 4.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 1000
        },
        Behaviors = {
            Centrifugal_Clutch = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                    "Torque (Nm)",
                },
            },

            Gear = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Brake_Disk_x4 = {
        AssetName = "Brake Disk x4",
        DisplayName = "Disk Brake x4",
        Category = "Brakes & Clutches",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 12.5663709640503,
        Mass = 1.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 500
        },
        Behaviors = {
            Brake = {
                IsTweakable = true,
                Channels = {
                    "Torque (Nm)",
                },
            },
        }
    },
    Brake_Disk_x3 = {
        AssetName = "Brake Disk x3",
        DisplayName = "Disk Brake x3",
        Category = "Brakes & Clutches",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 7.06858396530151,
        Mass = 1,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1,
            Strength = 500
        },
        Behaviors = {
            Brake = {
                IsTweakable = true,
                Channels = {
                    "Torque (Nm)",
                },
            },
        }
    },
    Racing_Helmet = {
        AssetName = "Racing Helmet",
        DisplayName = "Racing Helmet",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 14.0639982223511,
        Mass = 1.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 500
        },
        Behaviors = {
            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Male_Torso_Upper = {
        AssetName = "Male Torso Upper",
        DisplayName = "Male Upper Torso",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 50.0071296691895,
        Mass = 20,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 20,
            Mass = 20,
            Strength = 500
        },
        Behaviors = {
            CV_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },

            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Male_Torso_Lower = {
        AssetName = "Male Torso Lower",
        DisplayName = "Male Lower Torso",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 21.3417339324951,
        Mass = 10,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 10,
            Mass = 10,
            Strength = 500
        },
        Behaviors = {
            CV_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },

            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Male_Leg_Right_Upper = {
        AssetName = "Male Leg Right Upper",
        DisplayName = "Male Upper Right Leg",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 10.9913854598999,
        Mass = 6,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 500
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },

            Knuckle_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },

            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Male_Leg_Right_Lower = {
        AssetName = "Male Leg Right Lower",
        DisplayName = "Male Lower Right Leg",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 8.45596313476563,
        Mass = 6,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 500
        },
        Behaviors = {
            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Male_Leg_Left_Upper = {
        AssetName = "Male Leg Left Upper",
        DisplayName = "Male Upper Left Leg",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 10.9913854598999,
        Mass = 6,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 500
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },

            Knuckle_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },

            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Male_Leg_Left_Lower = {
        AssetName = "Male Leg Left Lower",
        DisplayName = "Male Lower Left Leg",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 8.45596313476563,
        Mass = 6,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 500
        },
        Behaviors = {
            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Male_Head = {
        AssetName = "Male Head",
        DisplayName = "Male Head",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 10.2646293640137,
        Mass = 4.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 500
        },
        Behaviors = {
            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Male_Hair = {
        AssetName = "Male Hair",
        DisplayName = "Male Hair",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 10,
        Mass = 0.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 500
        },
        Behaviors = {
            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Male_Arm_Right_Lower = {
        AssetName = "Male Arm Right Lower",
        DisplayName = "Male Lower Right Arm",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2.7355420589447,
        Mass = 4,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4,
            Mass = 4,
            Strength = 500
        },
        Behaviors = {
            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Male_Arm_Right_Upper = {
        AssetName = "Male Arm Right Upper",
        DisplayName = "Male Upper Right Arm",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2.87979340553284,
        Mass = 4,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4,
            Mass = 4,
            Strength = 500
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },

            Knuckle_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },

            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Male_Arm_Left_Upper = {
        AssetName = "Male Arm Left Upper",
        DisplayName = "Male Upper Left Arm",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2.87979340553284,
        Mass = 4,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4,
            Mass = 4,
            Strength = 500
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },

            Knuckle_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },

            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Male_Arm_Left_Lower = {
        AssetName = "Male Arm Left Lower",
        DisplayName = "Male Lower Left Arm",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2.7355420589447,
        Mass = 4,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4,
            Mass = 4,
            Strength = 500
        },
        Behaviors = {
            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Dummy_Torso_Upper = {
        AssetName = "Dummy Torso Upper",
        DisplayName = "Dummy Upper Torso",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 43.323127746582,
        Mass = 20,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 20,
            Mass = 20,
            Strength = 500
        },
        Behaviors = {
            CV_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },

            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Dummy_Torso_Lower = {
        AssetName = "Dummy Torso Lower",
        DisplayName = "Dummy Lower Torso",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 19.1046047210693,
        Mass = 10,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 10,
            Mass = 10,
            Strength = 500
        },
        Behaviors = {
            CV_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },

            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Dummy_Leg_Right_Upper = {
        AssetName = "Dummy Leg Right Upper",
        DisplayName = "Dummy Upper Right Leg",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 9.78501319885254,
        Mass = 6,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 500
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },

            Knuckle_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },

            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Dummy_Leg_Right_Lower = {
        AssetName = "Dummy Leg Right Lower",
        DisplayName = "Dummy Lower Right Leg",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 8.45596313476563,
        Mass = 6,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 500
        },
        Behaviors = {
            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Dummy_Leg_Left_Upper = {
        AssetName = "Dummy Leg Left Upper",
        DisplayName = "Dummy Upper Left Leg",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 9.78501319885254,
        Mass = 6,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 500
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },

            Knuckle_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },

            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Dummy_Leg_Left_Lower = {
        AssetName = "Dummy Leg Left Lower",
        DisplayName = "Dummy Lower Left Leg",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 8.45596313476563,
        Mass = 6,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 500
        },
        Behaviors = {
            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Dummy_Head = {
        AssetName = "Dummy Head",
        DisplayName = "Dummy Head",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 10.2646293640137,
        Mass = 4.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 500
        },
        Behaviors = {
            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Dummy_Arm_Right_Upper = {
        AssetName = "Dummy Arm Right Upper",
        DisplayName = "Dummy Upper Right Arm",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.87979340553284,
        Mass = 4,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4,
            Mass = 4,
            Strength = 500
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },

            Knuckle_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },

            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Dummy_Arm_Right_Lower = {
        AssetName = "Dummy Arm Right Lower",
        DisplayName = "Dummy Lower Right Arm",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.7355420589447,
        Mass = 4,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4,
            Mass = 4,
            Strength = 500
        },
        Behaviors = {
            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Dummy_Arm_Left_Upper = {
        AssetName = "Dummy Arm Left Upper",
        DisplayName = "Dummy Upper Left Arm",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.87979340553284,
        Mass = 4,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4,
            Mass = 4,
            Strength = 500
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },

            Knuckle_Joint = {
                IsTweakable = false,
                Channels = {
                },
            },

            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Dummy_Arm_Left_Lower = {
        AssetName = "Dummy Arm Left Lower",
        DisplayName = "Dummy Lower Left Arm",
        Category = "Bodies",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.7355420589447,
        Mass = 4,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4,
            Mass = 4,
            Strength = 500
        },
        Behaviors = {
            Body_Part = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Wedge_Plate_Resizable = {
        AssetName = "Wedge Plate Resizable",
        DisplayName = "Wedge Plate",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 19.75,
        Mass = 2.37000012397766,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 2.37000012397766,
            Strength = 60
        },
        Behaviors = {        }
    },
    W45_Beam = {
        AssetName = "W45 Beam",
        DisplayName = "W 45 Beam",
        Category = "Blocks",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 5,
        Mass = 0.600000023841858,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.600000023841858,
            Strength = 60
        },
        Behaviors = {        }
    },
    V90_Beam = {
        AssetName = "V90 Beam",
        DisplayName = "V 90 Beam",
        Category = "Blocks",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 4,
        Mass = 0.480000019073486,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.480000019073486,
            Strength = 60
        },
        Behaviors = {        }
    },
    V60_Beam = {
        AssetName = "V60 Beam",
        DisplayName = "V 60 Beam",
        Category = "Blocks",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 4,
        Mass = 0.480000019073486,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.480000019073486,
            Strength = 60
        },
        Behaviors = {        }
    },
    Tile_Offset_2x2 = {
        AssetName = "Tile Offset 2x2",
        DisplayName = "Offset Tile 2x2",
        Category = "Blocks",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 2,
        Mass = 0.240000009536743,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.240000009536743,
            Strength = 60
        },
        Behaviors = {        }
    },
    Tile_Offset_1x2 = {
        AssetName = "Tile Offset 1x2",
        DisplayName = "Offset Tile 1x2",
        Category = "Blocks",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 1,
        Mass = 0.120000004768372,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.120000004768372,
            Strength = 60
        },
        Behaviors = {        }
    },
    Sphere_Resizable = {
        AssetName = "Sphere Resizable",
        DisplayName = "Sphere",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 88.4881896972656,
        Mass = 10.6185827255249,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 10.6185827255249,
            Strength = 60
        },
        Behaviors = {        }
    },
    Sloped_Plate_Resizable = {
        AssetName = "Sloped Plate Resizable",
        DisplayName = "Sloped Plate",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 90.3467178344727,
        Mass = 10.8416061401367,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 10.8416061401367,
            Strength = 60
        },
        Behaviors = {        }
    },
    Sloped_BeamPlate_Resizable = {
        AssetName = "Sloped BeamPlate Resizable",
        DisplayName = "Sloped Beam Plate",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 5.94974756240845,
        Mass = 0.713969707489014,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.713969707489014,
            Strength = 60
        },
        Behaviors = {        }
    },
    Sloped_Beam_Resizable = {
        AssetName = "Sloped Beam Resizable",
        DisplayName = "Sloped Beam",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 11.8994951248169,
        Mass = 1.42793941497803,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 1.42793941497803,
            Strength = 60
        },
        Behaviors = {        }
    },
    Plate_U_Resizable = {
        AssetName = "Plate U Resizable",
        DisplayName = "U-Plate",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 97.5,
        Mass = 11.7000007629395,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 11.7000007629395,
            Strength = 60
        },
        Behaviors = {        }
    },
    Plate_Resizable = {
        AssetName = "Plate Resizable",
        DisplayName = "Plate",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 84.5,
        Mass = 10.1400003433228,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 10.1400003433228,
            Strength = 60
        },
        Behaviors = {        }
    },
    Plate_Labelled_Resizable = {
        AssetName = "Plate Labelled Resizable",
        DisplayName = "Labelled Plate",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 84.5,
        Mass = 10.1400003433228,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 10.1400003433228,
            Strength = 60
        },
        Behaviors = {
            Text_Label = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Plate_L_Resizable = {
        AssetName = "Plate L Resizable",
        DisplayName = "L-Plate",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 91,
        Mass = 10.9200000762939,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 10.9200000762939,
            Strength = 60
        },
        Behaviors = {        }
    },
    Plate_Corrug_9x25 = {
        AssetName = "Plate Corrug 9x25",
        DisplayName = "Corrugated Plate 9x25",
        Category = "Blocks",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 112.499992370605,
        Mass = 13.5,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 13.5,
            Strength = 60
        },
        Behaviors = {        }
    },
    Gusset_x1 = {
        AssetName = "Gusset x1",
        DisplayName = "Gusset x1",
        Category = "Blocks",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 0.5,
        Mass = 0.0600000023841858,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.0600000023841858,
            Strength = 60
        },
        Behaviors = {        }
    },
    Cylinder_Resizable = {
        AssetName = "Cylinder Resizable",
        DisplayName = "Cylinder",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 191.637130737305,
        Mass = 22.9964561462402,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 22.9964561462402,
            Strength = 60
        },
        Behaviors = {        }
    },
    Circle_Plate_Resizable = {
        AssetName = "Circle Plate Resizable",
        DisplayName = "Circle Plate",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 25.1327419281006,
        Mass = 3.01592922210693,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 3.01592922210693,
            Strength = 60
        },
        Behaviors = {        }
    },
    Block_Resizable = {
        AssetName = "Block Resizable",
        DisplayName = "Block",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 169,
        Mass = 20.2800006866455,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 20.2800006866455,
            Strength = 60
        },
        Behaviors = {        }
    },
    Beam_Scaffold_Resizable = {
        AssetName = "Beam Scaffold Resizable",
        DisplayName = "Scaffold Beam",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 13,
        Mass = 0,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 0,
            Mass = 0,
            Strength = 500
        },
        Behaviors = {        }
    },
    Beam_Rounded_Resizable = {
        AssetName = "Beam Rounded Resizable",
        DisplayName = "Rounded Beam",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 10.0471973419189,
        Mass = 1.20566368103027,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 1.20566368103027,
            Strength = 60
        },
        Behaviors = {        }
    },
    Beam_Resizable = {
        AssetName = "Beam Resizable",
        DisplayName = "Beam",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 13,
        Mass = 1.56000006198883,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 1.56000006198883,
            Strength = 60
        },
        Behaviors = {        }
    },
    Angle157_5_Beam = {
        AssetName = "Angle157_5 Beam",
        DisplayName = "Angle 157.5 Beam",
        Category = "Blocks",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 3.19891977310181,
        Mass = 0.383870393037796,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.383870393037796,
            Strength = 60
        },
        Behaviors = {        }
    },
    Angle150_Beam = {
        AssetName = "Angle150 Beam",
        DisplayName = "Angle 150 Beam",
        Category = "Blocks",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 3.26799988746643,
        Mass = 0.392159998416901,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.392159998416901,
            Strength = 60
        },
        Behaviors = {        }
    },
    Angle135_Beam = {
        AssetName = "Angle135 Beam",
        DisplayName = "Angle 135 Beam",
        Category = "Blocks",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 3.41421961784363,
        Mass = 0.409706383943558,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.409706383943558,
            Strength = 60
        },
        Behaviors = {        }
    },
    Angle120_Beam = {
        AssetName = "Angle120 Beam",
        DisplayName = "Angle 120 Beam",
        Category = "Blocks",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 3.57599997520447,
        Mass = 0.429120004177094,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.429120004177094,
            Strength = 60
        },
        Behaviors = {        }
    },
    Angle9x40_Beam = {
        AssetName = "Angle9x40 Beam",
        DisplayName = "Angle 9 x 40 Beam",
        Category = "Blocks",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 10,
        Mass = 1.20000004768372,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 1.20000004768372,
            Strength = 60
        },
        Behaviors = {        }
    },
    Angle5x72_Beam = {
        AssetName = "Angle5x72 Beam",
        DisplayName = "Angle 5 x 72 Beam",
        Category = "Blocks",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 6,
        Mass = 0.720000028610229,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.720000028610229,
            Strength = 60
        },
        Behaviors = {        }
    },
    Angle3x120_Beam = {
        AssetName = "Angle3x120 Beam",
        DisplayName = "Angle 3 x 120 Beam",
        Category = "Blocks",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 4.5,
        Mass = 0.540000021457672,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 0.540000021457672,
            Strength = 60
        },
        Behaviors = {        }
    },
    Propeller_3Blade_Reversed = {
        AssetName = "Propeller 3Blade Reversed",
        DisplayName = "Propeller 3 Blade Reversed",
        Category = "Aero",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 88.3578643798828,
        Mass = 42,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 42,
            Mass = 42,
            Strength = 500
        },
        Behaviors = {
            Propeller = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                    "Thrust",
                },
            },
        }
    },
    Propeller_3Blade = {
        AssetName = "Propeller 3Blade",
        DisplayName = "Propeller 3 Blade",
        Category = "Aero",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 88.3578643798828,
        Mass = 42,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 42,
            Mass = 42,
            Strength = 500
        },
        Behaviors = {
            Propeller = {
                IsTweakable = false,
                Channels = {
                    "RPM",
                    "Thrust",
                },
            },
        }
    },
    Beam_Half_Rounded_Resizable = {
        AssetName = "Beam Half Rounded Resizable",
        DisplayName = "Half Rounded Beam",
        Category = "Blocks",
        IsResizable = true,
        IsPaintable = true,
        IsMaterialSwappable = true,
        UnitVolume = 9.02359867095947,
        Mass = 1.08283185958862,
        Strength = 60,
        Properties = {
            Material = "(Plastic)",
            Density = 0.120000004768372,
            Mass = 1.08283185958862,
            Strength = 60
        },
        Behaviors = {        }
    },
    Pulley_1x1 = {
        AssetName = "Pulley 1x1",
        DisplayName = "Pulley x1",
        Category = "Pulleys",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 0.652633130550385,
        Mass = 1.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 1000
        },
        Behaviors = {
            Pulley_Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Pulley_1x1_5 = {
        AssetName = "Pulley 1x1.5",
        DisplayName = "Pulley x1.5",
        Category = "Pulleys",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 1.14350700378418,
        Mass = 2.29999995231628,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.29999995231628,
            Mass = 2.29999995231628,
            Strength = 1000
        },
        Behaviors = {
            Pulley_Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Pulley_1x2 = {
        AssetName = "Pulley 1x2",
        DisplayName = "Pulley x2",
        Category = "Pulleys",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 1.83073043823242,
        Mass = 3,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 1000
        },
        Behaviors = {
            Pulley_Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Pulley_1x2_5 = {
        AssetName = "Pulley 1x2.5",
        DisplayName = "Pulley x2.5",
        Category = "Pulleys",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2.9779679775238,
        Mass = 3.79999995231628,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3.79999995231628,
            Mass = 3.79999995231628,
            Strength = 1000
        },
        Behaviors = {
            Pulley_Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Pulley_1x3 = {
        AssetName = "Pulley 1x3",
        DisplayName = "Pulley x3",
        Category = "Pulleys",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 4.05789041519165,
        Mass = 4.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 1000
        },
        Behaviors = {
            Pulley_Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Pulley_1x4 = {
        AssetName = "Pulley 1x4",
        DisplayName = "Pulley x4",
        Category = "Pulleys",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 6.80678415298462,
        Mass = 6,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 1000
        },
        Behaviors = {
            Pulley_Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Pulley_1x5 = {
        AssetName = "Pulley 1x5",
        DisplayName = "Pulley x5",
        Category = "Pulleys",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 10.3410758972168,
        Mass = 7.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 7.5,
            Mass = 7.5,
            Strength = 1000
        },
        Behaviors = {
            Pulley_Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Pulley_1x6 = {
        AssetName = "Pulley 1x6",
        DisplayName = "Pulley x6",
        Category = "Pulleys",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 14.6607666015625,
        Mass = 9,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 9,
            Mass = 9,
            Strength = 1000
        },
        Behaviors = {
            Pulley_Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Pulley_1x7 = {
        AssetName = "Pulley 1x7",
        DisplayName = "Pulley x7",
        Category = "Pulleys",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 19.7658519744873,
        Mass = 10.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 10.5,
            Mass = 10.5,
            Strength = 1000
        },
        Behaviors = {
            Pulley_Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Pulley_Differential_x4 = {
        AssetName = "Pulley Differential x4",
        DisplayName = "Differential Pulley x4",
        Category = "Pulleys",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 10.1794309616089,
        Mass = 7,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 7,
            Mass = 7,
            Strength = 1000
        },
        Behaviors = {
            Pulley_Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Differential_Gear = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Pulley_Differential_x6 = {
        AssetName = "Pulley Differential x6",
        DisplayName = "Differential Pulley x6",
        Category = "Pulleys",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 18.0334129333496,
        Mass = 10,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 10,
            Mass = 10,
            Strength = 1000
        },
        Behaviors = {
            Pulley_Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Differential_Gear = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Seat_Car = {
        AssetName = "Seat Car",
        DisplayName = "Car Seat",
        Category = "Seats",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 166.800003051758,
        Mass = 6,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 500
        },
        Behaviors = {
            Player_Lock_To = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Seat_Gokart = {
        AssetName = "Seat Gokart",
        DisplayName = "Go-kart Seat",
        Category = "Seats",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 99,
        Mass = 3,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 500
        },
        Behaviors = {
            Player_Lock_To = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Seat_Racing = {
        AssetName = "Seat Racing",
        DisplayName = "Racing Seat",
        Category = "Seats",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 180.000015258789,
        Mass = 5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 5,
            Mass = 5,
            Strength = 500
        },
        Behaviors = {
            Player_Lock_To = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Seat_Toilet = {
        AssetName = "Seat Toilet",
        DisplayName = "Porcelain Throne",
        Category = "Seats",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 210.499984741211,
        Mass = 30,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 30,
            Mass = 30,
            Strength = 500
        },
        Behaviors = {
            Player_Lock_To = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Seat_Vintage = {
        AssetName = "Seat Vintage",
        DisplayName = "Vintage Seat",
        Category = "Seats",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 87.9700012207031,
        Mass = 5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 5,
            Mass = 5,
            Strength = 500
        },
        Behaviors = {
            Player_Lock_To = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Control_Arm_1x4 = {
        AssetName = "Control Arm 1x4",
        DisplayName = "Control Arm 1x4",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.21340680122375,
        Mass = 2.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.5,
            Mass = 2.5,
            Strength = 1000
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Control_Arm_1x5 = {
        AssetName = "Control Arm 1x5",
        DisplayName = "Control Arm 1x5",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 4.21340703964233,
        Mass = 3.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3.5,
            Mass = 3.5,
            Strength = 1000
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Control_Arm_1x6 = {
        AssetName = "Control Arm 1x6",
        DisplayName = "Control Arm 1x6",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 5.21340703964233,
        Mass = 4.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 1000
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Control_Arm_3x5 = {
        AssetName = "Control Arm 3x5",
        DisplayName = "Control Arm 3x5",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 4.32011032104492,
        Mass = 4,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 4,
            Mass = 4,
            Strength = 1000
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Control_Arm_3x6 = {
        AssetName = "Control Arm 3x6",
        DisplayName = "Control Arm 3x6",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 5.32011032104492,
        Mass = 5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 5,
            Mass = 5,
            Strength = 1000
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    Control_Arm_3x7 = {
        AssetName = "Control Arm 3x7",
        DisplayName = "Control Arm 3x7",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 6.32011032104492,
        Mass = 6,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 6,
            Mass = 6,
            Strength = 1000
        },
        Behaviors = {
            Ball_and_Socket = {
                IsTweakable = false,
                Channels = {
                },
            },
        }
    },
    SpringDamper_Ball_Large_Barrel = {
        AssetName = "SpringDamper Ball Large Barrel",
        DisplayName = "Coil-over (Barrel) Large",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 11.4864473342896,
        Mass = 10,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 10,
            Mass = 10,
            Strength = 500
        },
        Behaviors = {
            Spring_Damper = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    SpringDamper_Ball_Large_Piston = {
        AssetName = "SpringDamper Ball Large Piston",
        DisplayName = "Coil-over (Piston) Large",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 5.23598718643188,
        Mass = 5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 5,
            Mass = 5,
            Strength = 500
        },
        Behaviors = {        }
    },
    SpringDamper_Ball_Medium_Barrel = {
        AssetName = "SpringDamper Ball Medium Barrel",
        DisplayName = "Coil-over (Barrel) Medium",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 3.66519165039063,
        Mass = 4,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4,
            Mass = 4,
            Strength = 500
        },
        Behaviors = {
            Spring_Damper = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    SpringDamper_Ball_Medium_Piston = {
        AssetName = "SpringDamper Ball Medium Piston",
        DisplayName = "Coil-over (Piston) Medium",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.09848594665527,
        Mass = 2,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 500
        },
        Behaviors = {        }
    },
    SpringDamper_Ball_Small_Barrel = {
        AssetName = "SpringDamper Ball Small Barrel",
        DisplayName = "Coil-over (Barrel) Small",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.09439539909363,
        Mass = 2,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 500
        },
        Behaviors = {
            Spring_Damper = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    SpringDamper_Ball_Small_Piston = {
        AssetName = "SpringDamper Ball Small Piston",
        DisplayName = "Coil-over (Piston) Small",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.21491289138794,
        Mass = 1,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1,
            Strength = 500
        },
        Behaviors = {        }
    },
    SpringDamper_Ball_Small_Strong_Barrel = {
        AssetName = "SpringDamper Ball Small Strong Barrel",
        DisplayName = "Coil-over (Barrel) Small Strong",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 4.41786479949951,
        Mass = 3,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 500
        },
        Behaviors = {
            Spring_Damper = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    SpringDamper_Ball_Small_Strong_Piston = {
        AssetName = "SpringDamper Ball Small Strong Piston",
        DisplayName = "Coil-over (Piston) Small Strong",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.09439539909363,
        Mass = 1.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 500
        },
        Behaviors = {        }
    },
    SpringDamper_Large_Barrel = {
        AssetName = "SpringDamper Large Barrel",
        DisplayName = "Coil-over (Barrel) Large",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 11.4864473342896,
        Mass = 10,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 10,
            Mass = 10,
            Strength = 500
        },
        Behaviors = {
            Spring_Damper = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    SpringDamper_Large_Piston = {
        AssetName = "SpringDamper Large Piston",
        DisplayName = "Coil-over (Piston) Large",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 5.23598718643188,
        Mass = 5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 5,
            Mass = 5,
            Strength = 500
        },
        Behaviors = {        }
    },
    SpringDamper_Medium_Barrel = {
        AssetName = "SpringDamper Medium Barrel",
        DisplayName = "Coil-over (Barrel) Medium",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 3.66519165039063,
        Mass = 4,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4,
            Mass = 4,
            Strength = 500
        },
        Behaviors = {
            Spring_Damper = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    SpringDamper_Medium_Piston = {
        AssetName = "SpringDamper Medium Piston",
        DisplayName = "Coil-over (Piston) Medium",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.09848594665527,
        Mass = 2,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 500
        },
        Behaviors = {        }
    },
    SpringDamper_Small_Barrel = {
        AssetName = "SpringDamper Small Barrel",
        DisplayName = "Coil-over (Barrel) Small",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.09439539909363,
        Mass = 2,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 500
        },
        Behaviors = {
            Spring_Damper = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    SpringDamper_Small_Piston = {
        AssetName = "SpringDamper Small Piston",
        DisplayName = "Coil-over (Piston) Small",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.21491289138794,
        Mass = 1,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1,
            Strength = 500
        },
        Behaviors = {        }
    },
    SpringDamper_Small_Strong_Barrel = {
        AssetName = "SpringDamper Small Strong Barrel",
        DisplayName = "Coil-over (Barrel) Small Strong",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 4.41786479949951,
        Mass = 3,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 500
        },
        Behaviors = {
            Spring_Damper = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    SpringDamper_Small_Strong_Piston = {
        AssetName = "SpringDamper Small Strong Piston",
        DisplayName = "Coil-over (Piston) Small Strong",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 2.09439539909363,
        Mass = 1.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 500
        },
        Behaviors = {        }
    },
    Steering_Arm_1_Ball_1_Axle_x4 = {
        AssetName = "Steering Arm 1-Ball 1-Axle x4",
        DisplayName = "Steering Arm 1-Ball 1-Axle x4",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2.76499962806702,
        Mass = 2.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.5,
            Mass = 2.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Steering_Arm_2_Axle_x4 = {
        AssetName = "Steering Arm 2-Axle x4",
        DisplayName = "Steering Arm 2-Axle x4",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2.36988377571106,
        Mass = 2.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.5,
            Mass = 2.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Steering_Arm_2_Ball_x4 = {
        AssetName = "Steering Arm 2-Ball x4",
        DisplayName = "Steering Arm 2-Ball x4",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.15734887123108,
        Mass = 2.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.5,
            Mass = 2.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Steering_Arm_3_Ball_x4 = {
        AssetName = "Steering Arm 3-Ball x4",
        DisplayName = "Steering Arm 3-Ball x4",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.44080710411072,
        Mass = 2.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 2.5,
            Mass = 2.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Steering_Arm_3x4_A = {
        AssetName = "Steering Arm 3x4 A",
        DisplayName = "Steering Arm 3x4 A",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.15109872817993,
        Mass = 3,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Steering_Arm_3x4_B = {
        AssetName = "Steering Arm 3x4 B",
        DisplayName = "Steering Arm 3x4 B",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.15109872817993,
        Mass = 3,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Steering_Arm_3x5_A = {
        AssetName = "Steering Arm 3x5 A",
        DisplayName = "Steering Arm 3x5 A",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.40109872817993,
        Mass = 3.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3.5,
            Mass = 3.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Steering_Arm_3x5_B = {
        AssetName = "Steering Arm 3x5 B",
        DisplayName = "Steering Arm 3x5 B",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 3.40109872817993,
        Mass = 3.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 3.5,
            Mass = 3.5,
            Strength = 1000
        },
        Behaviors = {        }
    },
    Torsion_SpringDamper_Axle = {
        AssetName = "Torsion SpringDamper Axle",
        DisplayName = "Torsion Spring (Axle to Axle)",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1.30899691581726,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {
            Torsion_Spring = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Torsion_SpringDamper_Block = {
        AssetName = "Torsion SpringDamper Block",
        DisplayName = "Torsion Spring (Block to Axle)",
        Category = "Suspension",
        IsResizable = false,
        IsPaintable = false,
        IsMaterialSwappable = false,
        UnitVolume = 1,
        Mass = 0.5,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 0.5,
            Mass = 0.5,
            Strength = 1000
        },
        Behaviors = {
            Torsion_Spring = {
                IsTweakable = true,
                Channels = {
                },
            },
        }
    },
    Wheel_Aircraft_2_5x9 = {
        AssetName = "Wheel Aircraft 2.5x9",
        DisplayName = "Aircraft Wheel 2.5x9",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 159.043106079102,
        Mass = 8,
        Strength = 600,
        Properties = {
            Material = "",
            Density = 8,
            Mass = 8,
            Strength = 600
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
    Wheel_Aircraft_2x6 = {
        AssetName = "Wheel Aircraft 2x6",
        DisplayName = "Aircraft Wheel 2x6",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 56.5486717224121,
        Mass = 3,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 500
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Wheel_Car_2_5x6_5 = {
        AssetName = "Wheel Car 2.5x6.5",
        DisplayName = "Car Wheel 2.5x6.5",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 82.9576644897461,
        Mass = 3.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 3.5,
            Mass = 3.5,
            Strength = 500
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
    Wheel_Car_2_5x7 = {
        AssetName = "Wheel Car 2.5x7",
        DisplayName = "Car Wheel 2.5x7",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 96.2112655639648,
        Mass = 4,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4,
            Mass = 4,
            Strength = 500
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
    Wheel_Car_2x6_5 = {
        AssetName = "Wheel Car 2x6.5",
        DisplayName = "Car Wheel 2x6.5",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 66.3661346435547,
        Mass = 3,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 500
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
    Wheel_Car_2x7 = {
        AssetName = "Wheel Car 2x7",
        DisplayName = "Car Wheel 2x7",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 76.9690170288086,
        Mass = 3.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 3.5,
            Mass = 3.5,
            Strength = 500
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
    Wheel_Car_2x8 = {
        AssetName = "Wheel Car 2x8",
        DisplayName = "Car Wheel 2x8",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 100.530967712402,
        Mass = 5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 5,
            Mass = 5,
            Strength = 500
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
    Wheel_Car_3x6_5 = {
        AssetName = "Wheel Car 3x6.5",
        DisplayName = "Car Wheel 3x6.5",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 99.549201965332,
        Mass = 4,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4,
            Mass = 4,
            Strength = 500
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
    Wheel_Offroad_5x15 = {
        AssetName = "Wheel Offroad 5x15",
        DisplayName = "Off-road Wheel 5x15",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 883.572875976563,
        Mass = 25,
        Strength = 1200,
        Properties = {
            Material = "",
            Density = 25,
            Mass = 25,
            Strength = 1200
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Wheel_Offroad_5_5x11 = {
        AssetName = "Wheel Offroad 5.5x11",
        DisplayName = "Off-road Wheel 5.5x11",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 522.682495117188,
        Mass = 20,
        Strength = 1000,
        Properties = {
            Material = "",
            Density = 20,
            Mass = 20,
            Strength = 1000
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
    Wheel_Motorcycle_1x8 = {
        AssetName = "Wheel Motorcycle 1x8",
        DisplayName = "Motorcycle Wheel 1x8",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 50.2654838562012,
        Mass = 3,
        Strength = 400,
        Properties = {
            Material = "",
            Density = 3,
            Mass = 3,
            Strength = 400
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Wheel_Gokart_2x5 = {
        AssetName = "Wheel Gokart 2x5",
        DisplayName = "Go-kart Wheel 2x5",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 39.269905090332,
        Mass = 2,
        Strength = 400,
        Properties = {
            Material = "",
            Density = 2,
            Mass = 2,
            Strength = 400
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
    Wheel_Gokart_2_5x4 = {
        AssetName = "Wheel Gokart 2.5x4",
        DisplayName = "Go-kart Wheel 2.5x4",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 31.4159259796143,
        Mass = 1.5,
        Strength = 400,
        Properties = {
            Material = "",
            Density = 1.5,
            Mass = 1.5,
            Strength = 400
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Wheel_Car_4x8 = {
        AssetName = "Wheel Car 4x8",
        DisplayName = "Car Wheel 4x8",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 201.061935424805,
        Mass = 5.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 5.5,
            Mass = 5.5,
            Strength = 500
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
    Wheel_Car_3x8 = {
        AssetName = "Wheel Car 3x8",
        DisplayName = "Car Wheel 3x8",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 150.796447753906,
        Mass = 5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 5,
            Mass = 5,
            Strength = 500
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
    Wheel_Car_3x7 = {
        AssetName = "Wheel Car 3x7",
        DisplayName = "Car Wheel 3x7",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 115.453521728516,
        Mass = 4.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 500
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
    Wheel_Offroad_5x18 = {
        AssetName = "Wheel Offroad 5x18",
        DisplayName = "Off-road Wheel 5x18",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 1272.34484863281,
        Mass = 30,
        Strength = 1200,
        Properties = {
            Material = "",
            Density = 30,
            Mass = 30,
            Strength = 1200
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Wheel_Offroad_10x16 = {
        AssetName = "Wheel Offroad 10x16",
        DisplayName = "Off-road Wheel 10x16",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 2010.61926269531,
        Mass = 50,
        Strength = 1200,
        Properties = {
            Material = "",
            Density = 50,
            Mass = 50,
            Strength = 1200
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Wheel_Racing_4x8 = {
        AssetName = "Wheel Racing 4x8",
        DisplayName = "Racing Wheel 4x8",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 201.061935424805,
        Mass = 4.5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 4.5,
            Mass = 4.5,
            Strength = 500
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
    Wheel_Racing_5x8 = {
        AssetName = "Wheel Racing 5x8",
        DisplayName = "Racing Wheel 5x8",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 251.327407836914,
        Mass = 5,
        Strength = 500,
        Properties = {
            Material = "",
            Density = 5,
            Mass = 5,
            Strength = 500
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
    Wheel_Trolley_1x3 = {
        AssetName = "Wheel Trolley 1x3",
        DisplayName = "Trolley Wheel 1x3",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 7.06858396530151,
        Mass = 1,
        Strength = 200,
        Properties = {
            Material = "",
            Density = 1,
            Mass = 1,
            Strength = 200
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },
        }
    },
    Wheel_Truck_2_5x9 = {
        AssetName = "Wheel Truck 2.5x9",
        DisplayName = "Truck Wheel 2.5x9",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 159.043106079102,
        Mass = 8,
        Strength = 600,
        Properties = {
            Material = "",
            Density = 8,
            Mass = 8,
            Strength = 600
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
    Wheel_Truck_3x11 = {
        AssetName = "Wheel Truck 3x11",
        DisplayName = "Truck Wheel 3x11",
        Category = "Wheels",
        IsResizable = false,
        IsPaintable = true,
        IsMaterialSwappable = false,
        UnitVolume = 285.099548339844,
        Mass = 12.5,
        Strength = 800,
        Properties = {
            Material = "",
            Density = 12.5,
            Mass = 12.5,
            Strength = 800
        },
        Behaviors = {
            Wheel = {
                IsTweakable = true,
                Channels = {
                    "RPM",
                },
            },

            Wheel_Brake = {
                IsTweakable = true,
                Channels = {
                    "Braking Torque (Nm)",
                },
            },
        }
    },
}
Category_heap = {
    "Wheels",
    "Suspension",
    "Seats",
    "Pulleys",
    "Blocks",
    "Aero",
    "Bodies",
    "Brakes & Clutches",
    "Checkpoints",
    "Combustion Engines",
    "Connectors",
    "Control Wheels",
    "Electronics",
    "Fuel",
    "Gears",
    "Lights",
    "Linear Actuators",
    "Motors",
    "Pipes",
    "Power",
    "Props"
}
ICategories = {
    {
        "Wheel_Aircraft_2_5x9",
        "Wheel_Aircraft_2x6",
        "Wheel_Car_2_5x6_5",
        "Wheel_Car_2_5x7",
        "Wheel_Car_2x6_5",
        "Wheel_Car_2x7",
        "Wheel_Car_2x8",
        "Wheel_Car_3x6_5",
        "Wheel_Offroad_5x15",
        "Wheel_Offroad_5_5x11",
        "Wheel_Motorcycle_1x8",
        "Wheel_Gokart_2x5",
        "Wheel_Gokart_2_5x4",
        "Wheel_Car_4x8",
        "Wheel_Car_3x8",
        "Wheel_Car_3x7",
        "Wheel_Offroad_5x18",
        "Wheel_Offroad_10x16",
        "Wheel_Racing_4x8",
        "Wheel_Racing_5x8",
        "Wheel_Trolley_1x3",
        "Wheel_Truck_2_5x9",
        "Wheel_Truck_3x11", 
    },
    {
        "Control_Arm_1x4",
        "Control_Arm_1x5",
        "Control_Arm_1x6",
        "Control_Arm_3x5",
        "Control_Arm_3x6",
        "Control_Arm_3x7",
        "SpringDamper_Ball_Large_Barrel",
        "SpringDamper_Ball_Large_Piston",
        "SpringDamper_Ball_Medium_Barrel",
        "SpringDamper_Ball_Medium_Piston",
        "SpringDamper_Ball_Small_Barrel",
        "SpringDamper_Ball_Small_Piston",
        "SpringDamper_Ball_Small_Strong_Barrel",
        "SpringDamper_Ball_Small_Strong_Piston",
        "SpringDamper_Large_Barrel",
        "SpringDamper_Large_Piston",
        "SpringDamper_Medium_Barrel",
        "SpringDamper_Medium_Piston",
        "SpringDamper_Small_Barrel",
        "SpringDamper_Small_Piston",
        "SpringDamper_Small_Strong_Barrel",
        "SpringDamper_Small_Strong_Piston",
        "Steering_Arm_1_Ball_1_Axle_x4",
        "Steering_Arm_2_Axle_x4",
        "Steering_Arm_2_Ball_x4",
        "Steering_Arm_3_Ball_x4",
        "Steering_Arm_3x4_A",
        "Steering_Arm_3x4_B",
        "Steering_Arm_3x5_A",
        "Steering_Arm_3x5_B",
        "Torsion_SpringDamper_Axle",
        "Torsion_SpringDamper_Block",
    },
    {
        "Seat_Car",
        "Seat_Gokart",
        "Seat_Racing",
        "Seat_Toilet",
    },
    {
        "Pulley_1x1",
        "Pulley_1x1_5",
        "Pulley_1x2",
        "Pulley_1x2_5",
        "Pulley_1x3",
        "Pulley_1x4",
        "Pulley_1x5",
        "Pulley_1x6",
        "Pulley_1x7",
        "Pulley_Differential_x4",
        "Pulley_Differential_x6",
    },
    {
        "Wedge_Plate_Resizable",
        "W45_Beam",
        "V90_Beam",
        "V60_Beam",
        "Tile_Offset_2x2",
        "Tile_Offset_1x2",
        "Sphere_Resizable",
        "Sloped_Plate_Resizable",
        "Sloped_BeamPlate_Resizable",
        "Sloped_Beam_Resizable",
        "Plate_U_Resizable",
        "Plate_Resizable",
        "Plate_Labelled_Resizable",
        "Plate_L_Resizable",
        "Plate_Corrug_9x25",
        "Gusset_x1",
        "Cylinder_Resizable",
        "Circle_Plate_Resizable",
        "Block_Resizable",
        "Beam_Scaffold_Resizable",
        "Beam_Rounded_Resizable",
        "Beam_Resizable",
        "Angle157_5_Beam",
        "Angle150_Beam",
        "Angle135_Beam",
        "Angle120_Beam",
        "Angle9x40_Beam",
        "Angle5x72_Beam",
        "Angle3x120_Beam",
        "Beam_Half_Rounded_Resizable",
    },
    {
        "Propeller_3Blade_Reversed",
        "Propeller_3Blade",
    },
    {
        "Racing_Helmet",
        "Male_Torso_Upper",
        "Male_Torso_Lower",
        "Male_Leg_Right_Upper",
        "Male_Leg_Right_Lower",
        "Male_Leg_Left_Upper",
        "Male_Leg_Left_Lower",
        "Male_Head",
        "Male_Hair",
        "Male_Arm_Right_Lower",
        "Male_Arm_Right_Upper",
        "Male_Arm_Left_Upper",
        "Male_Arm_Left_Lower",
        "Dummy_Torso_Upper",
        "Dummy_Torso_Lower",
        "Dummy_Leg_Right_Upper",
        "Dummy_Leg_Right_Lower",
        "Dummy_Leg_Left_Upper",
        "Dummy_Leg_Left_Lower",
        "Dummy_Head",
        "Dummy_Arm_Right_Upper",
        "Dummy_Arm_Right_Lower",
        "Dummy_Arm_Left_Upper",
        "Dummy_Arm_Left_Lower",
    },
    {
        "Ratchet_Block",
        "Ratchet_Axle",
        "Clutch_Ring_Gear_x4",
        "Clutch_Ring_Gear_x3",
        "Clutch_Centrifugal_x3",
        "Clutch_Centrifugal_x2",
        "Clutch_Centrifugal_Ring_Gear_x3",
        "Brake_Disk_x4",
        "Brake_Disk_x3",
    },
    {
        "CheckpointCylinder_Resizable",
        "CheckpointBox_Resizable",
    },
    {
        "Fan_AirCooled_x3",
        "Fan_7Blade_x4",
        "Fan_4Blade_x3",
        "Engine_ThrottleBody_x1",
        "Engine_Head_x2",
        "Engine_Head_x1",
        "Engine_Cylinder_2x2_Translucent",
        "Engine_Cylinder_2x2",
        "Engine_Cylinder_1x1_Translucent",
        "Engine_Cylinder_1x1",
        "Engine_Crank_x2",
        "Engine_Crank_x1",
        "Engine_Crank_Rear_x2_Axle_Resizable",
        "Engine_Crank_Rear_x1_Axle_Resizable",
        "Engine_Crank_Nose_Axle_Resizable",
    },
    {
        "SliderRail_Resizable",
        "Rotor_4",
        "Rotor_3",
        "Rotor_2",
        "Connector_UJYoke_Axle_Resizable",
        "Connector_Plate_Axle_Resizable",
        "Connector_Plate2_Axle_Resizable",
        "Connector_Pin",
        "Connector_PerpSocket_Axle_Resizable",
        "Connector_PerpSocket",
        "Connector_ParaSocket_Axle_Resizable",
        "Connector_ParaSocket",
        "Connector_Offset_3_Hole_x5",
        "Connector_Offset_3_Hole_x3",
        "Connector_KnuckleJointOuter180_Axle_Resizable",
        "Connector_KnuckleJointOuter180",
        "Connector_KnuckleJointOuter90_Axle_Resizable",
        "Connector_KnuckleJointOuter90",
        "Connector_KnuckleJointInner_Axle_Resizable",
        "Connector_KnuckleJointInner",
        "Connector_CVJointOuter_Axle_Resizable",
        "Connector_CVJointOuter",
        "Connector_CVJointInner_Axle_Resizable",
        "Connector_CVJointInner",
        "Connector_Ball_Axle_Resizable",
        "Connector_Ball",
        "Connector_AngleLimiter_Block",
        "Connector_AngleLimiter_Axle",
        "Connector_AngleAxle180",
        "Connector_AngleAxle157_5",
        "Connector_AngleAxle150",
        "Connector_AngleAxle135",
        "Connector_AngleAxle120",
        "Connector_AngleAxle90",
        "Connector_AngleAxle4x90",
        "Connector_AngleAxle3x120",
        "Connector_AngleAxle3x90",
        "Connector_Angle180",
        "Connector_Angle157_5",
        "Connector_Angle150",
        "Connector_Angle135",
        "Connector_Angle120",
        "Connector_Angle90",
        "Connector_Angle4x90",
        "Connector_Angle3x120",
        "Connector_Angle3x90",
        "Connector_Angle0",
        "Connector_2_Hole_SliderRail_Resizable",
        "Connector_2_Hole_Plate_Resizable",
        "Connector_2_Hole_Para_SliderRail_Resizable",
        "Connector_2_Hole_Para_Plate_Resizable",
        "Connector_2_Hole_Axle_Resizable",
        "Connector_2_Hole_Axle_Perp_Resizable",
        "Connector_1_Hole_SliderRail_Resizable",
        "Connector_1_Hole_Plate_Resizable",
        "Connector_1_Hole_Para_SliderRail_Resizable",
        "Connector_1_Hole_Para_Plate_Resizable",
        "Connector_1_Hole_Axle_Resizable",
        "Axle_Scaffold_Resizable",
        "Axle_Resizable",
    },
    {
        "Steering_Wheel_x4",
        "Sports_Steering_Wheel_x4",
        "Hand_Wheel_x5",
        "Hand_Wheel_x3",
    },
    {
        "Sensor_SpeedAltitude",
        "Sensor_Attitude",
        "Sensor_Angle",
        "Sensor_Accelerometer",
        "Display_16x4Char_9x4",
        "Display_16x4Char_5x2",
        "Display_16x2Char_9x2",
        "Display_16x2Char_5x1",
        "Display_8x2Char_5x2",
        "Display_8x2Char_3x1",
        "Display_8x1Char_3x1",
    },
    {
        "FuelTank_15x5",
        "FuelTank_7x5",
        "FuelTank_3x2",
    },
    {
        "Gear_Worm_1T_CW_7x1",
        "Gear_Worm_1T_CW_3x1",
        "Gear_Worm_1T_CW_1x1",
        "Gear_Worm_1T_CCW_7x1",
        "Gear_Worm_1T_CCW_3x1",
        "Gear_Worm_1T_CCW_1x1",
        "Gear_Spur_Ratchet_24T_1x3",
        "Gear_Spur_Ratchet_20T_1x2_5",
        "Gear_Spur_Ratchet_16T_1x2",
        "Gear_Spur_Ratchet_12T_1x1_5",
        "Gear_Spur_Ratchet_8T_1x1",
        "Gear_Spur_Clutch_24T_1x3",
        "Gear_Spur_Clutch_20T_1x2_5",
        "Gear_Spur_Clutch_16T_1x2",
        "Gear_Spur_Clutch_12T_1x1_5",
        "Gear_Spur_Clutch_8T_1x1",
        "Gear_Spur_72T_1x9",
        "Gear_Spur_64T_1x8",
        "Gear_Spur_56T_1x7",
        "Gear_Spur_48T_1x6",
        "Gear_Spur_40T_1x5",
        "Gear_Spur_36T_1x4_5",
        "Gear_Spur_32T_1x4",
        "Gear_Spur_28T_1x3_5",
        "Gear_Spur_24T_1x3",
        "Gear_Spur_22T_1x2_75",
        "Gear_Spur_20T_1x2_5",
        "Gear_Spur_18T_1x2_25",
        "Gear_Spur_16T_1x2",
        "Gear_Spur_14T_1x1_75",
        "Gear_Spur_12T_1x1_5",
        "Gear_Spur_10T_1x1_25",
        "Gear_Spur_8T_1x1",
        "Gear_Rack_x7",
        "Gear_Rack_x3",
        "Gear_Rack_2_Hole_SliderRail_x13",
        "Gear_Rack_2_Hole_SliderRail_x7",
        "Gear_Rack_2_Hole_SliderRail_x5",
        "Gear_Rack_2_Hole_SliderRail_x3",
        "Gear_Rack_2_Ball_SliderRail_x7",
        "Gear_Rack_2_Ball_SliderRail_x5",
        "Gear_Rack_2_Ball_SliderRail_x3",
        "Gear_Differential_Spur_48T",
        "Gear_Differential_Spur_32T",
        "Gear_Differential_Crown_48T",
        "Gear_Differential_Crown_32T", 
        "Gear_Crown_Lo_48T_1x6",
        "Gear_Crown_Lo_40T_1x5",
        "Gear_Crown_Lo_32T_1x4",
        "Gear_Crown_Lo_24T_1x3",
        "Gear_Crown_Lo_16T_1x2",
        "Gear_Crown_Hi_48T_1x6",
        "Gear_Crown_Hi_40T_1x5",
        "Gear_Crown_Hi_32T_1x4",
        "Gear_Crown_Hi_24T_1x3",
        "Gear_Crown_Hi_16T_1x2",
        "Gear_Bevel_Lo_48T_1x6",
        "Gear_Bevel_Lo_40T_1x5",
        "Gear_Bevel_Lo_32T_1x4",
        "Gear_Bevel_Lo_24T_1x3",
        "Gear_Bevel_Lo_16T_1x2",
        "Gear_Bevel_Hi_48T_1x6",
        "Gear_Bevel_Hi_40T_1x5",
        "Gear_Bevel_Hi_32T_1x4",
        "Gear_Bevel_Hi_24T_1x3",
        "Gear_Bevel_Hi_16T_1x2",
    },
    {
        "Light_UprightRound_x2",
        "Light_UprightRound_x1_5",
        "Light_UprightRect_x2",
        "Light_UprightRect_x1_5",
        "Light_Rect_2x2",
        "Light_Rect_1x2",
        "Light_Cone_x1",
    },
    {
        "LinearActuator_Small_Piston",
        "LinearActuator_Small_Barrel",
        "LinearActuator_Medium_Piston",
        "LinearActuator_Medium_Barrel",
        "LinearActuator_LargeLong_Piston",
        "LinearActuator_LargeLong_Barrel",
        "LinearActuator_Large_Piston",
        "LinearActuator_Large_Barrel",
        "LinearActuator_Ball_Small_Piston",
        "LinearActuator_Ball_Small_Barrel",
        "LinearActuator_Ball_Medium_Piston", 
        "LinearActuator_Ball_Medium_Barrel",
        "LinearActuator_Ball_LargeLong_Piston",
        "LinearActuator_Ball_LargeLong_Barrel",
        "LinearActuator_Ball_Large_Piston",
        "LinearActuator_Ball_Large_Barrel",
    },
    {
        "Motor_Stepper_Small",
        "Motor_Stepper_Medium",
        "Motor_Starter_Small",
        "Motor_Servo_Small",
        "Motor_Servo_Medium",
        "Motor_Servo_Continuous_Small",
        "Motor_Servo_Continuous_Medium",
        "Motor_Electric_Small",
        "Motor_Electric_Medium",
        "Motor_Electric_Large",
    },
    {
        "Pipe_Tee_Small",
        "Pipe_Tee_90_Small",
        "Pipe_Tee_90",
        "Pipe_Tee",
        "Pipe_Straight_Resizable",
        "Pipe_Cross_Small",
        "Pipe_Corner_90_Small",
        "Pipe_Cross",
        "Pipe_Corner_Small",
        "Pipe_Corner_90",
        "Pipe_Corner",
        "Pipe_Clamped",
    },
    {
        "Solar_Panel_25x15",
        "Solar_Panel_15x9",
        "Solar_Panel_9x5",
        "Generator_Alternator_Medium",
        "Battery_15x9",
        "Battery_9x5",
        "Battery_4x3",
        "Battery_3x2_5",
        "Battery_2x1_5",
    },
    {
        "Traffic_Cone_4x6",
        "Traffic_Barrier_Concrete_10x30",
        "Football",
    },
}
Categories = {
    Wheels = {
        Wheel_Aircraft_2_5x9 = Heap.Wheel_Aircraft_2_5x9,
        Wheel_Aircraft_2x6 = Heap.Wheel_Aircraft_2x6,
        Wheel_Car_2_5x6_5 = Heap.Wheel_Car_2_5x6_5,
        Wheel_Car_2_5x7 = Heap.Wheel_Car_2_5x7,
        Wheel_Car_2x6_5 = Heap.Wheel_Car_2x6_5,
        Wheel_Car_2x7 = Heap.Wheel_Car_2x7,
        Wheel_Car_2x8 = Heap.Wheel_Car_2x8,
        Wheel_Car_3x6_5 = Heap.Wheel_Car_3x6_5,
        Wheel_Offroad_5x15 = Heap.Wheel_Offroad_5x15,
        Wheel_Offroad_5_5x11 = Heap.Wheel_Offroad_5_5x11,
        Wheel_Motorcycle_1x8 = Heap.Wheel_Motorcycle_1x8,
        Wheel_Gokart_2x5 = Heap.Wheel_Gokart_2x5,
        Wheel_Gokart_2_5x4 = Heap.Wheel_Gokart_2_5x4,
        Wheel_Car_4x8 = Heap.Wheel_Car_4x8,
        Wheel_Car_3x8 = Heap.Wheel_Car_3x8,
        Wheel_Car_3x7 = Heap.Wheel_Car_3x7,
        Wheel_Offroad_5x18 = Heap.Wheel_Offroad_5x18,
        Wheel_Offroad_10x16 = Heap.Wheel_Offroad_10x16,
        Wheel_Racing_4x8 = Heap.Wheel_Racing_4x8,
        Wheel_Racing_5x8 = Heap.Wheel_Racing_5x8,
        Wheel_Trolley_1x3 = Heap.Wheel_Trolley_1x3,
        Wheel_Truck_2_5x9 = Heap.Wheel_Truck_2_5x9,
        Wheel_Truck_3x11 = Heap.Wheel_Truck_3x11, 
    },
    Suspension = {
        Control_Arm_1x4 = Heap.Control_Arm_1x4,
        Control_Arm_1x5 = Heap.Control_Arm_1x5,
        Control_Arm_1x6 = Heap.Control_Arm_1x6,
        Control_Arm_3x5 = Heap.Control_Arm_3x5,
        Control_Arm_3x6 = Heap.Control_Arm_3x6,
        Control_Arm_3x7 = Heap.Control_Arm_3x7,
        SpringDamper_Ball_Large_Barrel = Heap.SpringDamper_Ball_Large_Barrel,
        SpringDamper_Ball_Large_Piston = Heap.SpringDamper_Ball_Large_Piston,
        SpringDamper_Ball_Medium_Barrel = Heap.SpringDamper_Ball_Medium_Barrel,
        SpringDamper_Ball_Medium_Piston = Heap.SpringDamper_Ball_Medium_Piston,
        SpringDamper_Ball_Small_Barrel = Heap.SpringDamper_Ball_Small_Barrel,
        SpringDamper_Ball_Small_Piston = Heap.SpringDamper_Ball_Small_Piston,
        SpringDamper_Ball_Small_Strong_Barrel = Heap.SpringDamper_Ball_Small_Strong_Barrel,
        SpringDamper_Ball_Small_Strong_Piston = Heap.SpringDamper_Ball_Small_Strong_Piston,
        SpringDamper_Large_Barrel = Heap.SpringDamper_Large_Barrel,
        SpringDamper_Large_Piston = Heap.SpringDamper_Large_Piston,
        SpringDamper_Medium_Barrel = Heap.SpringDamper_Medium_Barrel,
        SpringDamper_Medium_Piston = Heap.SpringDamper_Medium_Piston,
        SpringDamper_Small_Barrel = Heap.SpringDamper_Small_Barrel,
        SpringDamper_Small_Piston = Heap.SpringDamper_Small_Piston,
        SpringDamper_Small_Strong_Barrel = Heap.SpringDamper_Small_Strong_Barrel,
        SpringDamper_Small_Strong_Piston = Heap.SpringDamper_Small_Strong_Piston,
        Steering_Arm_1_Ball_1_Axle_x4 = Heap.Steering_Arm_1_Ball_1_Axle_x4,
        Steering_Arm_2_Axle_x4 = Heap.Steering_Arm_2_Axle_x4,
        Steering_Arm_2_Ball_x4 = Heap.Steering_Arm_2_Ball_x4,
        Steering_Arm_3_Ball_x4 = Heap.Steering_Arm_3_Ball_x4,
        Steering_Arm_3x4_A = Heap.Steering_Arm_3x4_A,
        Steering_Arm_3x4_B = Heap.Steering_Arm_3x4_B,
        Steering_Arm_3x5_A = Heap.Steering_Arm_3x5_A,
        Steering_Arm_3x5_B = Heap.Steering_Arm_3x5_B,
        Torsion_SpringDamper_Axle = Heap.Torsion_SpringDamper_Axle,
        Torsion_SpringDamper_Block = Heap.Torsion_SpringDamper_Block,
    },
    Seats = {
        Seat_Car = Heap.Seat_Car,
        Seat_Gokart = Heap.Seat_Gokart,
        Seat_Racing = Heap.Seat_Racing,
        Seat_Toilet = Heap.Seat_Toilet,
    },
    Pulleys = {
        Pulley_1x1 = Heap.Pulley_1x1,
        Pulley_1x1_5 = Heap.Pulley_1x1_5,
        Pulley_1x2 = Heap.Pulley_1x2,
        Pulley_1x2_5 = Heap.Pulley_1x2_5,
        Pulley_1x3 = Heap.Pulley_1x3,
        Pulley_1x4 = Heap.Pulley_1x4,
        Pulley_1x5 = Heap.Pulley_1x5,
        Pulley_1x6 = Heap.Pulley_1x6,
        Pulley_1x7 = Heap.Pulley_1x7,
        Pulley_Differential_x4 = Heap.Pulley_Differential_x4,
        Pulley_Differential_x6 = Heap.Pulley_Differential_x6,
    },
    Blocks = {
        Wedge_Plate_Resizable = Heap.Wedge_Plate_Resizable,
        W45_Beam = Heap.W45_Beam,
        V90_Beam = Heap.V90_Beam,
        V60_Beam = Heap.V60_Beam,
        Tile_Offset_2x2 = Heap.Tile_Offset_2x2,
        Tile_Offset_1x2 = Heap.Tile_Offset_1x2,
        Sphere_Resizable = Heap.Sphere_Resizable,
        Sloped_Plate_Resizable = Heap.Sloped_Plate_Resizable,
        Sloped_BeamPlate_Resizable = Heap.Sloped_BeamPlate_Resizable,
        Sloped_Beam_Resizable = Heap.Sloped_Beam_Resizable,
        Plate_U_Resizable = Heap.Plate_U_Resizable,
        Plate_Resizable = Heap.Plate_Resizable,
        Plate_Labelled_Resizable = Heap.Plate_Labelled_Resizable,
        Plate_L_Resizable = Heap.Plate_L_Resizable,
        Plate_Corrug_9x25 = Heap.Plate_Corrug_9x25,
        Gusset_x1 = Heap.Gusset_x1,
        Cylinder_Resizable = Heap.Cylinder_Resizable,
        Circle_Plate_Resizable = Heap.Circle_Plate_Resizable,
        Block_Resizable = Heap.Block_Resizable,
        Beam_Scaffold_Resizable = Heap.Beam_Scaffold_Resizable,
        Beam_Rounded_Resizable = Heap.Beam_Rounded_Resizable,
        Beam_Resizable = Heap.Beam_Resizable,
        Angle157_5_Beam = Heap.Angle157_5_Beam,
        Angle150_Beam = Heap.Angle150_Beam,
        Angle135_Beam = Heap.Angle135_Beam,
        Angle120_Beam = Heap.Angle120_Beam,
        Angle9x40_Beam = Heap.Angle9x40_Beam,
        Angle5x72_Beam = Heap.Angle5x72_Beam,
        Angle3x120_Beam = Heap.Angle3x120_Beam,
        Beam_Half_Rounded_Resizable = Heap.Beam_Half_Rounded_Resizable,
    },
    Aero = {
        Propeller_3Blade_Reversed = Heap.Propeller_3Blade_Reversed,
        Propeller_3Blade = Heap.Propeller_3Blade,
    },
    Bodies = {
        Racing_Helmet = Heap.Racing_Helmet,
        Male_Torso_Upper = Heap.Male_Torso_Upper,
        Male_Torso_Lower = Heap.Male_Torso_Lower,
        Male_Leg_Right_Upper = Heap.Male_Leg_Right_Upper,
        Male_Leg_Right_Lower = Heap.Male_Leg_Right_Lower,
        Male_Leg_Left_Upper = Heap.Male_Leg_Left_Upper,
        Male_Leg_Left_Lower = Heap.Male_Leg_Left_Lower,
        Male_Head = Heap.Male_Head,
        Male_Hair = Heap.Male_Hair,
        Male_Arm_Right_Lower = Heap.Male_Arm_Right_Lower,
        Male_Arm_Right_Upper = Heap.Male_Arm_Right_Upper,
        Male_Arm_Left_Upper = Heap.Male_Arm_Left_Upper,
        Male_Arm_Left_Lower = Heap.Male_Arm_Left_Lower,
        Dummy_Torso_Upper = Heap.Dummy_Torso_Upper,
        Dummy_Torso_Lower = Heap.Dummy_Torso_Lower,
        Dummy_Leg_Right_Upper = Heap.Dummy_Leg_Right_Upper,
        Dummy_Leg_Right_Lower = Heap.Dummy_Leg_Right_Lower,
        Dummy_Leg_Left_Upper = Heap.Dummy_Leg_Left_Upper,
        Dummy_Leg_Left_Lower = Heap.Dummy_Leg_Left_Lower,
        Dummy_Head = Heap.Dummy_Head,
        Dummy_Arm_Right_Upper = Heap.Dummy_Arm_Right_Upper,
        Dummy_Arm_Right_Lower = Heap.Dummy_Arm_Right_Lower,
        Dummy_Arm_Left_Upper = Heap.Dummy_Arm_Left_Upper,
        Dummy_Arm_Left_Lower = Heap.Dummy_Arm_Left_Lower,
    },
    Brakes_and_Clutches = {
        Ratchet_Block = Heap.Ratchet_Block,
        Ratchet_Axle = Heap.Ratchet_Axle,
        Clutch_Ring_Gear_x4 = Heap.Clutch_Ring_Gear_x4,
        Clutch_Ring_Gear_x3 = Heap.Clutch_Ring_Gear_x3,
        Clutch_Centrifugal_x3 = Heap.Clutch_Centrifugal_x3,
        Clutch_Centrifugal_x2 = Heap.Clutch_Centrifugal_x2,
        Clutch_Centrifugal_Ring_Gear_x3 = Heap.Clutch_Centrifugal_Ring_Gear_x3,
        Brake_Disk_x4 = Heap.Brake_Disk_x4,
        Brake_Disk_x3 = Heap.Brake_Disk_x3,
    },
    Checkpoints = {
        CheckpointCylinder_Resizable = Heap.CheckpointCylinder_Resizable,
        CheckpointBox_Resizable = Heap.CheckpointBox_Resizable,
    },
    Combustion_Engines = {
        Fan_AirCooled_x3 = Heap.Fan_AirCooled_x3,
        Fan_7Blade_x4 = Heap.Fan_7Blade_x4,
        Fan_4Blade_x3 = Heap.Fan_4Blade_x3,
        Engine_ThrottleBody_x1 = Heap.Engine_ThrottleBody_x1,
        Engine_Head_x2 = Heap.Engine_Head_x2,
        Engine_Head_x1 = Heap.Engine_Head_x1,
        Engine_Cylinder_2x2_Translucent = Heap.Engine_Cylinder_2x2_Translucent,
        Engine_Cylinder_2x2 = Heap.Engine_Cylinder_2x2,
        Engine_Cylinder_1x1_Translucent = Heap.Engine_Cylinder_1x1_Translucent,
        Engine_Cylinder_1x1 = Heap.Engine_Cylinder_1x1,
        Engine_Crank_x2 = Heap.Engine_Crank_x2,
        Engine_Crank_x1 = Heap.Engine_Crank_x1,
        Engine_Crank_Rear_x2_Axle_Resizable = Heap.Engine_Crank_Rear_x2_Axle_Resizable,
        Engine_Crank_Rear_x1_Axle_Resizable = Heap.Engine_Crank_Rear_x1_Axle_Resizable,
        Engine_Crank_Nose_Axle_Resizable = Heap.Engine_Crank_Nose_Axle_Resizable,
    },
    Connectors = {
        SliderRail_Resizable = Heap.SliderRail_Resizable,
        Rotor_4 = Heap.Rotor_4,
        Rotor_3 = Heap.Rotor_3,
        Rotor_2 = Heap.Rotor_2,
        Connector_UJYoke_Axle_Resizable = Heap.Connector_UJYoke_Axle_Resizable,
        Connector_Plate_Axle_Resizable = Heap.Connector_Plate_Axle_Resizable,
        Connector_Plate2_Axle_Resizable = Heap.Connector_Plate2_Axle_Resizable,
        Connector_Pin = Heap.Connector_Pin,
        Connector_PerpSocket_Axle_Resizable = Heap.Connector_PerpSocket_Axle_Resizable,
        Connector_PerpSocket = Heap.Connector_PerpSocket,
        Connector_ParaSocket_Axle_Resizable = Heap.Connector_ParaSocket_Axle_Resizable,
        Connector_ParaSocket = Heap.Connector_ParaSocket,
        Connector_Offset_3_Hole_x5 = Heap.Connector_Offset_3_Hole_x5,
        Connector_Offset_3_Hole_x3 = Heap.Connector_Offset_3_Hole_x3,
        Connector_KnuckleJointOuter180_Axle_Resizable = Heap.Connector_KnuckleJointOuter180_Axle_Resizable,
        Connector_KnuckleJointOuter180 = Heap.Connector_KnuckleJointOuter180,
        Connector_KnuckleJointOuter90_Axle_Resizable = Heap.Connector_KnuckleJointOuter90_Axle_Resizable,
        Connector_KnuckleJointOuter90 = Heap.Connector_KnuckleJointOuter90,
        Connector_KnuckleJointInner_Axle_Resizable = Heap.Connector_KnuckleJointInner_Axle_Resizable,
        Connector_KnuckleJointInner = Heap.Connector_KnuckleJointInner,
        Connector_CVJointOuter_Axle_Resizable = Heap.Connector_CVJointOuter_Axle_Resizable,
        Connector_CVJointOuter = Heap.Connector_CVJointOuter,
        Connector_CVJointInner_Axle_Resizable = Heap.Connector_CVJointInner_Axle_Resizable,
        Connector_CVJointInner = Heap.Connector_CVJointInner,
        Connector_Ball_Axle_Resizable = Heap.Connector_Ball_Axle_Resizable,
        Connector_Ball = Heap.Connector_Ball,
        Connector_AngleLimiter_Block = Heap.Connector_AngleLimiter_Block,
        Connector_AngleLimiter_Axle = Heap.Connector_AngleLimiter_Axle,
        Connector_AngleAxle180 = Heap.Connector_AngleAxle180,
        Connector_AngleAxle157_5 = Heap.Connector_AngleAxle157_5,
        Connector_AngleAxle150 = Heap.Connector_AngleAxle150,
        Connector_AngleAxle135 = Heap.Connector_AngleAxle135,
        Connector_AngleAxle120 = Heap.Connector_AngleAxle120,
        Connector_AngleAxle90 = Heap.Connector_AngleAxle90,
        Connector_AngleAxle4x90 = Heap.Connector_AngleAxle4x90,
        Connector_AngleAxle3x120 = Heap.Connector_AngleAxle3x120,
        Connector_AngleAxle3x90 = Heap.Connector_AngleAxle3x90,
        Connector_Angle180 = Heap.Connector_Angle180,
        Connector_Angle157_5 = Heap.Connector_Angle157_5,
        Connector_Angle150 = Heap.Connector_Angle150,
        Connector_Angle135 = Heap.Connector_Angle135,
        Connector_Angle120 = Heap.Connector_Angle120,
        Connector_Angle90 = Heap.Connector_Angle90,
        Connector_Angle4x90 = Heap.Connector_Angle4x90,
        Connector_Angle3x120 = Heap.Connector_Angle3x120,
        Connector_Angle3x90 = Heap.Connector_Angle3x90,
        Connector_Angle0 = Heap.Connector_Angle0,
        Connector_2_Hole_SliderRail_Resizable = Heap.Connector_2_Hole_SliderRail_Resizable,
        Connector_2_Hole_Plate_Resizable = Heap.Connector_2_Hole_Plate_Resizable,
        Connector_2_Hole_Para_SliderRail_Resizable = Heap.Connector_2_Hole_Para_SliderRail_Resizable,
        Connector_2_Hole_Para_Plate_Resizable = Heap.Connector_2_Hole_Para_Plate_Resizable,
        Connector_2_Hole_Axle_Resizable = Heap.Connector_2_Hole_Axle_Resizable,
        Connector_2_Hole_Axle_Perp_Resizable = Heap.Connector_2_Hole_Axle_Perp_Resizable,
        Connector_1_Hole_SliderRail_Resizable = Heap.Connector_1_Hole_SliderRail_Resizable,
        Connector_1_Hole_Plate_Resizable = Heap.Connector_1_Hole_Plate_Resizable,
        Connector_1_Hole_Para_SliderRail_Resizable = Heap.Connector_1_Hole_Para_SliderRail_Resizable,
        Connector_1_Hole_Para_Plate_Resizable = Heap.Connector_1_Hole_Para_Plate_Resizable,
        Connector_1_Hole_Axle_Resizable = Heap.Connector_1_Hole_Axle_Resizable,
        Axle_Scaffold_Resizable = Heap.Axle_Scaffold_Resizable,
        Axle_Resizable = Heap.Axle_Resizable,
    },
    Control_Wheels = {
        Steering_Wheel_x4 = Heap.Steering_Wheel_x4,
        Sports_Steering_Wheel_x4 = Heap.Sports_Steering_Wheel_x4,
        Hand_Wheel_x5 = Heap.Hand_Wheel_x5,
        Hand_Wheel_x3 = Heap.Hand_Wheel_x3,
    },
    Electronics = {
        Sensor_SpeedAltitude = Heap.Sensor_SpeedAltitude,
        Sensor_Attitude = Heap.Sensor_Attitude,
        Sensor_Angle = Heap.Sensor_Angle,
        Sensor_Accelerometer = Heap.Sensor_Accelerometer,
        Display_16x4Char_9x4 = Heap.Display_16x4Char_9x4,
        Display_16x4Char_5x2 = Heap.Display_16x4Char_5x2,
        Display_16x2Char_9x2 = Heap.Display_16x2Char_9x2,
        Display_16x2Char_5x1 = Heap.Display_16x2Char_5x1,
        Display_8x2Char_5x2 = Heap.Display_8x2Char_5x2,
        Display_8x2Char_3x1 = Heap.Display_8x2Char_3x1,
        Display_8x1Char_3x1 = Heap.Display_8x1Char_3x1,
    },
    Fuel = {
        FuelTank_15x5 = Heap.FuelTank_15x5,
        FuelTank_7x5 = Heap.FuelTank_7x5,
        FuelTank_3x2 = Heap.FuelTank_3x2,
    },
    Gears = {
        Gear_Worm_1T_CW_7x1 = Heap.Gear_Worm_1T_CW_7x1,
        Gear_Worm_1T_CW_3x1 = Heap.Gear_Worm_1T_CW_3x1,
        Gear_Worm_1T_CW_1x1 = Heap.Gear_Worm_1T_CW_1x1,
        Gear_Worm_1T_CCW_7x1 = Heap.Gear_Worm_1T_CCW_7x1,
        Gear_Worm_1T_CCW_3x1 = Heap.Gear_Worm_1T_CCW_3x1,
        Gear_Worm_1T_CCW_1x1 = Heap.Gear_Worm_1T_CCW_1x1,
        Gear_Spur_Ratchet_24T_1x3 = Heap.Gear_Spur_Ratchet_24T_1x3,
        Gear_Spur_Ratchet_20T_1x2_5 = Heap.Gear_Spur_Ratchet_20T_1x2_5,
        Gear_Spur_Ratchet_16T_1x2 = Heap.Gear_Spur_Ratchet_16T_1x2,
        Gear_Spur_Ratchet_12T_1x1_5 = Heap.Gear_Spur_Ratchet_12T_1x1_5,
        Gear_Spur_Ratchet_8T_1x1 = Heap.Gear_Spur_Ratchet_8T_1x1,
        Gear_Spur_Clutch_24T_1x3 = Heap.Gear_Spur_Clutch_24T_1x3,
        Gear_Spur_Clutch_20T_1x2_5 = Heap.Gear_Spur_Clutch_20T_1x2_5,
        Gear_Spur_Clutch_16T_1x2 = Heap.Gear_Spur_Clutch_16T_1x2,
        Gear_Spur_Clutch_12T_1x1_5 = Heap.Gear_Spur_Clutch_12T_1x1_5,
        Gear_Spur_Clutch_8T_1x1 = Heap.Gear_Spur_Clutch_8T_1x1,
        Gear_Spur_72T_1x9 = Heap.Gear_Spur_72T_1x9,
        Gear_Spur_64T_1x8 = Heap.Gear_Spur_64T_1x8,
        Gear_Spur_56T_1x7 = Heap.Gear_Spur_56T_1x7,
        Gear_Spur_48T_1x6 = Heap.Gear_Spur_48T_1x6,
        Gear_Spur_40T_1x5 = Heap.Gear_Spur_40T_1x5,
        Gear_Spur_36T_1x4_5 = Heap.Gear_Spur_36T_1x4_5,
        Gear_Spur_32T_1x4 = Heap.Gear_Spur_32T_1x4,
        Gear_Spur_28T_1x3_5 = Heap.Gear_Spur_28T_1x3_5,
        Gear_Spur_24T_1x3 = Heap.Gear_Spur_24T_1x3,
        Gear_Spur_22T_1x2_75 = Heap.Gear_Spur_22T_1x2_75,
        Gear_Spur_20T_1x2_5 = Heap.Gear_Spur_20T_1x2_5,
        Gear_Spur_18T_1x2_25 = Heap.Gear_Spur_18T_1x2_25,
        Gear_Spur_16T_1x2 = Heap.Gear_Spur_16T_1x2,
        Gear_Spur_14T_1x1_75 = Heap.Gear_Spur_14T_1x1_75,
        Gear_Spur_12T_1x1_5 = Heap.Gear_Spur_12T_1x1_5,
        Gear_Spur_10T_1x1_25 = Heap.Gear_Spur_10T_1x1_25,
        Gear_Spur_8T_1x1 = Heap.Gear_Spur_8T_1x1,
        Gear_Rack_x7 = Heap.Gear_Rack_x7,
        Gear_Rack_x3 = Heap.Gear_Rack_x3,
        Gear_Rack_2_Hole_SliderRail_x13 = Heap.Gear_Rack_2_Hole_SliderRail_x13,
        Gear_Rack_2_Hole_SliderRail_x7 = Heap.Gear_Rack_2_Hole_SliderRail_x7,
        Gear_Rack_2_Hole_SliderRail_x5 = Heap.Gear_Rack_2_Hole_SliderRail_x5,
        Gear_Rack_2_Hole_SliderRail_x3 = Heap.Gear_Rack_2_Hole_SliderRail_x3,
        Gear_Rack_2_Ball_SliderRail_x7 = Heap.Gear_Rack_2_Ball_SliderRail_x7,
        Gear_Rack_2_Ball_SliderRail_x5 = Heap.Gear_Rack_2_Ball_SliderRail_x5,
        Gear_Rack_2_Ball_SliderRail_x3 = Heap.Gear_Rack_2_Ball_SliderRail_x3,
        Gear_Differential_Spur_48T = Heap.Gear_Differential_Spur_48T,
        Gear_Differential_Spur_32T = Heap.Gear_Differential_Spur_32T,
        Gear_Differential_Crown_48T = Heap.Gear_Differential_Crown_48T,
        Gear_Differential_Crown_32T = Heap.Gear_Differential_Crown_32T, 
        Gear_Crown_Lo_48T_1x6 = Heap.Gear_Crown_Lo_48T_1x6,
        Gear_Crown_Lo_40T_1x5 = Heap.Gear_Crown_Lo_40T_1x5,
        Gear_Crown_Lo_32T_1x4 = Heap.Gear_Crown_Lo_32T_1x4,
        Gear_Crown_Lo_24T_1x3 = Heap.Gear_Crown_Lo_24T_1x3,
        Gear_Crown_Lo_16T_1x2 = Heap.Gear_Crown_Lo_16T_1x2,
        Gear_Crown_Hi_48T_1x6 = Heap.Gear_Crown_Hi_48T_1x6,
        Gear_Crown_Hi_40T_1x5 = Heap.Gear_Crown_Hi_40T_1x5,
        Gear_Crown_Hi_32T_1x4 = Heap.Gear_Crown_Hi_32T_1x4,
        Gear_Crown_Hi_24T_1x3 = Heap.Gear_Crown_Hi_24T_1x3,
        Gear_Crown_Hi_16T_1x2 = Heap.Gear_Crown_Hi_16T_1x2,
        Gear_Bevel_Lo_48T_1x6 = Heap.Gear_Bevel_Lo_48T_1x6,
        Gear_Bevel_Lo_40T_1x5 = Heap.Gear_Bevel_Lo_40T_1x5,
        Gear_Bevel_Lo_32T_1x4 = Heap.Gear_Bevel_Lo_32T_1x4,
        Gear_Bevel_Lo_24T_1x3 = Heap.Gear_Bevel_Lo_24T_1x3,
        Gear_Bevel_Lo_16T_1x2 = Heap.Gear_Bevel_Lo_16T_1x2,
        Gear_Bevel_Hi_48T_1x6 = Heap.Gear_Bevel_Hi_48T_1x6,
        Gear_Bevel_Hi_40T_1x5 = Heap.Gear_Bevel_Hi_40T_1x5,
        Gear_Bevel_Hi_32T_1x4 = Heap.Gear_Bevel_Hi_32T_1x4,
        Gear_Bevel_Hi_24T_1x3 = Heap.Gear_Bevel_Hi_24T_1x3,
        Gear_Bevel_Hi_16T_1x2 = Heap.Gear_Bevel_Hi_16T_1x2,
    },
    Lights = {
        Light_UprightRound_x2 = Heap.Light_UprightRound_x2,
        Light_UprightRound_x1_5 = Heap.Light_UprightRound_x1_5,
        Light_UprightRect_x2 = Heap.Light_UprightRect_x2,
        Light_UprightRect_x1_5 = Heap.Light_UprightRect_x1_5,
        Light_Rect_2x2 = Heap.Light_Rect_2x2,
        Light_Rect_1x2 = Heap.Light_Rect_1x2,
        Light_Cone_x1 = Heap.Light_Cone_x1,
    },
    Linear_Actuators = {
        LinearActuator_Small_Piston = Heap.LinearActuator_Small_Piston,
        LinearActuator_Small_Barrel = Heap.LinearActuator_Small_Barrel,
        LinearActuator_Medium_Piston = Heap.LinearActuator_Medium_Piston,
        LinearActuator_Medium_Barrel = Heap.LinearActuator_Medium_Barrel,
        LinearActuator_LargeLong_Piston = Heap.LinearActuator_LargeLong_Piston,
        LinearActuator_LargeLong_Barrel = Heap.LinearActuator_LargeLong_Barrel,
        LinearActuator_Large_Piston = Heap.LinearActuator_Large_Piston,
        LinearActuator_Large_Barrel = Heap.LinearActuator_Large_Barrel,
        LinearActuator_Ball_Small_Piston = Heap.LinearActuator_Ball_Small_Piston,
        LinearActuator_Ball_Small_Barrel = Heap.LinearActuator_Ball_Small_Barrel,
        LinearActuator_Ball_Medium_Piston = Heap.LinearActuator_Ball_Medium_Piston, 
        LinearActuator_Ball_Medium_Barrel = Heap.LinearActuator_Ball_Medium_Barrel,
        LinearActuator_Ball_LargeLong_Piston = Heap.LinearActuator_Ball_LargeLong_Piston,
        LinearActuator_Ball_LargeLong_Barrel = Heap.LinearActuator_Ball_LargeLong_Barrel,
        LinearActuator_Ball_Large_Piston = Heap.LinearActuator_Ball_Large_Piston,
        LinearActuator_Ball_Large_Barrel = Heap.LinearActuator_Ball_Large_Barrel,
    },
    Motors = {
        Motor_Stepper_Small = Heap.Motor_Stepper_Small,
        Motor_Stepper_Medium = Heap.Motor_Stepper_Medium,
        Motor_Starter_Small = Heap.Motor_Starter_Small,
        Motor_Servo_Small = Heap.Motor_Servo_Small,
        Motor_Servo_Medium = Heap.Motor_Servo_Medium,
        Motor_Servo_Continuous_Small = Heap.Motor_Servo_Continuous_Small,
        Motor_Servo_Continuous_Medium = Heap.Motor_Servo_Continuous_Medium,
        Motor_Electric_Small = Heap.Motor_Electric_Small,
        Motor_Electric_Medium = Heap.Motor_Electric_Medium,
        Motor_Electric_Large = Heap.Motor_Electric_Large,
    },
    Pipes = {
        Pipe_Tee_Small = Heap.Pipe_Tee_Small,
        Pipe_Tee_90_Small = Heap.Pipe_Tee_90_Small,
        Pipe_Tee_90 = Heap.Pipe_Tee_90,
        Pipe_Tee = Heap.Pipe_Tee,
        Pipe_Straight_Resizable = Heap.Pipe_Straight_Resizable,
        Pipe_Cross_Small = Heap.Pipe_Cross_Small,
        Pipe_Corner_90_Small = Heap.Pipe_Corner_90_Small,
        Pipe_Cross = Heap.Pipe_Cross,
        Pipe_Corner_Small = Heap.Pipe_Corner_Small,
        Pipe_Corner_90 = Heap.Pipe_Corner_90,
        Pipe_Corner = Heap.Pipe_Corner,
        Pipe_Clamped = Heap.Pipe_Clamped,
    },
    Power = {
        Solar_Panel_25x15 = Heap.Solar_Panel_25x15,
        Solar_Panel_15x9 = Heap.Solar_Panel_15x9,
        Solar_Panel_9x5 = Heap.Solar_Panel_9x5,
        Generator_Alternator_Medium = Heap.Generator_Alternator_Medium,
        Battery_15x9 = Heap.Battery_15x9,
        Battery_9x5 = Heap.Battery_9x5,
        Battery_4x3 = Heap.Battery_4x3,
        Battery_3x2_5 = Heap.Battery_3x2_5,
        Battery_2x1_5 = Heap.Battery_2x1_5,
    },
    Props = {
        Traffic_Cone_4x6 = Heap.Traffic_Cone_4x6,
        Traffic_Barrier_Concrete_10x30 = Heap.Traffic_Barrier_Concrete_10x30,
        Football = Heap.Football,
    },
}
___Globals.Category_heap = Category_heap
___Globals.Categories = Categories
___Globals.ICategories = ICategories
___Globals.Heap = Heap
function SpawnPart(AssetName, position, rotation, size)
    local parts = {  }
    local p = nil
    for part in Parts.Instances do
        parts[part.ID] = part
    end
    PopConstructions.SpawnPart( AssetName, position, rotation )
    for part in Parts.Instances do
        if not parts[part.ID] then
            p = part
        end
    end
    
    p.SetSize( size )
    return p
end
___Globals.SpawnPart = SpawnPart
return ___Globals