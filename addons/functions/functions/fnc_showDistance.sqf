#include "script_component.hpp"

/*
 * Author: Salbei
 * Stops the counting PerFrameHandler.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [ACE_player] call grad_paceCountBeads_functions_fnc_stopPfh;
 *
 * Public: No
 */

params ["_unit"];

private _overallDistanceTraveled = _unit getVariable [QGVAR(overallDistanceTraveled), 0];
hintSilent format ["Distance Traveled: %1 Beads", _overallDistanceTraveled];