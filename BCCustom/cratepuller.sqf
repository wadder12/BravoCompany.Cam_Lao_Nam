/* changes by wade
Changes in updated code:

Added "ACE_MainActions" for submenus.
Changed "[]" to "{true}" in action condition.
Removed "ace_dragging_fnc_startCarry" call.
Added "ace_cargo_noRename" to prevent renaming crates.

*/






LOGI_POINT_CLASSNAME = "Base_WarfareBContructionSite"; // Change this to the classname of your logistics point
SPECIAL_CRATE_CLASSNAME = "Box_NATO_Equip_F";
MEDICAL_CRATE_CLASSNAME = "Box_NATO_Equip_F";
GENERAL_CRATE_CLASSNAME = "Box_NATO_Equip_F";

// ACE Root Menu
[LOGI_POINT_CLASSNAME, 0, ["ACE_MainActions"], ["supplyRootMenu", "Supply Crates", "", {}, {true}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToClass;

// ACE Sub Menu - AT Resupply
[LOGI_POINT_CLASSNAME , 0, ["ACE_MainActions", "supplyRootMenu"], [
	"at_resupply",
	"AT Resupply",
	"",
	{
		private "_crateOrWeapon";
		_crateOrWeapon = createVehicle [SPECIAL_CRATE_CLASSNAME, [player, 1, 5, 2, 0, 30, 0] call BIS_fnc_findSafePos, [], 0, "CAN_COLLIDE"];
		clearItemCargoGlobal _crateOrWeapon;
		clearWeaponCargoGlobal _crateOrWeapon;
		clearMagazineCargoGlobal _crateOrWeapon;
		clearBackpackCargoGlobal _crateOrWeapon;

		{
			_crateOrWeapon addWeaponCargoGlobal _x;
		} forEach [
			// Add weapon classnames here
		];

		{
			_crateOrWeapon addMagazineCargoGlobal _x;
		} forEach [
			// Add magazine classnames here
		];

		{
			_crateOrWeapon addItemCargoGlobal _x;
		} forEach [
			// Add item classnames here
		];

		[_crateOrWeapon, ["ACE_maxWeightCarry", 10000]] remoteExec ["setVariable"];  // all players
		[_crateOrWeapon, ["ACE_maxWeightDrag", 10000]] remoteExec ["setVariable"];   // all players
		[_crateOrWeapon, ["ace_cargo_noRename", true]] remoteExec ["setVariable"];
		[_crateOrWeapon, true, [0, 2, 1], 0, true] remoteExec ["ace_dragging_fnc_setCarryable"];  // all players
		[_crateOrWeapon, true, [0, 2, 1], 0, true] remoteExec ["ace_dragging_fnc_setDraggable"];
	}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToClass;

[LOGI_POINT_CLASSNAME , 0, ["ACE_MainActions", "supplyRootMenu"], [
	"gen_resupply",
	"General Resupply",
	"",
	{
		private "_crateOrWeapon";
		_crateOrWeapon = createVehicle [GENERAL_CRATE_CLASSNAME, [player, 1, 5, 2, 0, 30, 0] call BIS_fnc_findSafePos, [], 0, "CAN_COLLIDE"];
		clearItemCargoGlobal _crateOrWeapon;
		clearWeaponCargoGlobal _crateOrWeapon;
		clearMagazineCargoGlobal _crateOrWeapon;
		clearBackpackCargoGlobal _crateOrWeapon;

		{
			_crateOrWeapon addWeaponCargoGlobal _x;
		} forEach [
			// Add weapon classnames here
		];

		{
			_crateOrWeapon addMag_crateOrWeapon addMagazineCargoGlobal _x;
		} forEach [
			// Add magazine classnames here
		];

		{
			_crateOrWeapon addItemCargoGlobal _x;
		} forEach [
			// Add item classnames here
		];

		[_crateOrWeapon, ["ACE_maxWeightCarry", 10000]] remoteExec ["setVariable"];  // all players
		[_crateOrWeapon, ["ACE_maxWeightDrag", 10000]] remoteExec ["setVariable"];   // all players
		[_crateOrWeapon, ["ace_cargo_noRename", true]] remoteExec ["setVariable"];
		[_crateOrWeapon, true, [0, 2, 1], 0, true] remoteExec ["ace_dragging_fnc_setCarryable"];  // all players
		[_crateOrWeapon, true, [0, 2, 1], 0, true] remoteExec ["ace_dragging_fnc_setDraggable"];
		[_crateOrWeapon, true, [0, 2, 1], 0, true] call ace_dragging_fnc_setCarryable;
		[_crateOrWeapon, true, [0, 2, 1], 0, true] call ace_dragging_fnc_setDraggable;
		[player, _crateOrWeapon] call ace_dragging_fnc_startCarry; // player only - start carry (if light enough)
	}, {true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToClass;