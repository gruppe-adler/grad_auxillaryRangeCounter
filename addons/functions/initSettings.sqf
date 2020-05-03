[
    QGVAR(allowAuxillaryRangeCounter), 
    "CHECKBOX", 
    [
        localize LSTRING(allowAuxillaryRangeCounter_displayName), 
        localize LSTRING(allowAuxillaryRangeCounter_tooltip)
    ], 
    localize LSTRING(settingCategory), 
    true,
    true
] call CBA_Settings_fnc_init;