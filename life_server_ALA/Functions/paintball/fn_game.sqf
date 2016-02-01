pb_spielstatus=1;
[["Paintballarena","Ein Spieler hat soeben eine Lobby in der Paintballarena eröffnet! Die Lobby schließt sich in 60 Sekunden!"],"life_fnc_ryn_message",true,false] spawn life_fnc_MP;
sleep 60;

if (count pb_spieler>=2) then {

	pb_spielstatus=2;
	{
		[[2],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
	} forEach pb_spieler;
	sleep 60;
	_msg = "Das Spiel läuft noch 4 Minuten";
	{
		[[1,_msg],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
	} forEach pb_spieler;
	sleep 60;
	_msg = "Das Spiel läuft noch 3 Minuten";
	{
		[[1,_msg],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
	} forEach pb_spieler;
	sleep 60;
	_msg = "Das Spiel läuft noch 2 Minuten";
	{
		[[1,_msg],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
	} forEach pb_spieler;
	sleep 60;
	_msg = "Das Spiel läuft noch eine Minute!";
	{
		[[1,_msg],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
		[[4],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
	} forEach pb_spieler;
	sleep 60;
	{
		[[3],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
	} forEach pb_spieler;
	pb_spieler = [];
	pb_spielstatus = 0;
	joinmode = 0;
	publicVariable "joinmode";

} else {

	_msg = "Da zu wenig Spieler sich in der Lobby befanden wurde das Spiel abgebrochen!";
	{
		[[1,_msg],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
	} forEach pb_spieler;
	pb_spieler = [];
	pb_spielstatus=0;
	joinmode = 0;
	publicVariable "joinmode";

};