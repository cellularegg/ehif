/*
File : fn_copShowLicense.sqf
Create : Black Lagoon
Edit : Noldy and CYNX

Beschreibung : Fuegt einen 'Polizeiausweis' hinzu, den man ueber scrollen Zivilisten zeigen kann
*/

private["_msg"];

_msg = _this select 1;

hintSilent parseText _msg;