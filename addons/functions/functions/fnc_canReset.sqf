#include "script_component.hpp"

/*
 * Author: Salbei
 * Resets beads count.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [ACE_player] call grad_paceCountBeads_functions_fnc_canReset;
 *
 * Public: No
 */

params ["_unit"];

if !(GVAR(allowPaceCountBeads)) exitWith { false };
if (_unit getVariable [QGVAR(lastPos), []] isEqualTo []) exitWith { false };

true