/*
	File: fn_robShops.sqf
	Author: MrKraken
	Edit: Ehno, Paronity, Game Timer
	
	Description:
	Executes the rob shob action!
	this addAction["Tankstelle ausrauben",life_fnc_robShops,"",0,false,false,"",'playerSide == civilian']; 
	
	ToDo: mit setVariable NPC nicht raubbar setzen,
		Name per addaction für Messages?! -> siehe paronity: Argument oder name _shop! 
		_shop: roleName vs varName
		switchMove global!
		sidecheck in code statt addaction?
*/

private["_robber","_shop","_timer","_funds","_dist","_success","_pos"];

_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_action = [_this,2] call BIS_fnc_param;
_timer = 300;
_funds = 0;
_dist = _robber distance _shop;
_success = false;

if(vehicle player != _robber) exitWith { hint "Zuerst raus ausm Auto..."}; 
if(west countSide playableUnits < 2) exitWith { hint "Zu wenige Polizisten online."};
if(!alive player) exitWith { hint "Du bist Tod. Wie soll das gehen?"};
if(currentWeapon _robber == "") exitWith { hint "Wie wüst ma so Angst machen, Kasperl?"};
if(_dist > 4) exitWith {hint "Du bist zu weit weg."};

[[0,"Eine Tankstelle wird ausgeraubt!"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
[[format["%1 raubt gerade die Tankstelle %2 aus! Kummans schnell!",name player,_shop],"Anonymer Zeuge",1],"TON_fnc_clientMessage",true,false] spawn life_fnc_MP;
//[[0,format["ALARM! - Gasstation: %1 is being robbed!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; };
_shop switchMove "AmovPercMstpSsurWnonDnon";
_shop removeAction _action;

// Marker by ehno start
_pos = position player;				
_marker = createMarker ["Marker200", _pos];			
"Marker200" setMarkerColor "ColorRed";
"Marker200" setMarkerText "Achtung: Tankstellenüberfall";
"Marker200" setMarkerType "mil_warning";

// Random Funds
_funds = ceil(random 8) * 1000;

while {true} do{ 
	hintSilent format ["%1 Sekunden verbleibend. Du musst im Umkreis von 4m bleiben!",_timer];		
	sleep 1;		
	_timer = _timer - 1;		
	_dist = _robber distance _shop;	
	if (!alive _robber) exitwith {
		hint "Raub aufgrund eines Todesfalles abgebrochen.";
		deleteMarker "Marker200";
		_shop switchMove "";
		_action = _shop addAction["Tankstelle ausrauben",life_fnc_robShops,"",0,false,false,"",'playerSide == civilian']; 	
	};			
	if (_dist > 4) exitwith {
		hint "Raub fehlgeschlagen, du hast dich gschlichen...";
		deleteMarker "Marker200"; 
		_shop switchMove "";			
		_action = _shop addAction["Tankstelle ausrauben",life_fnc_robShops,"",0,false,false,"",'playerSide == civilian']; 
	};
	if(life_istazed) exitwith {	
		hint "Raub durch Intervention der Exekutive fehlgeschlagen.";
		deleteMarker "Marker200";
		_shop switchMove "";
		_action = _shop addAction["Tankstelle ausrauben",life_fnc_robShops,"",0,false,false,"",'playerSide == civilian']; 	
	};							
	if(_timer < 1) exitWith { _success = true;};
};

if(!_success) exitWith {};

life_cash = life_cash + _funds;
hint format["Du hast $%1 gestohlen.",_funds];
deleteMarker "Marker200";
[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
_shop switchMove "";

// Instantly depositing money is lame...
[]spawn {
	life_use_atm = false; 
	sleep 300;
	life_use_atm = true;
};

// 7min until he can rob this again
sleep 420;
_action = _shop addAction["Tankstelle ausrauben",life_fnc_robShops,"",0,false,false,"",'playerSide == civilian']; 