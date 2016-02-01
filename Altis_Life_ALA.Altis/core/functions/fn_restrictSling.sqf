#include <macro.h>
/*
	File: fn_restrictSling.sqf
	Author: Paul "Jerico" Smith
	
	Description:
	Disables a vehicle from being Sling Loaded.
*/

private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(typeOf _vehicle in (__GETC__(Amarok_RestrictSling))) then
{
	_vehicle enableRopeAttach false;
};