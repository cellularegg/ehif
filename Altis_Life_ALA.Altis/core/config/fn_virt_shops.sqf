/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["water","almdudler","bottledbeer","rabbit","apple","peach","redgull","tbacon","leberk","krainer","frankfurter","krapfen","manner","lockpick","pickaxe","fuelF","boltcutter","storagesmall","storagebig","henraw","roosterraw","goatraw","sheepraw","rabbitraw","milkp"]]};
	case "rebel": {["Rebel Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","zipties"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter","zipties"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "copper": {["Altis Kupferhändler",["copper_r"]]};
	case "iron": {["Altis Kupferhändler",["iron_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","mauer"]]};
	case "ucpolice": {["Zivilpolizei Shop",["donuts","coffee","spikeStrip","fuelF","zipties","lockpick"]]};	// Added: Undercover Police Shop -GT-
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
};