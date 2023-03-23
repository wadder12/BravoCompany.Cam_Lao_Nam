/* changes by wade
Changes to the original code:

1. Encapsulated the code within a function named "KPLIB_fnc_handleRespawn" for better organization and easier management.

2. Replaced the direct call to KPLIB_fnc_requestZeus with a remoteExec call to ensure proper functionality across clients and the server.

Note: Make sure to initialize required variables like GRLIB_respawn_loadout and KPLIB_initServer in the proper location (e.g., in the mission's init.sqf).
*/




KPLIB_fnc_handleRespawn = {

waitUntil {!isNil "KPLIB_initServer"};

params ["_newUnit", "_oldUnit"];

if (isNil "GRLIB_respawn_loadout") then {
    removeAllWeapons player;
    removeAllItems player;
    removeAllAssignedItems player;
    removeVest player;
    removeBackpack player;
    removeHeadgear player;
    removeGoggles player;
    if (KP_liberation_arsenal == 1) then {
        removeUniform player;
        player addUniform "UK3CB_CW_US_B_Early_U_SF_CombatUniform_01_ERDL";
        player linkItem "ItemMap";
        player linkItem "ItemCompass";
        player linkItem "ItemWatch";
        player linkItem "TFAR_anprc152";
        player linkItem "UK3CB_CW_US_B_EARLY_H_BoonieHat_ERDL_01";
        player addWeapon "CUP_arifle_M16A1";
        player addWeaponItem ["CUP_arifle_M16A1","rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red"];
    };
} else {
    sleep 4;
    [player, GRLIB_respawn_loadout] call KPLIB_fnc_setLoadout;
};

[] call KPLIB_fnc_addActionsPlayer;

// Support Module handling
if ([
    false,
    player isEqualTo ([] call KPLIB_fnc_getCommander) || (getPlayerUID player) in KP_liberation_suppMod_whitelist,
    true
] select KP_liberation_suppMod) then {
    waitUntil {!isNil "KPLIB_suppMod_req" && !isNil "KPLIB_suppMod_arty" && time > 5};

    // Remove link to corpse, if respawned
    if (!isNull _oldUnit) then {
        KPLIB_suppMod_req synchronizeObjectsRemove [_oldUnit];
        _oldUnit synchronizeObjectsRemove [KPLIB_suppMod_req];
    };

    // Link player to support modules
    [player, KPLIB_suppMod_req, KPLIB_suppMod_arty] call BIS_fnc_addSupportLink;
    player setCustomAimCoef 0.35;

    // Init modules, if newly joined and not client host
    if (isNull _oldUnit && !isServer) then {
        [KPLIB_suppMod_req] call BIS_fnc_moduleSupportsInitRequester;
        [KPLIB_suppMod_arty] call BIS_fnc_moduleSupportsInitProvider;
    };
};

if (player == ([] call KPLIB_fnc_getCommander)) then {
        [] remoteExec ["KPLIB_fnc_requestZeus", 2];
    };

// Cam Lao Nam SOGPF traits
if (worldName == "Cam_Lao_Nam") then {
    player setUnitTrait ["camouflageCoef", 0.6];
    player setUnitTrait ["audibleCoef", 0.3];
    player setUnitTrait ["loadCoef", 0.5];
};
};