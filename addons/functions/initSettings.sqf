[
    QGVAR(allowPaceCountBeads), 
    "CHECKBOX", 
    [
        localize LSTRING(allowPaceCountBeads_displayName), 
        localize LSTRING(allowPaceCountBeads_tooltip)
    ], 
    localize LSTRING(settingCategory), 
    true,
    true
] call CBA_Settings_fnc_init;

[
    QGVAR(constantlyShow), 
    "CHECKBOX", 
    [
        localize LSTRING(constantlyShow_displayName), 
        localize LSTRING(constantlyShow_tooltip)
    ], 
    localize LSTRING(settingCategory), 
    false,
    true
] call CBA_Settings_fnc_init;