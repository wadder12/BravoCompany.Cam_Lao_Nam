/*
    Needed Mods:
    - S.O.G. Prairie Fire CDLC

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "O_NVA_KHK_O";
opfor_squad_leader = "O_NVA_KHK_SL";
opfor_team_leader = "O_NVA_KHK_TL", "O_NVA_KHK_TL2";
opfor_sentry = "O_NVA_KHK_RFL_SKS";
opfor_rifleman = "O_NVA_KHK_RFL_AK";
opfor_rpg = "O_NVA_KHK_AT";
opfor_grenadier = "O_NVA_KHK_GL";
opfor_machinegunner = "O_NVA_KHK_AR";
opfor_heavygunner = "UK3CB_CW_SOV_O_EARLY_MG";
opfor_marksman = "O_NVA_KHK_DMR";
opfor_sharpshooter = "O_NVA_KHK_R_DMR";
opfor_sniper = "O_NVA_KHK_DMR";
opfor_at = "O_NVA_KHK_AT";
opfor_aa = "UK3CB_CW_SOV_O_EARLY_AA";
opfor_medic = "O_NVA_KHK_CLS";
opfor_engineer = "O_NVA_KHK_ENG";
opfor_paratrooper = "O_NVA_KHK_R_SAP";

// Enemy vehicles used by secondary objectives.
opfor_mrap = "O_NVA_KHK_BTR40U";
opfor_mrap_armed = "O_NVA_KHK_BTR40A";
opfor_transport_helo = "O_NVA_KHK_MI8";
opfor_transport_truck = "O_NVA_KHK_U_C";
opfor_ammobox_transport = "O_NVA_KHK_U_O";
opfor_fuel_truck = "O_NVA_KHK_U_F";
opfor_ammo_truck = "O_NVA_KHK_U_A";
opfor_fuel_container = "B_Slingload_01_Fuel_F";
opfor_ammo_container = "B_Slingload_01_Ammo_F";
opfor_flag = "Flag_CW_SOV_ARMY";

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "O_NVA_KHK_O", 
    "O_NVA_KHK_RTO", 
    "O_NVA_KHK_SL", 
    "O_NVA_KHK_TL", 
    "O_NVA_KHK_AR", 
    "O_NVA_KHK_GL", 
    "O_NVA_KHK_RFL_AK", 
    "O_NVA_KHK_TL2", 
    "O_NVA_KHK_AT", 
    "O_NVA_KHK_AB_RPG", 
    "O_NVA_KHK_SAP", 
    "O_NVA_KHK_RFL_MOSIN", 
    "O_NVA_KHK_RFL_AKS", 
    "O_NVA_KHK_CLS", 
    "O_NVA_KHK_ENG", 
    "O_NVA_KHK_DMR", 
    "O_NVA_KHK_SPT"
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
militia_vehicles = [
    "O_NVA_KHK_BTR40A",
    "UK3CB_CW_SOV_O_EARLY_UAZ_AGS30",
    "UK3CB_CW_SOV_O_EARLY_UAZ_MG"
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
    "O_NVA_KHK_BTR40A",
    "UK3CB_CW_SOV_O_EARLY_UAZ_AGS30",
    "UK3CB_CW_SOV_O_EARLY_UAZ_MG",
    "UK3CB_CW_SOV_O_EARLY_BRDM2"
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "O_NVA_KHK_BTR40A",
    "UK3CB_CW_SOV_O_EARLY_UAZ_MG",
    "UK3CB_CW_SOV_O_EARLY_BRDM2"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "O_NVA_KHK_BTR60",
    "UK3CB_CW_SOV_O_EARLY_BRDM2", 
    "UK3CB_CW_SOV_O_EARLY_VDV_Ural_Zu23", 
    "UK3CB_CW_SOV_O_EARLY_MTLB_ZU23", 
    "UK3CB_CW_SOV_O_EARLY_BMP1",
    "UK3CB_ADM_O_T34"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "O_NVA_KHK_BTR60",
    "UK3CB_CW_SOV_O_EARLY_BRDM2"
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "O_NVA_U_O_WDL",
    "O_NVA_U_C_WDL"
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "O_NVA_M8_WDL",
    "O_NVA_KHK_MI8",
    "UK3CB_CW_SOV_O_EARLY_Mi8AMTSh", 
    "UK3CB_CW_SOV_O_EARLY_Mi8", 
    "UK3CB_CW_SOV_O_EARLY_Mi8AMT"
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "UK3CB_CW_SOV_O_EARLY_MIG21_CAS"
];
