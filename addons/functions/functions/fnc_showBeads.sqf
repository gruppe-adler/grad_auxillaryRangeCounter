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

private _backgroundDisplay = uiNamespace getVariable ["grad_paceCountBeads", displayNull];

private _backgroundCtrl = _backgroundDisplay displayCtrl IDC_BACKGROUND_BEADS;
private _topCtrl = _backgroundDisplay displayCtrl IDC_TOP_BEADS;
private _bottomCtrl = _backgroundDisplay displayCtrl IDC_BOTTOM_BEADS;

private _ctrlHeight = safezoneH;
private _ctrlWidth = safezoneW * 0.05;
private _ctrlX = ((0.25) * safezoneW + safezoneX) - (pixelW * 64);
private _ctrlY = safezoneY;

_ctrlX = profileNamespace getVariable ["igui_grad_paceCountBeads_x", _ctrlX];
_ctrlY = profileNamespace getVariable ["igui_grad_paceCountBeads_y", _ctrlY];
_ctrlWidth = profileNamespace getVariable ["igui_grad_paceCountBeads_w", _ctrlWidth];
_ctrlHeight = profileNamespace getVariable ["igui_grad_paceCountBeads_h", _ctrlHeight];

private _array = [
    _ctrlX,
    _ctrlY,
    _ctrlWidth,
    _ctrlHeight
];

_backgroundCtrl ctrlSetPosition _array;
_backgroundCtrl ctrlCommit 0;

_topCtrl ctrlSetPosition _array;
_topCtrl ctrlCommit 0;

_bottomCtrl ctrlSetPosition _array;
_bottomCtrl ctrlCommit 0;

QGVAR(uiOpen) = true;

//hide UI after 5 seconds
if !(GVAR(constantlyShow)) then {
	[{
        QGVAR(uiOpen) = false;
        "grad_paceCountBeads" cutText ["", "PLAIN"];
    }, [], 5] call CBA_fnc_waitAndExecute;
};

