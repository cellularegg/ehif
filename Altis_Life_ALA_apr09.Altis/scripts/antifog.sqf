/*
	File: antifog.sqf
	Author: Game Timer
	
	Description:
	Can we finally get rid of that damn fog?
*/

while {true} do
{
	waitUntil {fog != 0 || overcast != 0};
	0 setFog 0;
	0 setOvercast 0;
	sleep 3*60;	// Give him some sleep!
};