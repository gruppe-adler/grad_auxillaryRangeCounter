#include "script_component.hpp"
#include "..\UI\idcmacros.hpp"

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

//show UI
"grad_paceCountBeads" cutRsc ["grad_paceCountBeads", "PLAIN"];

private _compassDisplay = uiNamespace getVariable ["grad_paceCountBeads", displayNull];
private _compassCtrl = _compassDisplay displayCtrl IDC_TOP_BACKGROUND;
private _ctrlHeight = safezoneH;
private _ctrlWidth = safezoneW * 0.05;
private _ctrlX = ((0.25) * safezoneW + safezoneX) - (pixelW * 64);
private _ctrlY = safezoneY;

_ctrlX = profileNamespace getVariable ["igui_grad_paceCountBeads_x", _ctrlX];
_ctrlY = profileNamespace getVariable ["igui_grad_paceCountBeads_y", _ctrlY];
_ctrlWidth = profileNamespace getVariable ["igui_grad_paceCountBeads_w", _ctrlWidth];
_ctrlHeight = profileNamespace getVariable ["igui_grad_paceCountBeads_h", _ctrlHeight];

_compassCtrl ctrlSetPosition [
    _ctrlX,
    _ctrlY,
    _ctrlWidth,
    _ctrlHeight
];

//hide UI after 5 seconds
//if !(GVAR(constantlyShow)) then {
	[{"grad_paceCountBeads" cutText ["", "PLAIN"];}, [], 5] call CBA_fnc_waitAndExecute;
//};

