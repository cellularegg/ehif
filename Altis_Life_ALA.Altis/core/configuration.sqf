#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 0.5; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
//Channel 7
life_channel_send = false;
// Admintool stuff
life_god = false;
life_frozen = false; 
life_markers = false;
// --
life_action_pickaxeInUse = false; // another try to fix all these exploits
life_nottoofast = 0; //Trying to fix the garage
life_request_timer = false; // Medic request
life_isSuicide = false;	// Allahu snackbar
life_removedReb = false; // I don't know why I do this...



//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,3000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,6); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,20000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,5000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,false); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,1000);
__CONST__(life_impound_boat,1250);
__CONST__(life_impound_air,3500);
__CONST__(life_impound_tank,100);
life_istazed = false;
life_my_gang = ObjNull;
life_drink = 0; //Alcohol -GT-


life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 7000; //Starting Bank Money
		life_paycheck = 2000; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 15000; //Starting Bank Money
		life_paycheck = 1000; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 6500;
		life_paycheck = 4500;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F","B_APC_Tracked_01_CRV_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

Amarok_RestrictSling = ["I_Truck_02_transport_F","I_Truck_02_covered_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_Truck_01_box_F","O_Truck_03_device_F","C_Van_01_transport_F","C_Van_01_box_F"];
__CONST__(Amarok_RestrictSling,Amarok_RestrictSling);

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",		
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	// Added austrian food -GT-
	"life_inv_bottledbeer",
	"life_inv_leberk",
	"life_inv_krapfen",
	"life_inv_frankfurter",
	"life_inv_krainer",
	"life_inv_manner",
	"life_inv_almdudler",
	"life_inv_zipties",
	"life_inv_mauer",
	// Hunting Stuff
	"life_inv_henraw",
    "life_inv_roosterraw",
    "life_inv_sheepraw",
    "life_inv_goatraw",
	"life_inv_rabbitraw"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_lawyer","civ"],
	["license_civ_press","civ"],
	["license_civ_undercover","civ"],	// = member of the UC Police
	["license_civ_ucduty","civ"],		// = on undercover patrol
	["license_civ_taxi","civ"]			// Taxi driver!
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["bottledbeer",1], //alc -GT-
	["apple",50],
	["heroinu",2250],
	["heroinp",4560],
	["salema",100],
	["ornate",100],
	["mackerel",250],
	["tuna",800],
	["mullet",350],
	["catshark",500],
	["rabbit",65],
	["oilp",3500],
	["turtle",10000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",2720],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",100],
	["peach",55],
	["cocaine",3000],
	["cocainep",5000],
	["diamond",1000],
	["diamondc",2320],
	["iron_r",2900],
	["copper_r",1500],
	["salt_r",1680],
	["glass",1440],
	["fuelF",500],
	["spikeStrip",1200],
	["cement",2400],
	["goldbar",95000],
	["zipties",200],
	// Hunting Stuff
	["henraw",1500],
    ["roosterraw",1500],
    ["sheepraw",1500],
    ["goatraw",1500],
    ["rabbitraw",1500]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["bottledbeer",50], //alc -GT-
	["apple",65],
	["rabbit",75],
	["salema",110],
	["ornate",110],
	["mackerel",260],
	["tuna",900],
	["mullet",360],
	["catshark",550],
	["water",10],
	["turtle",14000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",3000],
	["pickaxe",1200],
	["redgull",150],
	["fuelF",850],
	["peach",68],
	["spikeStrip",2000],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],
	["leberk",80],
	["krapfen",40],
	["frankfurter",80],
	["krainer",80],
	["manner",40],
	["almdudler",10],
	["zipties",1500],
	["mauer",2000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["Medikit",450],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30],
	["LMG_Mk200_F",100000],
	["srifle_GM6_F",250000],
	["srifle_LRR_F",240000]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	// Cars
	["B_QuadBike_01_F",500],
	["B_G_Offroad_01_F",2500],
	["C_Hatchback_01_F",1500],
	["C_Offroad_01_F", 2500],
	["C_SUV_01_F",2500],
	["C_Hatchback_01_sport_F",2500],
	["B_MRAP_01_F",10000],
	["O_MRAP_02_F",10000],
	["I_MRAP_03_F",12000],
	// Trucks
	["C_Van_01_transport_F",4000],
	["C_Van_01_fuel_F",4000],
	["C_Van_01_box_F",4000],
	["I_Truck_02_transport_F",5000],
	["I_Truck_02_covered_F",5000],
	["O_Truck_03_transport_F",5000],
	["O_Truck_03_covered_F",5000],
	["B_Truck_01_transport_F",5000],
	["B_Truck_01_ammo_F",5000],
	["B_Truck_01_box_F",5000],
	["O_Truck_03_device_F",5000],
	// Helis
	["C_Heli_Light_01_civil_F",8000],
	["B_Heli_Light_01_F",8000],
	["O_Heli_Light_02_unarmed_F",8000],
	["I_Heli_Transport_02_F",9000],
	["O_Heli_Transport_04_F",9000],
	["O_Heli_Transport_04_box_F",10000],	
	["I_Heli_light_03_unarmed_F",10000],
	["B_Heli_Transport_01_F",40000],
	["B_Heli_Transport_01_camo_F",10000],
	["B_Heli_Transport_03_unarmed_F",15000],
	["B_Heli_Transport_03_F",30000],
	// Boats
	["C_Rubberboat",400],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_F",1000],
	["C_Boat_Civil_01_police_F",1000],
	["B_SDV_01_F",5000],
	["B_Boat_Armed_01_minigun_F",5000]

];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	// Cars
	["B_Quadbike_01_F",950],
	["C_Hatchback_01_F",4500],
	["C_Offroad_01_F", 6500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",15000],
	["C_Hatchback_01_sport_F",50000],
	["B_MRAP_01_F",10000],
	["O_MRAP_02_F",65000],
	["I_MRAP_03_F",65000],
	// Trucks
	["C_Van_01_transport_F",25000],
	["C_Van_01_fuel_F",3850],
	["C_Van_01_box_F",35000],
	["I_Truck_02_transport_F",49800],
	["I_Truck_02_covered_F",62000],
	["B_Truck_01_transport_F",135000],
	["B_Truck_01_box_F", 150000],
	// Helis
	["B_Heli_Light_01_F",57000],
	["O_Heli_Light_02_unarmed_F",72500],
	["I_Heli_Transport_02_F",125000],
	// Boats
	["C_Rubberboat",950],
	["C_Boat_Civil_01_F",6800],
	["B_Boat_Transport_01_F",850],
	["C_Boat_Civil_01_police_F",4950],
	["B_Boat_Armed_01_minigun_F",21000],
	["B_SDV_01_F",45000]
	
];
__CONST__(life_garage_sell,life_garage_sell);