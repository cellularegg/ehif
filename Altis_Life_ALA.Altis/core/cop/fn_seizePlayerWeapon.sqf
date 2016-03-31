/*
	File: fn_seizePlayerWeapon.sqf
	Author: Skalicon
	Modified by: cat24max
	
	Description:
	Performs the seizePlayerWeaponAction script on the cursorTarget
*/
[[],"life_fnc_seizePlayerWeaponAction",cursorTarget,false] spawn life_fnc_MP;
//[[player],"life_fnc_seizePlayerWeaponAction",cursorTarget,false] spawn life_fnc_MP; new?
[[52, player, format["Sie haben alle Waffen und Magazine von %1 beschlagnahmt.", name cursorTarget]],"TON_fnc_logIt",false,false] spawn life_fnc_MP;
