#include <macro.h>
/*
    File: fn_initZeus.sqf
	Author: John "Paratus" VanderZwet
	Edit: Game Timer
    
	Description:
    Zeus Initialization file.
*/

player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};

[] spawn life_fnc_adminMarkers;

if(__GETC__(life_adminlevel < 3)) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
};

if((getPlayerUID player) in ["76561198062325496","76561197977354833","76561198104146566","76561198068159893","76561198016837339"]) exitWith 
{
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
};