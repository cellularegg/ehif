/*
	File: fn_removeLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for stripping certain licenses off of civilians as punishment.
*/
private["_state","_killcount"];
_state = [_this,0,1,[0]] call BIS_fnc_param;
_legalguns = ["hgun_Rook40_F","hgun_P07_F","hgun_Pistol_heavy_02_F","hgun_ACPC2_F","hgun_Pistol_heavy_01_F","hgun_PDW2000_F","SMG_02_F","SMG_01_F"];

switch (_state) do
{
	//Death while being wanted
	case 0:
	{
		license_civ_rebel = false; // That's enough -GT-
		//license_civ_driver = false;
		//license_civ_heroin = false;
		//license_civ_marijuana = false;
		//license_civ_coke = false;
	};
	
	//Jail licenses
	case 1:
	{
		license_civ_gun = false;
		license_civ_rebel = false;
		license_civ_driver = false;
	};
	
	//Remove motor vehicle licenses
	case 2:
	{
		if(license_civ_driver ) then {
			license_civ_driver = false;
			hint localize "STR_Civ_LicenseRemove_1";
		};
	};
	
	//Killing someone while owning a gun license
	case 3:
	{
		if(license_civ_gun) then {
			if (currentWeapon player in _legalguns && (isNil "_killcount" || _killcount != 1)) exitWith{ _killcount = 1;};
			license_civ_gun = false;			
			hint localize "STR_Civ_LicenseRemove_2";
			if (currentWeapon player in _legalguns) then { _killcount = 0;};
		};
	};
};