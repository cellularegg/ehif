/*
	File: fn_seizePlayerWeaponAction.sqf
	Author: Skalicon
	Modified by: cat24max, Daniel Larusso, Game Timer
	
	Description:
	Removes the players weapons client side
*/
private["_blacklist","_primary","_handgun","_uniform","_vest"];

_blacklist = [1] call life_fnc_seizeCfg;


[] call life_fnc_saveGear;

_itemArray = life_gear;
if(count _itemArray == 0) exitWith {
	[[52, player, format["%1 hat keine Waffen bei sich.", name cursorTarget]],"TON_fnc_logIt",false,false] spawn life_fnc_MP;
};

_uniform = [_itemArray,0,"",[""]] call BIS_fnc_param;
_vest = [_itemArray,1,"",[""]] call BIS_fnc_param;
_prim = [_itemArray,6,"",[""]] call BIS_fnc_param;
_seco = [_itemArray,7,"",[""]] call BIS_fnc_param;

if(_prim in _blacklist) then { player removeWeapon _prim};
if(_seco in _blacklist) then { player removeWeapon _seco};

[] call life_fnc_saveGear;

titleText["Ihre Waffen und Magazine wurden beschlagnahmt.","PLAIN"];