/*
    File: fn_sendChannel.sqf
    Author: alleskapot & Lifted
    Thanks again for all the help alleskapot!
    Description:
    Ermöglicht senden bzw. die Abfrage des Geschriebenen.
*/
private["_message"];
disableSerialization;
waitUntil {!isnull (findDisplay 9000)};
if (life_cash < 6000 ) exitWith { systemChat "Du brauchst 6000€ um eine Nachricht zu senden!"; };
if (life_channel_send) exitWith {hint "Woart a bissl, mir san no auf Sendung!"};
life_cash = life_cash - 6000;
_message = ctrlText 9001;
[[3,format ["%1 sendete folgende Nachricht vom Kueniglberg: %2",name player,_message]],"life_fnc_broadcast",true,false] call life_fnc_MP;
life_channel_send = true;
[] spawn
{
    sleep 60*5;
    life_channel_send = false;
};