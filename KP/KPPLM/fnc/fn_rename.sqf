/*
    KPPLM_fnc_rename

    File: fn_rename.sqf
    Author: Wyqer - https://github.com/KillahPotatoes
    Date: 2018-08-05
    Last Update: 2018-11-10
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Set the new name for the group which is selected in the group list.

    Parameter(s):
    NONE

    Returns:
        Function reached the end [BOOL]
*/



// this code change is now where it ask if the leader wants to name change first and error handling is now in - wade





// Dialog controls
private _dialog = findDisplay 75803;
private _ctrlGroupList = _dialog displayCtrl 758038;
private _ctrlEditName = _dialog displayCtrl 758039;
private _grp = KPPLM_groups select (lbCurSel _ctrlGroupList);

// Only allow change, when player is leader
if (leader _grp == player) then {
    // Ask for confirmation before changing the name
    if (confirm "Are you sure you want to change the group name?" == 1) then {
        private _newName = ctrlText _ctrlEditName;
        // Check that the new name is not empty
        if (count _newName > 0) then {
            _grp setGroupIdGlobal _newName;

            // Refresh Dialog
            closeDialog 0;
            [{!dialog}, {call KPPLM_fnc_openDialog;}] call CBA_fnc_waitUntilAndExecute;
        } else {
            hint localize "STR_KPPLM_EMPTYNAME";
            [{hintSilent "";}, [], 3] call CBA_fnc_waitAndExecute;
        };
    };
} else {
    hint localize "STR_KPPLM_NOTLEADER";
    [{hintSilent "";}, [], 3] call CBA_fnc_waitAndExecute;
};

true
