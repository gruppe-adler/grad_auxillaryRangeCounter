#include "script_component.hpp"

/*
 * Author: Salbei
 * Starts the counting PerFrameHandler.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [ACE_player] call grad_paceCountBeads_functions_fnc_startPfh;
 *
 * Public: No
 */

params ["_unit"];

private _pfh = [{
    params ["_args", "_handle"];
    _args params ["_unit"];

    if (
        GVAR(allowPaceCountBeads) || 
        {!(alive _unit)} || 
        {!(isNull objectParent _unit)} 
    ) exitWith {
        _unit setVariable [QGVAR(pfh), -1];
        [_handle] call CBA_fnc_removePerFrameHandler;
    };

    private _lastPos = _unit getVariable [QGVAR(lastPos), []];
    private _distanceTraveled = _unit getVariable [QGVAR(distanceTraveled), 0];
    private _overallDistanceTraveled = _unit getVariable [QGVAR(overallDistanceTraveled), 0];
    private _triggerDistance = _unit getVariable [QGVAR(triggerDistance), (random 10) + 95];
    private _pos = getPos _unit;

    if !(_lastPos isEqualTo [] && {!(_lastPos isEqualTo _pos)}) then {
        private _distance = _lastPos distance2D _pos;

        _distanceTraveled = _distanceTraveled + _distance;
        if (_distanceTraveled >= _triggerDistance) then {
            _overallDistanceTraveled = _overallDistanceTraveled + 1;
            _distanceTraveled = 0;

            _unit setVariable [QGVAR(overallDistanceTraveled), _overallDistanceTraveled];
            _unit setVariable [QGVAR(triggerDistance), (random 10) + 95];
        };
    };

    _unit setVariable [QGVAR(lastPos), _pos];
    _unit setVariable [QGVAR(distanceTraveled), _distanceTraveled];

    if (GVAR(constantlyShow)) then {
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
    };

}, 1, [_unit]] call CBA_fnc_addPerFrameHandler;

_unit setVariable [QGVAR(pfh), _pfh];
