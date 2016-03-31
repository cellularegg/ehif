/*
	File: fn_seizePlayerWeaponAction.sqf
	Author: Skalicon
	Modified by: cat24max, Daniel Larusso, Game Timer
	
	Description:
	Removes the players weapons client side
*/
private["_blacklist","_prim","_seco","_vest"];

_blacklist = [1] call life_fnc_seizeCfg;


[] call life_fnc_saveGear;

_itemArray = life_gear;
if(count _itemArray == 0) exitWith {
	[[52, player, format["%1 hat keine Waffen bei sich.", name cursorTarget]],"TON_fnc_logIt",false,false] spawn life_fnc_MP;
};

_prim = primaryWeapon player;
_seco = secondaryWeapon player;
_vest = vest player;

player removeWeapon _prim;
player removeWeapon _seco;
if (_vest == "V_HarnessOGL_gry") then {removeVest player;};

[] call life_fnc_saveGear;

titleText["Ihre Waffen und Magazine wurden beschlagnahmt.","PLAIN"];