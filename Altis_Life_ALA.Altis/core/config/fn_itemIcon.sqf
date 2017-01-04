/*
	File: fn_itemIcon.sqf
	Author: EdgeKiller

	Description:
	Return the icon for each altis life item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {("icons\items\oil_unprocessed.paa")};
	case "life_inv_oilp": {("icons\items\oil_processed.paa")};
	case "life_inv_heroinu": {("icons\items\heroin_unprocessed.paa")};
	case "life_inv_heroinp": {("icons\items\heroin_processed.paa")};
	case "life_inv_cannabis": {("icons\items\cannabis.paa")};
	case "life_inv_marijuana": {("icons\items\marijuana.paa")};
	case "life_inv_apple": {("icons\items\apple.paa")};
	case "life_inv_rabbit": {("icons\items\meat.paa")};
	case "life_inv_salema": {("icons\items\fish.paa")};
	case "life_inv_ornate": {("icons\items\fish.paa")};
	case "life_inv_mackerel": {("icons\items\fish.paa")};
	case "life_inv_tuna": {("icons\items\fish.paa")};
	case "life_inv_mullet": {("icons\items\fish.paa")};
	case "life_inv_catshark": {("icons\items\fish.paa")};
	case "life_inv_turtle": {("icons\items\turtle.paa")};
	case "life_inv_fishingpoles": {("icons\items\fishingpoles.paa")};
	case "life_inv_water": {("icons\items\water.paa")};
	case "life_inv_coffee": {("icons\items\coffee.paa")};
	case "life_inv_turtlesoup": {("icons\items\turtle_soup.paa")};
	case "life_inv_donuts": {("icons\items\kipferl.paa")};	// HIER
	case "life_inv_fuelE": {("icons\items\fuelempty.paa")};
	case "life_inv_fuelF": {("icons\items\fuel.paa")};
	case "life_inv_pickaxe": {("icons\items\pickaxe.paa")};
	case "life_inv_copperore": {("icons\items\copper_ore.paa")};
	case "life_inv_ironore": {("icons\items\iron_ore.paa")};
	case "life_inv_ironr": {("icons\items\iron.paa")};
	case "life_inv_copperr": {("icons\items\copper.paa")};
	case "life_inv_sand": {("icons\items\sand.paa")};
	case "life_inv_salt": {("icons\items\salt_unprocessed.paa")};
	case "life_inv_saltr": {("icons\items\salt.paa")};
	case "life_inv_glass": {("icons\items\glass.paa")};
	case "life_inv_diamond": {("icons\items\diamond_unprocessed.paa")};
	case "life_inv_diamondr": {("icons\items\diamond.paa")};
	case "life_inv_tbacon": {("icons\items\tbacon.paa")};
	case "life_inv_redgull": {("icons\items\redgull.paa")};
	case "life_inv_lockpick": {("icons\items\lockpick.paa")};
	case "life_inv_peach": {("icons\items\peach.paa")};
	case "life_inv_coke": {("icons\items\cocain_unprocessed.paa")};
	case "life_inv_cokep": {("icons\items\cocain_processed.paa")};
	case "life_inv_spikeStrip": {("icons\items\spikestrip.paa")};
	case "life_inv_rock": {("icons\items\rock.paa")};
	case "life_inv_cement": {("icons\items\cement.paa")};
	case "life_inv_goldbar": {("icons\items\goldbar.paa")};
	case "life_inv_blastingcharge": {("icons\items\blastingcharge.paa")};
	case "life_inv_boltcutter": {("icons\items\boltcutter.paa")};
	case "life_inv_defusekit": {("icons\items\defusekit.paa")};
	case "life_inv_storagesmall": {("icons\items\storagesmall.paa")};
	case "life_inv_storagebig": {("icons\items\storagebig.paa")};
	case "life_inv_bottledbeer": {("icons\items\beer.paa")};
	// New
	case "life_inv_leberk": {("icons\items\leberk.paa")};
	case "life_inv_krapfen": {("icons\items\krapfen.paa")};
	case "life_inv_frankfurter": {("icons\items\frankfurter.paa")};
	case "life_inv_krainer": {("icons\items\krainer.paa")};
	case "life_inv_manner": {("icons\items\manner.paa")};
	case "life_inv_almdudler": {("icons\items\almdudler.paa")};
	case "life_inv_zipties": {("icons\items\handcuffs.paa")};
	case "life_inv_mauer": {("icons\items\mauer.paa")};
	case "life_inv_henraw": {("icons\items\meat.paa")};
	case "life_inv_roosterraw": {("icons\items\meat.paa")};
	case "life_inv_sheepraw": {("icons\items\meat.paa")};
	case "life_inv_goatraw": {("icons\items\meat.paa")};
	case "life_inv_rabbitraw": {("icons\items\meat.paa")};
	case "life_inv_milk": {("icons\items\milk.paa")};
	case "life_inv_milkp": {("icons\items\milkp.paa")};
};