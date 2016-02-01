#include <macro.h>
/*
    Author: Joey LosPepes
    
    Description:
    Guts the animal!
*/
private["_animalCorpse","_upp","_ui","_progress","_pgText","_cP","_displayName","_itemName","_diff","_val"];
_animalCorpse = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _animalCorpse) exitWith {}; //Object passed is null?
life_interrupted = false;
if(!((typeOf _animalCorpse) in ["Hen_random_F","Cock_random_F","Goat_random_F","Sheep_random_F","Rabbit_F"])) exitWith {};
if(player distance _animalCorpse > 3.5) exitWith {};
life_action_inUse = true;
 switch(typeOf _animalCorpse) do {
    case "Hen_random_F": {_displayName = "Chicken"; _itemName = "henraw"; _val = 1;};
    case "Cock_random_F": {_displayName = "Rooster"; _itemName = "roosterraw"; _val = 1;};
    case "Goat_random_F": {_displayName = "Goat"; _itemName = "goatraw"; _val = 1;};
    case "Sheep_random_F": {_displayName = "Sheep"; _itemName = "sheepraw"; _val = 1;};
    case "Rabbit_F": {_displayName = "Rabbit"; _itemName = "rabbitraw"; _val = 1;};
    default {_displayName = ""; _itemName = ""; _val = 1;};
};
if (_displayName == "") exitWith {life_action_inUse = false;};
_upp = format["Gutting %1",_displayName];
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
while{true} do {
    if(animationState player != "AinvPknlMstpsnonWnonDnon_medic_1" ) then {
        player action ["SwitchWeapon", player, player, 100]; //EDIT
        player playMove "AinvPknlMstpsnonWnonDnon_medic_1"; //Durée action 6.5 secondes
        player playActionNow "stop";
        player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
        player playActionNow "stop";
        player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
    };
    uiSleep 0.15;
    _cP = _cP + 0.01;
    _progress progressSetPosition _cP;
    _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
    if(_cP >= 1) exitWith {};
    if(!alive player) exitWith {};
    if(isNull _animalCorpse) exitWith {};
    if(player != vehicle player) exitWith {};
    if(life_interrupted) exitWith {};
};
        
life_action_inUse = false;
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(isNull _animalCorpse) exitWith {life_action_inUse = false;};
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
if(player != vehicle player) exitWith {titleText[localize "STR_NOTF_RepairingInVehicle","PLAIN"];};
_diff = [_itemName,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_gutAnimal = true;
for "_i" from 0 to 2 do
deleteVehicle _animalCorpse;
if(([true,_itemName,_diff] call life_fnc_handleInv)) then {
    deleteVehicle _animalCorpse;
    titleText [format["Du hast rohes %1fleisch gesammelt",_displayName],"PLAIN"];
} else {
    titleText ["Your inventory is full","PLAIN"];
};