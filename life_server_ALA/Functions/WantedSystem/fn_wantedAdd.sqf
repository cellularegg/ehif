/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["Vehicular Manslaughter",9000]};
    case "187": {_type = ["Manslaughter",40000]};
    case "901": {_type = ["Escaping Jail",5000]};
    case "215": {_type = ["Attempted Auto Theft",3500]};
    case "211": {_type = ["Robbery",8000]};
    case "487": {_type = ["Grand Theft",5000]};
    case "481": {_type = ["Drug Possession",3000]};
    case "482": {_type = ["Intent to distribute",5000]};
    case "483": {_type = ["Drug Trafficking",6000]};
    case "459": {_type = ["Burglary",8000]};
	
	// Added by -GT-
	case "1": {_type = ["Fahren ohne Führerschein",1000]};
	case "2": {_type = ["Versuchter Diebstahl Fahrzeugs",3500]};
	case "3": {_type = ["Diebstahl/Führen e.fremden Zivilfahrzeugs",5000]};
	case "4": {_type = ["Fahren ohne Licht",500]};
	case "5": {_type = ["Überhöhte Geschwindigkeit",1000]};
	case "6": {_type = ["Gefährliche Fahrweise",1500]};
	case "7": {_type = ["Versuchter Diebstahl e.Polizeifahrzeugs",7500]};
	case "8": {_type = ["Diebstahl von Polizeifahrzeugen",12000]};
	case "9": {_type = ["Landen in einer Flugverbotszone",5000]};
	case "10": {_type = ["Fahren von illegalen Fahrzeugen",20000]};
	case "11": {_type = ["Unfallverursacher/Fahrerflucht nach Unfall",5000]};
	case "12": {_type = ["Fahrerflucht vor der Polizei",7500]};
	case "13": {_type = ["Raubüberfall",8000]};
	case "15": {_type = ["Widerstand gegen die Staatsgewalt",10000]};
	case "16": {_type = ["Nicht befolgen e.pol.Anordnung",4000]};
	case "17": {_type = ["Beamtenbeleidigung",2500]};
	case "18": {_type = ["Belästigung eines Polizisten",5000]};
	case "19": {_type = ["Betreten der pol.Sperrzone",5000]};
	case "21": {_type = ["Beschuss auf Polizei/Beamte/Eigentum",15000]};
	case "22": {_type = ["Zerstörung von Polizeieigentum",20000]};
	case "23": {_type = ["Drogendelikte",6000]};
	case "24": {_type = ["Waffenbesitz ohne Lizenz",5000]};
	case "25": {_type = ["Mit gez.Waffe durch Stadt",2500]};
	case "26": {_type = ["Besitz einer verbotenen Waffe",15000]};
	case "27": {_type = ["Schusswaffengebrauch innerhalb Stadt",10000]};
	case "28": {_type = ["Geiselnahme",30000]};
	case "30": {_type = ["Bankraub",80000]};
	case "32": {_type = ["Aufstand",50000]};
	case "33": {_type = ["Angriff durch Rebellen",30000]};
	case "34": {_type = ["Angriff/Belagerung von Hauptstädten",50000]};
	case "35": {_type = ["Vers.Landung in einer Flugverbotszone",5000]};
	case "36": {_type = ["Fliegen/Schweben unterhalb 200m ü.Stadt",5000]};
	case "37": {_type = ["Ausbruch/Beihilfe aus dem Gefängnis",5000]};
	case "38": {_type = ["Fliegen ohne Fluglizenz",4000]};
	case "39": {_type = ["Dauerhaft störendes Hupen",1000]};
    default {_type = [];};

};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};