#include <macro.h>
/*
	File: fn_skyDive.sqf
	Author: blaster
	Edited by Demigod & Game Timer
	
	Description:
	Sky diving, with a random coloured smoke that deploys once chute is pulled.
*/
[] spawn // fuck you I want to use sleep! -GT-
{
private ["_num","_color","_action","_price"];
if(playerSide != civilian) exitWith {hint "You must be off duty to Skydive.";};
_price = 5000;
if(life_cash < _price) exitWith {hint "Du host kane 5000$!";};


_action = [
	"Wennst springst, is dei Rucksack weg",
	"WARNING",
	"Jo is ok.",
	"Na sicher ned!"
] call BIS_fnc_guiMessage;


	if(_action) then {

		life_cash = life_cash - _price;

		titleText ["Bereite Absprung vor...", "BLACK FADED", 999];
		sleep 3;
		
		player addBackpack "B_Parachute"; 
		player setPos [getPos player select 0, getPos player select 1, 2000];
		titleText [" ","BLACK IN",2];

		waitUntil {(vehicle player != player)};	

		/* Sorry, but I'd like to use the austrian national colors instead :) -GT-
		_num = floor(random 7);
		
		_color = switch (_num) do {
			case 0: {"SmokeShell";};
			case 1: {"SmokeShellGreen";};
			case 2: {"SmokeShellRed";};
			case 3: {"SmokeShellRed";};
			case 4: {"SmokeShellOrange";};
			case 5: {"SmokeShellYellow";};
			case 6: {"SmokeShellPurple";};
		};
		*/

		_smoke = "SmokeShellRed" createVehicle position player;
		_smoke attachTo [vehicle player, [0,-0.1,1.5]];
		
		_smoke = "SmokeShell" createVehicle position player;
		_smoke attachTo [vehicle player, [0,-0.1,1.5]];
		
		_smoke = "SmokeShellRed" createVehicle position player;
		_smoke attachTo [vehicle player, [0,-0.1,1.5]];
	} else {
		hint"Hau ob, Schwitzer!";
	};
};