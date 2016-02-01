/*
File : fn_copShowLicense.sqf
Create : Black Lagoon
Edit : Noldy and CYNX

Beschreibung : Fuegt einen 'Polizeiausweis' hinzu, den man ueber scrollen Zivilisten zeigen kann
*/

private["_target", "_message","_coplevel","_rang"];

_target = cursorTarget;
//_target = player;  for testing!

if(playerSide != west && !(license_civ_ucduty)) exitWith
{
	hint "Du bist kein Cop!";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_coplevel = call life_coplevel;

switch ( _coplevel ) do
{
	case 1: { _rang = "Rekrut"; };
	case 2: { _rang = "Inspektor"; };
	case 3: { _rang = "Chefinspektor"; };
	case 4: { _rang = "Wachtmeister"; };
	case 5: { _rang = "Hauptmann"; };
	case 6: { _rang = "Major";};
	case 7: { _rang = "General";};
	default {_rang =  "Zivilbeamter";};
};

_message = format["<img size='10' image='textures\marke.paa'/><br/><br/><t size='1.9' color='#2E2EFE'>%1</t><br/><t size='1.6'>%2</t><br/><t size='1'>Bundespolizei Altis</t>", name player, _rang];

[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
sleep 5; // Don't spam..?