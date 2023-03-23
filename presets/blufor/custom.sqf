/*
    Needed Mods:
    - S.O.G. Prairie Fire CDLC

    Optional Mods:
    - None
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
FOB_typename = "Land_Cargo_HQ_V1_F";                                    // This is the main FOB HQ building.
FOB_box_typename = "B_Slingload_01_Cargo_F";                            // This is the FOB as a container.
FOB_truck_typename = "UK3CB_CW_US_B_LATE_M939_Reammo";                                     // This is the FOB as a vehicle.
Arsenal_typename = "B_supplyCrate_F";                                   // This is the virtual arsenal as portable supply crates.
Respawn_truck_typename = "UK3CB_CW_US_B_EARLY_M113_AMB";                      // This is the mobile respawn (and medical) truck.
huron_typename = "UK3CB_CW_US_B_EARLY_CH47";                                            // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
crewman_classname = "UK3CB_CW_US_B_EARLY_CREW";                                    // This defines the crew for vehicles.
pilot_classname = "UK3CB_CW_US_B_EARLY_HELI_PILOT";                                     // This defines the pilot for helicopters.
KP_liberation_little_bird_classname = "RHS_MELB_MH6M";                       // These are the little birds which spawn on the Freedom or at Chimera base.
KP_liberation_boat_classname = "B_Boat_Transport_01_F";                            // These are the boats which spawn at the stern of the Freedom.
KP_liberation_truck_classname = "UK3CB_CW_US_B_EARLY_M939_Open";                            // These are the trucks which are used in the logistic convoy system.
KP_liberation_small_storage_building = "ContainmentArea_02_sand_F";     // A small storage area for resources.
KP_liberation_large_storage_building = "ContainmentArea_01_sand_F";     // A large storage area for resources.
KP_liberation_recycle_building = "Land_CarService_F";                   // The building defined to unlock FOB recycling functionality.
KP_liberation_air_vehicle_building = "Land_Radar_Small_F";              // The building defined to unlock FOB air vehicle functionality.
KP_liberation_heli_slot_building = "Land_HelipadSquare_F";              // The helipad used to increase the GLOBAL rotary-wing cap.
KP_liberation_plane_slot_building = "Land_TentHangar_V1_F";             // The hangar used to increase the GLOBAL fixed-wing cap.
KP_liberation_supply_crate = "CargoNet_01_box_F";         // This defines the supply crates, as in resources.
KP_liberation_ammo_crate = "B_CargoNet_01_ammo_F";                    // This defines the ammunition crates.
KP_liberation_fuel_crate = "CargoNet_01_barrels_F";                     // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
infantry_units = [
    //["UK3CB_CW_US_B_LATE_AA",15,0,0]                                        // Rifleman (Light)
    /*["vn_b_men_army_15",20,0,0],                                        // Rifleman
    ["vn_b_men_army_12",30,0,0],                                        // Rifleman (AT)
    ["vn_b_men_army_07",25,0,0],                                        // Grenadier
    ["vn_b_men_army_06",25,0,0],                                        // Autorifleman
    ["vn_b_men_army_10",30,0,0],                                        // Marksman
    ["vn_b_men_army_11",40,0,0],                                        // Sharpshooter
    ["vn_b_men_army_12",50,10,0],                                       // AT Specialist
    ["vn_b_men_army_03",30,0,0],                                        // Combat Life Saver
    ["vn_b_men_army_04",30,0,0],                                        // Engineer
    ["vn_b_men_army_05",30,0,0],                                        // Explosives Specialist
    ["vn_b_men_sf_04",20,0,0],                                          // Recon Scout
    ["vn_b_men_sf_21",30,0,0],                                          // Recon Marksman
    ["vn_b_men_sf_02",30,0,0],                                          // Recon Paramedic
    ["vn_b_men_sf_03",30,0,0],                                          // Recon Demolition Expert
    ["vn_b_men_army_13",10,0,0],                                        // Crewman
    ["vn_b_men_army_16",20,0,0],                                        // Para Trooper
    ["vn_b_men_aircrew_06",10,0,0],                                     // Helicopter Crew
    ["vn_b_men_aircrew_05",10,0,0],                                     // Helicopter Pilot
    ["vn_b_men_jetpilot_01",10,0,0]   */                                 // Pilot
];

light_vehicles = [
    ["UK3CB_CW_US_B_EARLY_M151_Jeep_Closed",50,0,50],                                   // M151A1 Transport
    ["UK3CB_CW_US_B_EARLY_M151_Jeep_HMG",50,50,50],                               // M151A1 M2
    ["UK3CB_CW_US_B_EARLY_M151_Jeep_Open",50,0,50],                               // M151A1 Patrol
    ["UK3CB_CW_US_B_EARLY_M151_Jeep_TOW",100,50,50],                               // M151A1 Armoured
    ["UK3CB_CW_US_B_EARLY_M939_Guntruck",100,100,50],                               // M939 Gun Truck (1x M2HB)
    ["UK3CB_CW_US_B_EARLY_M939",50,0,50],                                   // M939 Transport (Covered)
    ["UK3CB_CW_US_B_EARLY_M939_Open",50,0,50],                                              // M939 Open
    ["UK3CB_CW_US_B_EARLY_M113_M2",200,100,100], 
    ["UK3CB_CW_US_B_EARLY_M113_M240",100,50,100], 
    ["UK3CB_CW_US_B_EARLY_M113_MK19",100,200,100], 
    ["UK3CB_CW_US_B_EARLY_M113_unarmed",100,0,100], 
    ["UK3CB_CW_US_B_EARLY_M113_AMB",200,0,100], 
    ["UK3CB_CW_US_B_EARLY_AAV",400,400,400]
];

heavy_vehicles = [
    ["UK3CB_CW_US_B_EARLY_M60a3",400,400,300],                                
    ["UK3CB_CW_US_B_EARLY_M109",300,400,300]
];

air_vehicles = [
    ["UK3CB_CW_US_B_EARLY_UH1H",200,50,150],                                    // UH-1C Iroquois Slick (Army)
    ["UK3CB_CW_US_B_EARLY_UH1H_M240",500,400,200],                              // UH-1C Iroquois Hog (Army)
    ["UK3CB_CW_US_B_EARLY_AH1Z",500,600,200],                                   // AH-1G Cobra (APERS)
    ["UK3CB_CW_US_B_EARLY_UH1H_MED",250,0,150],                                 // UH-1D Iroquois (Dust Off) MedEvac
    ["UK3CB_CW_US_B_EARLY_CH47",250,0,150], 
    ["UK3CB_CW_US_B_EARLY_CH47_Cargo",350,0,150], 
    ["UK3CB_CW_US_B_EARLY_A10",1250,1250,450]                                  
];

static_vehicles = [
    ["UK3CB_CW_US_B_Early_M240_High",25,25,0],                              
    ["UK3CB_CW_US_B_Early_M240_Low",25,25,0],                               
    ["UK3CB_CW_US_B_Early_M2_TriPod",25,25,0],                          
    ["UK3CB_CW_US_B_Early_M2_MiniTripod",25,25,0],                           
    ["UK3CB_CW_US_B_Early_Searchlight",25,0,0],                               
    ["UK3CB_CW_US_B_Early_M240_nest",50,50,0],                                                       
    ["UK3CB_CW_US_B_Early_MK19_TriPod",50,100,0],                            
    ["UK3CB_CW_US_B_Early_M252",50,100,0],                           
    ["UK3CB_CW_US_B_Early_Stinger_AA_pod",50,50,0],                                  
    ["UK3CB_CW_US_B_Early_M119",100,100,0],                                 
    ["UK3CB_CW_US_B_Early_TOW_TriPod",100,100,0]                                        
];

buildings = [
    ["Flag_RedCrystal_F",0,0,0],
    ["Flag_White_F",0,0,0],
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0]
];

