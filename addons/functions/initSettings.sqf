[
    QGVAR(allowPaceCountBeads), 
    "CHECKBOX", 
    [
        localize LSTRING(allowPaceCountBeads_displayName), 
        localize LSTRING(allowPaceCountBeads_tooltip)
    ], 
    localize LSTRING(settingCategory), 
    true,
    2
] call  CBA_fnc_addSetting;

[
    QGVAR(constantlyShow), 
    "CHECKBOX", 
    [
        localize LSTRING(constantlyShow_displayName), 
        localize LSTRING(constantlyShow_tooltip)
    ], 
    localize LSTRING(settingCategory), 
    false,
    0
]  call CBA_fnc_addSetting;

[
    QGVAR(showOnChange), 
    "CHECKBOX", 
    [
        localize LSTRING(showOnChange_displayName), 
        localize LSTRING(showOnChange_tooltip)
    ], 
    localize LSTRING(settingCategory), 
    false,
    0
]  call CBA_fnc_addSetting;