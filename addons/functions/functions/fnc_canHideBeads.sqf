#include "script_component.hpp"

/*
 * Author: Salbei
 * Checks if the Counter can be started
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [ACE_player] call grad_paceCountBeads_functions_fnc_canStart;
 *
 * Public: No
 */

params ["_unit"];

if !(GVAR(allowPaceCountBeads)) exitWith { false };
if !(GVAR(constantlyShow)) exitWith { false };
if !(isNull objectParent _unit) exitWith { false };
if (_unit getVariable [QGVAR(pfh), -1] isEqualTo -1) exitWith { false };
if !(isNil QGVAR(uiOpen) && {GVAR(uiOpen)}) exitWith { false };

true