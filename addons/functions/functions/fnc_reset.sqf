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
 * [ACE_player] call grad_auxillaryRangeCounter_functions_fnc_reset;
 *
 * Public: No
 */

params ["_unit"];

_unit setVariable [QGVAR(lastPos), []];
_unit setVariable [QGVAR(distanceTraveled), 0];
_unit setVariable [QGVAR(overallDistanceTraveled), 0];
_unit setVariable [QGVAR(triggerDistance), (random 10) + 95];