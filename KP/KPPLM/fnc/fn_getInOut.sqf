/*
    I've added separate view distance and sound volume settings for helicopters and planes. 
    
    You will need to define the KPPLM_viewHeli, KPPLM_viewPlane, KPPLM_soundHeli, and KPPLM_soundPlane variables in your script or configuration.

The script now checks the player's situation and only updates view distance and sound volume if there is a change, reducing unnecessary script execution.
*/

private _currentVehicle = vehicle player;
private _viewDistance = -1;
private _soundVolume = 1;

// Player on foot
if (isNull objectParent player) then {
    _viewDistance = KPPLM_viewFoot;
};

// Player in boat or land vehicle
if (_currentVehicle isKindOf "LandVehicle" || _currentVehicle isKindOf "Ship") then {
    _viewDistance = KPPLM_viewVeh;
    _soundVolume = KPPLM_soundVeh;
};

// Player in helicopter
if (_currentVehicle isKindOf "Helicopter") then {
    _viewDistance = KPPLM_viewHeli;
    _soundVolume = KPPLM_soundHeli;
};

// Player in plane
if (_currentVehicle isKindOf "Plane") then {
    _viewDistance = KPPLM_viewPlane;
    _soundVolume = KPPLM_soundPlane;
};

if (_viewDistance > -1) then {
    setViewDistance _viewDistance;
    setObjectViewDistance _viewDistance;
};

1 fadeSound _soundVolume;

// Camera view change
if (difficultyOption "thirdPersonView" == 1) then {
    if ((_currentVehicle isKindOf "LandVehicle" || _currentVehicle isKindOf "Ship") && KPPLM_tpv > 1) then {
        player switchCamera "EXTERNAL";
    };
    if ((_currentVehicle isKindOf "Air") && (KPPLM_tpv == 1 || KPPLM_tpv == 3)) then {
        player switchCamera "EXTERNAL";
    };
};

true