support_vehicles = [
    [Arsenal_typename,100,200,0],
    [FOB_box_typename,300,500,0],
    [FOB_truck_typename,300,500,100],
    [KP_liberation_small_storage_building,0,0,0],
    [KP_liberation_large_storage_building,0,0,0],
    [KP_liberation_recycle_building,250,0,0],
    [KP_liberation_air_vehicle_building,1000,0,0],
    [KP_liberation_heli_slot_building,250,0,0],
    [KP_liberation_plane_slot_building,500,0,0],
    ["UK3CB_CW_US_B_EARLY_M939_Repair",150,0,100],                               // M185 Repair
    ["UK3CB_CW_US_B_EARLY_M939_Fuel",100,0,300],                                // M49 Fuel
    ["UK3CB_CW_US_B_EARLY_M939_Reammo",100,200,100],                               // M54 Ammo
    ["B_Slingload_01_Repair_F",250,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",50,0,200],                                 // Huron Fuel
    ["B_Slingload_01_Ammo_F",50,200,0],                                  // Huron Ammo
     ["Base_WarfareBContructionSite",50,200,0]

];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
blufor_squad_inf_light = [
    "UK3CB_CW_US_B_LATE_AA",
    "UK3CB_CW_US_B_LATE_AA"
    /*"vn_b_men_army_15", // Rifleman
    "vn_b_men_army_15", // Rifleman
    "vn_b_men_army_12", // Rifleman (AT)
    "vn_b_men_army_07", // Grenadier
    "vn_b_men_army_06", // Autorifleman
    "vn_b_men_army_06", // Autorifleman
    "vn_b_men_army_10", // Marksman
    "vn_b_men_army_03", // Combat Life Saver
    "vn_b_men_army_04" // Engineer*/
];

// Heavy infantry squad.
blufor_squad_inf = [
    "UK3CB_CW_US_B_LATE_AA",
    "UK3CB_CW_US_B_LATE_AA"
    /*"vn_b_men_army_12", // Rifleman (AT)
    "vn_b_men_army_12", // Rifleman (AT)
    "vn_b_men_army_07", // Grenadier
    "vn_b_men_army_06", // Autorifleman
    "vn_b_men_army_06", // Autorifleman
    "vn_b_men_army_06", // Autorifleman
    "vn_b_men_army_11", // Sharpshooter
    "vn_b_men_army_03", // Combat Life Saver
    "vn_b_men_army_04"  // Engineer*/
];

// AT specialists squad.
blufor_squad_at = [
    "UK3CB_CW_US_B_LATE_AA",
    "UK3CB_CW_US_B_LATE_AA"
    /*"vn_b_men_army_15", // Rifleman
    "vn_b_men_army_15", // Rifleman
    "vn_b_men_army_12", // Rifleman (AT)
    "vn_b_men_army_12", // Rifleman (AT)
    "vn_b_men_army_12", // Rifleman (AT)
    "vn_b_men_army_03",
    "vn_b_men_army_15" // Rifleman*/
];

// AA specialists squad. Never gonna be available in VN <--- stimme ich zu, könnte also ganz weg (weiß nicht, wie das dann gelöst wird)
blufor_squad_aa = [
    "UK3CB_CW_US_B_LATE_AA",
    "UK3CB_CW_US_B_LATE_AA"
    /*"vn_b_men_army_15", // Rifleman
    "vn_b_men_army_15", // Rifleman
    "B_soldier_AA_F", // AA Specialist (Won't be any for VN)
    "B_soldier_AA_F", // AA Specialist (Won't be any for VN)
    "B_soldier_AA_F", // AA Specialist (Won't be any for VN)
    "vn_b_men_army_03", // Combat Life Saver
    "vn_b_men_army_15" // Rifleman*/
];

// Force recon squad.
blufor_squad_recon = [
   "UK3CB_CW_US_B_LATE_AA",
    "UK3CB_CW_US_B_LATE_AA"
    /*"vn_b_men_sf_04", // Recon Scout
    "vn_b_men_sf_04", // Recon Scout
    "vn_b_men_sf_13", // Recon Scout (AT)
    "vn_b_men_sf_21", // Recon Marksman
    "vn_b_men_sf_21", // Recon Marksman
    "vn_b_men_sf_14",
    "vn_b_men_sf_14",
    "vn_b_men_sf_02", // Recon Paramedic
    "vn_b_men_sf_03" // Recon Demolition Expert*/
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
blufor_squad_para = [
    "UK3CB_CW_US_B_LATE_AA",
    "UK3CB_CW_US_B_LATE_AA" // Para Trooper
    /*"vn_b_men_army_16", // Para Trooper
    "vn_b_men_army_16", // Para Trooper
    "vn_b_men_army_16", // Para Trooper
    "vn_b_men_army_16", // Para Trooper
    "vn_b_men_army_16", // Para Trooper
    "vn_b_men_army_16", // Para Trooper
    "vn_b_men_army_16", // Para Trooper
    "vn_b_men_army_16", // Para Trooper
    "vn_b_men_army_16" // Para Trooper*/
];

/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
elite_vehicles = [
    "UK3CB_CW_US_B_EARLY_AAV",
    "UK3CB_CW_US_B_EARLY_M60a3",
    "UK3CB_CW_US_B_EARLY_M109",
    "UK3CB_CW_US_B_EARLY_AH1Z",
    "UK3CB_CW_US_B_EARLY_CH47_Cargo",
    "UK3CB_CW_US_B_EARLY_A10"
];
