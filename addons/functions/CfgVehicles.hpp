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
                class GVAR(showDistance) {
                    displayName = CSTRING(showDistance);
                    exceptions[] = {};
                    showDisabled = 0;
                    priority = 4;
                    statement = QUOTE(_player call FUNC(showDistance));
                    condition = QUOTE(_player call FUNC(canShowDistance));
                };
			};
		};
	};
};