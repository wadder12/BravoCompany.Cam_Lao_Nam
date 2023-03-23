/*
    File: fn_requestZeus.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2020-08-07
    Last Update: 2020-08-07
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Request Curator functionality from server.

    Parameter(s):
        _player - Player requesting Curator functionality [OBJECT, defaults to player]

    Returns:
        Function reached the end [BOOL]
*/

s


// updated for more error handling, - wade

private _player = if (!isNull _this) then {_this select 0} else {player};

if (!isNull _player) then {
    private _limited = if (_this select 1 != 0) then {true} else {false};

    [true, "KPLIB_createZeus", [_player, _limited]] remoteExecCall ["BIS_fnc_callScriptedEventHandler", 2];
} else {
    hint "Error: Invalid player!";
};