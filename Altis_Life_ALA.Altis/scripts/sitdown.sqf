/*
	File: sitdown.sqf
	Author: MacRae, Game Timer
	
	Description:
	this addAction ["<t color='#0099FF'>Sit Down</t>","scripts\sitdown.sqf","",0,FALSE,FALSE,"",' vehicle player == player && player distance _target < 2'];

*/

_chair = _this select 0; 
_unit = _this select 1; 

[[_unit, "Crew"], "life_fnc_animSync",true,true] spawn BIS_fnc_MP; 
_unit setPos (getPos _chair); 
_unit setDir ((getDir _chair) - 180); 
life_action_standup = _unit addaction ["<t color='#0099FF'>Stand Up</t>","scripts\standup.sqf"];
_unit setpos [getpos _unit select 0, getpos _unit select 1,((getpos _unit select 2) +1)];
