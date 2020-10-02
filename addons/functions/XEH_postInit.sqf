#include "script_component.hpp"

if !(hasInterface) exitWith {};
GVAR(uiOpen) = false;

["featureCamera", {
    params ["", "_featureCamera"];

    if (
		_featureCamera isEqualTo "" &&
		{GVAR(allowPaceCountBeads)} &&
		{GVAR(constantlyShow)} &&
		{isNull objectParent player} &&
		{!(player getVariable [QGVAR(pfh), -1] isEqualTo -1)} &&
		{GVAR(uiOpen)}
	) then {
		[] call FUNC(showBeads);
	} else {
		"grad_paceCountBeads" cutText ["", "PLAIN"];
	};
}, true] call CBA_fnc_addPlayerEventHandler;