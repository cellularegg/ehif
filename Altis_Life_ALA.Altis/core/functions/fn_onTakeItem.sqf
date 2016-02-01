/*
	File: fn_onTakeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Blocks the unit from taking something they should not have.
*/
private["_unit","_item"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_container = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_item = [_this,2,"",[""]] call BIS_fnc_param;

if(isNull _unit OR _item == "") exitWith {}; //Bad thingies?

switch(playerSide) do
{
	case west: {if(_item in ["U_B_CombatUniform_mcam","U_Rangemaster","U_BG_Guerilla2_3"]) then {[] spawn life_fnc_uniSet;};};
	case civilian: {};
	case independent: {if(_item in ["U_Rangemaster"]) then {[] spawn life_fnc_uniSet;};
};