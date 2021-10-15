#include "script_component.hpp"
#include "..\UI\idcmacros.hpp"

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
        !GVAR(allowPaceCountBeads) || 
        {!(alive _unit)} || 
        {!(isNull objectParent _unit)} 
    ) exitWith {
        _unit setVariable [QGVAR(pfh), -1];
        [_handle] call CBA_fnc_removePerFrameHandler;
    };

    private _distanceChanged = false;
    private _lastPos = _unit getVariable [QGVAR(lastPos), []];
    private _distanceTraveled = _unit getVariable [QGVAR(distanceTraveled), 0];
    private _overallDistanceTraveled = _unit getVariable [QGVAR(overallDistanceTraveled), 0];
    private _triggerDistance = _unit getVariable [QGVAR(triggerDistance), (random 10) + 95];
    private _pos = getPos _unit;

    if !(_lastPos isEqualTo [] && {!(_lastPos isEqualTo _pos)}) then {
        private _distance = _lastPos distance2D _pos;

        _distanceTraveled = _distanceTraveled + _distance;
        if (_distanceTraveled >= _triggerDistance) then {
            _distanceChanged = true;
            _overallDistanceTraveled = _overallDistanceTraveled + 1;
            _distanceTraveled = 0;

            _unit setVariable [QGVAR(overallDistanceTraveled), _overallDistanceTraveled];
            _unit setVariable [QGVAR(triggerDistance), (random 10) + 95];
        };
    };

    _unit setVariable [QGVAR(lastPos), _pos];
    _unit setVariable [QGVAR(distanceTraveled), _distanceTraveled];

    if (GVAR(constantlyShow)) then {
        private _backgroundDisplay = uiNamespace getVariable ["grad_paceCountBeads", displayNull];

        private _topCtrl = _backgroundDisplay displayCtrl IDC_TOP_BEADS;
        private _bottomCtrl = _backgroundDisplay displayCtrl IDC_BOTTOM_BEADS;

        private _overallDistanceTraveled = ace_player getVariable [QGVAR(overallDistanceTraveled), 0];
        private _top = floor(_overallDistanceTraveled/10);
        private _bottom = floor(_overallDistanceTraveled mod 10);

        if (_top > 4) then {
            _top = 4;
            _bottom = 9;
        };

        _topCtrl ctrlSetText format[QPATHTOF(UI\top_%1.paa), _top];
        _bottomCtrl ctrlSetText format[QPATHTOF(UI\bottom_%1.paa), _bottom];
    } else {
        if (GVAR(showOnChange) && {_distanceChanged}) then {
            [] call FUNC(showBeads);
        };
    };
}, 1, [_unit]] call CBA_fnc_addPerFrameHandler;

_unit setVariable [QGVAR(pfh), _pfh];
