#include "script_component.hpp"

/*
 * Author: Salbei
 * Checks if the Counter can be stopped
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [ACE_player] call grad_auxillaryRangeCounter_functions_fnc_canStop;
 *
 * Public: No
 */

params ["_unit"];

if !(isNull objectParent _unit) exitWith { false };
if (_unit getVariable [QGVAR(pfh), -1] isEqualTo -1) exitWith { false };

true