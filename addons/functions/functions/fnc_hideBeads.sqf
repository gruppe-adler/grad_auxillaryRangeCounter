#include "script_component.hpp"

/*
 * Author: Salbei
 * Hides the beads.
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

"grad_paceCountBeads" cutText ["", "PLAIN"];
GVAR(uiOpen) = false;