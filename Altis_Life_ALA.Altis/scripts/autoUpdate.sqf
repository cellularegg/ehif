/*
	File: autoUpdate.sqf
	Author: Game Timer
	
	Description:
	Small script for players that forget to press Sync Data regularyly
*/

while {true} do
{
	sleep 330;
	if (alive player) then
	{
		[] call SOCK_fnc_updateRequest;
		systemChat "Spiel automatisch gespeichert."
	};
};