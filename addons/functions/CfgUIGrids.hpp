class CfgUIGrids {
    class IGUI {
        class Presets {
            class Arma3 {
                class Variables {
                    grad_paceCountBeads[] = {
                        {
                            "((0.25) * safezoneW + safezoneX) - (pixelW * 64)",
                            "safezoneY",
                            "safezoneW * 0.1",
                            "safezoneH"
                        },
						"(((safezoneW / safezoneH) min 1.2) / 40)",
                        "((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)"
                    };
                };
            };
        };

        class Variables {
            class grad_paceCountBeads {
                displayName = CSTRING(Name);
                description = CSTRING(Description);
                preview = QPATHTOF(UI\background.paa);
                saveToProfile[] = {0,1,2,3};
                canResize = 1;
                keepAspectRatio = 1;
            };
        };
    };
};