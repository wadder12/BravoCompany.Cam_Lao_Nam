/*
This script sets up a custom ACE Arsenal for players based on their role in a mission. 
The arsenal is initialized with specific weapons, magazines, items, and backpacks depending on the player's role, such as Squad Leader (SL), Rifleman AT (AT), Medic (Corpsman), and others. 
The custom arsenal is created when a specified box object (B_supplyCrate_F) is spawned or initialized in the mission.
*/



private _boxname = "B_supplyCrate_F";
//systemChat format["%1",_boxname];

[_boxname, "init",
    { 
        private _box = (_this select 0);
		[{
			private _box = (_this select 0);
			clearMagazineCargoGlobal _box;
			clearItemCargoGlobal _box;
			clearBackpackCargoGlobal _box;
			clearWeaponCargoGlobal _box;

			// Initially remove any existing virtual boxes
			[_box, false] call ace_arsenal_fnc_removeBox;

			_box setVariable ["ace_cargo_noRename", true];
			private _myArsenal = [];
			private _myRole = str(roleDescription player);
			switch ( 1 ) do {
				case (_myRole find "SL"): {_myArsenal = flatten(BC_Rifle_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + GRLIB_arsenal_backpacks + BC_leader_arsenal_backpacks + BC_leader_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "RTO"): {_myArsenal = flatten(BC_GL_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + GRLIB_arsenal_backpacks + BC_leader_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "AT"): {_myArsenal = flatten(BC_AT_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + GRLIB_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "AA"): {_myArsenal = flatten(BC_AA_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + GRLIB_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "Corpsman"): {_myArsenal = flatten(BC_Rifle_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + BC_Medic_magazines + GRLIB_arsenal_items + BC_medic_arsenal_items + GRLIB_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "Demoman"): {_myArsenal = flatten(BC_Rifle_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + BC_Demo_arsenal_magazines + GRLIB_arsenal_items + BC_engi_arsenal_items + GRLIB_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "Scout"): {_myArsenal = flatten(BC_Marksmen_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + GRLIB_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "MG"): {_myArsenal = flatten(BC_MG_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + GRLIB_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "Sniper"): {_myArsenal = flatten(BC_Sniper_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + BC_sniper_arsenal_items + GRLIB_arsenal_backpacks + BC_leader_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "Spotter"): {_myArsenal = flatten(BC_Sniper_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + BC_sniper_arsenal_items + GRLIB_arsenal_backpacks + BC_leader_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "Anvil"): {_myArsenal = flatten(BC_Rifle_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + BC_engi_arsenal_items + GRLIB_arsenal_backpacks + BC_leader_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "Pilot"): {_myArsenal = flatten(BC_Pilot_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + BC_engi_arsenal_items + GRLIB_arsenal_backpacks + BC_leader_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "Savage"): {_myArsenal = flatten(BC_Rifle_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + BC_engi_arsenal_items + GRLIB_arsenal_backpacks + BC_leader_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "Dozer"): {_myArsenal = flatten(BC_Rifle_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + BC_Demo_arsenal_magazines + GRLIB_arsenal_items + BC_engi_arsenal_items + GRLIB_arsenal_backpacks + BC_leader_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "Spartan 6"): {_myArsenal = flatten(BC_Rifle_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + GRLIB_arsenal_backpacks + BC_leader_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "Spartan 7"): {_myArsenal = flatten(BC_Rifle_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + GRLIB_arsenal_backpacks + BC_leader_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				case (_myRole find "Spartan 8"): {_myArsenal = flatten(BC_Rifle_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + GRLIB_arsenal_backpacks  + BC_leader_arsenal_backpacks+ KP_liberation_allowed_items_extension) ;};
				case (_myRole find "Spartan 9"): {_myArsenal = flatten(BC_Rifle_arsenal_weapons + BC_Secondary_arsenal_weapons + GRLIB_arsenal_magazines + BC_Medic_magazines + GRLIB_arsenal_items + BC_medic_arsenal_items + GRLIB_arsenal_backpacks + BC_leader_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
				default {_myArsenal = flatten(GRLIB_default_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + GRLIB_arsenal_backpacks + BC_leader_arsenal_backpacks + KP_liberation_allowed_items_extension) ;};
			};

			//private _myArsenal = flatten(GRLIB_arsenal_weapons + GRLIB_arsenal_magazines + GRLIB_arsenal_items + GRLIB_arsenal_backpacks + KP_liberation_allowed_items_extension);

			// Do the damn thing
			[_box, _myArsenal, false] call ace_arsenal_fnc_initBox;

			//systemChat format["Role Arsenal: %1 - Items: %2", _box, count _myArsenal];
		}, [_box], 5] call CBA_fnc_waitAndExecute;

    },
    true,
    [],
    true
    ] call CBA_fnc_addClassEventHandler;