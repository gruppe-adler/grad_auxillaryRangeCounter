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