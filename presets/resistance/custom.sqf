/*
    Needed Mods:
    - S.O.G. Prairie Fire CDLC

    Optional Mods:
    - None
*/

/* Classnames of the guerilla faction which is friendly or hostile, depending on the civil reputation
Standard loadout of the units will be replaced with a scripted one, which depends on the guerilla strength, after spawn */
KP_liberation_guerilla_units = [
    "CPC_JUN_I_AGUE_soldier_TL", 
    "CPC_JUN_I_AGUE_soldier_MG", 
    "CPC_JUN_I_AGUE_soldier_AT", 
    "CPC_JUN_I_AGUE_soldier_GL", 
    "CPC_JUN_I_AGUE_soldier_2", 
    "CPC_JUN_I_AGUE_soldier_LAT", 
    "CPC_JUN_I_AGUE_soldier_3", 
    "CPC_JUN_I_AGUE_soldier_AAT", 
    "CPC_JUN_I_AGUE_soldier_1"
 ];

// Armed vehicles
KP_liberation_guerilla_vehicles = [
    "CPC_JUN_I_AGUE_uaz_open",
    "CPC_JUN_I_AGUE_uaz",
    "CPC_JUN_I_AGUE_uaz_dshkm",
    "CPC_JUN_I_AGUE_uaz_spg9",
    "CPC_ME_I_REB_gaz66_zu23",
    "CPC_JUN_I_AGUE_ural",
    "CPC_JUN_I_AGUE_ural_open"
];

/* Guerilla Equipment
There are 3 tiers for every category. If the strength of the guerillas will increase, they'll have higher tier equipment. */

/* Weapons - You've to add the weapons as array like
["Weaponclassname","Magazineclassname","magazine amount","optic","tripod"]
You can leave optic and tripod empty with "" */
KP_liberation_guerilla_weapons_1 = [
    ["rhs_weap_akm","rhs_30Rnd_762x39mm",8,"",""],
    ["rhs_weap_akms","rhs_30Rnd_762x39mm",8,"",""],
    ["rhs_weap_kar98k","rhsgref_5Rnd_792x57_kar98k",10,"",""],
    ["rhs_weap_m1garand_sa43","rhsgref_8Rnd_762x63_M2B_M1rifle",10,"",""],
    ["rhs_weap_m3a1","rhs_weap_m3a1",8,"",""],
    ["sp_fwa_fal_l1a1_laminate","sp_fwa_20Rnd_762_FAL_Metric",8,"",""]
];

KP_liberation_guerilla_weapons_2 = [
    ["sp_fwa_ar18","sp_fwa_30Rnd_556_Ar18",8,"",""],
    ["sp_fwa_m2carbine_m3","sp_fwa_30Rnd_30Carbine_m1_Ball",8,"",""],
    ["sp_fwa_ar15_602","sp_fwa_30Rnd_556_Armalite_Ball",8,"sp_fwa_scope_ar_colt3x20",""],
    ["sp_fwa_stg44","sp_fwa_30Rnd_792x33_STG44",8,"",""],
    ["sp_fwa_mas_49_56","sp_fwa_10rnd_75_mas49",8,"",""],
    ["sp_fwa_m14","sp_fwa_20Rnd_762_M14",8,"",""],
    ["sp_fwa_629_xm177e2","sp_fwa_30Rnd_556_Armalite",8,"",""]
];

KP_liberation_guerilla_weapons_3 = [
    ["sp_fwa_ar15_602","sp_fwa_30Rnd_556_Armalite_Ball",8,"sp_fwa_scope_ar_colt4x20",""],
    ["rhs_weap_ak74","rhs_30Rnd_545x39_7N6M_AK",6,"",""],
    ["sp_fwa_m21_early","sp_fwa_20Rnd_762_M14",6,"sp_fwa_acc_m21_art1_redfield_scope",""],
    ["sp_fwa_falo_factory_50_41_bipod","sp_fwa_30Rnd_Straight_762_FAL_Metric",6,"sp_fwa_scope_fal_fn_factory",""],
    ["sp_fwa_m60","sp_fwa_100Rnd_762_mag",4,"",""],
    ["rhs_weap_m79","rhs_mag_M441_HE",15,"",""]
];

// Uniforms
KP_liberation_guerilla_uniforms_1 = [
    "rhsgref_uniform_olive",
    "rhsgref_uniform_tigerstripe",
    "U_Simc_bdu_eto_mc_low",
    "U_Simc_BDU_RDF_erdl_trop"
];

KP_liberation_guerilla_uniforms_2 = [
    "U_Simc_TCU_mk3_cute",
    "U_Simc_tcu_mk3_4id",
    "U_Simc_tcu_mk3_macv",
    "U_Simc_OG107_mk1_tuck_MC",
    "U_Simc_TCU_mk3_poplijn_mc",
    "U_Simc_TCU_mk2_zwart"
];

KP_liberation_guerilla_uniforms_3 = [
    "U_Simc_SF_TS",
    "U_Simc_arvn_ERDL_invis_tuck",
    "U_Simc_arvn_DerFrosch"
];

// Vests
KP_liberation_guerilla_vests_1 = [
    "rhsgref_chicom",
    "rhsgref_chestrig"
];

KP_liberation_guerilla_vests_2 = [
    "rhs_chicom_khk",
    "V_Simc_mk56",
    "V_Simc_61_56_bandoleer",
    "V_Simc_61_60"
];

KP_liberation_guerilla_vests_3 = [
    "V_Simc_flak_55_M61_laat_bandoleer",
    "V_Simc_61_60_2",
    "V_Simc_56_M43_bandoleer",
    "V_Simc_flak_55_M61_open_bandoleer",
    "V_Simc_mk56_alt"
];

// Headgear
KP_liberation_guerilla_headgear_1 = [
    "CPC_JUN_fieldcap",
    "usm_bdu_boonie_blk",
    "usm_bdu_8point_tgrstp",
    "usm_headwrap_blk",
    "usm_headwrap_tgrstp",
    "usm_bdu_boonie_odg",
    "UK3CB_MDF_B_H_M1_ALT",
    "UK3CB_H_Woolhat_CBR"
];

KP_liberation_guerilla_headgear_2 = [
    "H_Simc_Boon_zwart_7",
    "H_Simc_jaza_pith_netz",
    "H_Simc_nasi",
    "vietsh_Head",
    "usm_bdu_boonie_blk",
    "H_Booniehat_tna_F"
];

KP_liberation_guerilla_headgear_3 = [
    "H_Simc_SVN_M1C_ben_Op",
    "H_Simc_MC_M1_muggen",
    "H_Simc_SVN_M1_op",
    "H_Simc_SVN_M1C_ifak_Op",
    "H_Simc_SVN_M1C_net_Op"
];

// Facegear. Applies for tier 2 and 3.
KP_liberation_guerilla_facegear = [
    "",
    "",
    "",
    "rhssaf_veil_Green",
    "G_Anduk_2",
    "G_Anduk_1"
];
