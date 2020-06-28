class CfgVehicles {
    class Man;
    class CAManBase: Man {
        class ACE_SelfActions {
            class ACE_Equipment {
                class GVAR(startCounting) {
                    displayName = CSTRING(startCounting);
                    exceptions[] = {};
                    showDisabled = 0;
                    priority = 4;
                    statement = QUOTE(_player call FUNC(startPfh));
                    condition = QUOTE(_player call FUNC(canStart));
                };
                class GVAR(stopCounting) {
                    displayName = CSTRING(stopCounting);
                    exceptions[] = {};
                    showDisabled = 0;
                    priority = 4;
                    statement = QUOTE(_player call FUNC(stopPfh));
                    condition = QUOTE(_player call FUNC(canStop));
                };
                class GVAR(showBeads) {
                    displayName = CSTRING(showBeads);
                    exceptions[] = {};
                    showDisabled = 0;
                    priority = 4;
                    statement = QUOTE(_player call FUNC(showBeads));
                    condition = QUOTE(_player call FUNC(canShowBeads));
                };
                class GVAR(hideBeads) {
                    displayName = CSTRING(hideBeads);
                    exceptions[] = {};
                    showDisabled = 0;
                    priority = 4;
                    statement = QUOTE(_player call FUNC(hideBeads));
                    condition = QUOTE(_player call FUNC(canHideBeads));
                };
                class GVAR(reset) {
                    displayName = CSTRING(reset);
                    exceptions[] = {};
                    showDisabled = 0;
                    priority = 4;
                    statement = QUOTE(_player call FUNC(reset));
                    condition = QUOTE(_player call FUNC(canReset));
                };
            };
        };
    };
};