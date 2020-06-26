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

//show UI
"grad_paceCountBeads" cutRsc ["grad_paceCountBeads", "PLAIN"];

//hide UI after 5 seconds
//if () then {
	[{"grad_paceCountBeads" cutText ["", "PLAIN"];}, [], 5] call CBA_fnc_waitAndExecute;
//};