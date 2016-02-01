/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
//if(side _unit == west) exitWith {};
if(player == _unit) exitWith {};
if (side player != west) then{		// everyone but cops need zipties
	if (live_inv_zipties < 1) exitWith {hint "Du hast keine Kabelbinder";};
	live_inv_zipties = life_inv_zipties -1;
	hint "Du hast die Person festgenommen.";
};

if(!isPlayer _unit) exitWith {};
player say3D "cuff";
//Broadcast!

_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
[[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;

