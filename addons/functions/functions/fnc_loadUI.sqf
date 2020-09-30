#include "script_component.hpp"
#include "..\UI\idcmacros.hpp"

/*
 * Author: Salbei
 * Shows the correct beads position.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [ACE_player] call grad_paceCountBeads_functions_fnc_loadUI;
 *
 * Public: No
 */

params ["_display"];

uiNamespace setVariable ['grad_paceCountBeads', _display];

private _overallDistanceTraveled = ace_player getVariable [QGVAR(overallDistanceTraveled), 0];
private _top = floor(_overallDistanceTraveled/10);
private _bottom = floor(_overallDistanceTraveled mod 10);

if (_top > 4) then {
	_top = 4;
	_bottom = 9;
};

(_display displayCtrl IDC_TOP_BEADS) ctrlSetText format[QPATHTOF(UI\top_%1.paa), _top];
(_display displayCtrl IDC_BOTTOM_BEADS) ctrlSetText format[QPATHTOF(UI\bottom_%1.paa), _bottom];
