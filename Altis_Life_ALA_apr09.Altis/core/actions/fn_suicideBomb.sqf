/*
	ALAH SNACKBAR! 
	by Tonic
*/
private["_boom", "_list"];
if(vest player != "V_HarnessOGL_gry") exitWith {};

life_isSuicide = true;

[[0,format["%1 wird sich in 15 Sekunden sprengen!!",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP; // 15 second warning shown in chat
sleep 13;

[player, "jihad"] call life_fnc_globalSound;
sleep 2;

//BOOM

if(vest player != "V_HarnessOGL_gry") exitWith {life_isSuicide = false;};
	
removeVest player;
_boom = "Bo_Mk82" createVehicle [0,0,9999];
_boom setPos (getPos player);
_boom setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};

life_isSuicide = false;

[[0,format["%1 hat sich gesprengt!",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;