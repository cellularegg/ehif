/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

// ███████████████████████████████████████████████████████████████████████
// █████████████████ DYNAMIC MARKET BASIC CONFIGURATION ██████████████████
// ███████████████████████████████████████████████████████████████████████

DYNMARKET_Serveruptime         = 06;   // Serveruptime after restart in hours
DYNMARKET_UseExternalDatabase  = false; // Should the script use the External Database?
DYNMARKET_PriceUpdateInterval  = 03;   // After how many minutes should the price be updated?
DYNMARKET_CreateBackups        = true; // Should the server save write the prices regulary into the Database? If false, it will save the prices before Server-restart?
DYNMARKET_CreateBackupInterval = 03;   // After how many updates (PriceUpdateIntervals) should the prices be saved into the Database?
DYNMARKET_UserNotification     = false; // Should the user be informed with a hint whenever the prices got updated?

// █████████████████ USER NOTIFICATION TEXTS  █████████████████

DYNMARKET_UserNotification_Text = 
[
	"Your prices have been updated!",
	"The new prices are being calculated by the server..."
];

// █████████████████ ITEM GROUP CONFIGURATION █████████████████

DYNMARKET_Items_Groups =
[
	["Legal",
		[
			["copper_r",-1,1400,1550],
			["oilp",-1,3300,3700],
			["iron_r",-1,2800,2950],
			["salt_r",-1,1580,1700],
			["glass",-1,1400,1550],
			["cement",-1,2350,2550],
			["diamondc",-1,2200,2400],
			["milkp",-1,1380,1550]
		],
		0.5
	],
	["Illegal", 
		[
			["heroinp",-1,4400,4600],
			["cocainep",-1,4300,5010],
			["marijuana",-1,2650,3000],
			["turtle",-1,15000,20000]
		],
		0.5
	]
];

// █████████████████    ALL SELLABLE ITEMS    █████████████████

DYNMARKET_Items_ToTrack        = 
[
	["apple",50],
	["peach",60],
	["copper_r",1500],
	["oilp",3500],
	["iron_r",2900],
	["salt_r",1680],
	["glass",1440],
	["cement",2430],
	["diamondc",2320],
	["milkp",1500],	
	// Illegal
	["heroinp",4560],
	["cocainep",4800],
	["marijuana",2720],
	["goldbar",95000],
	["turtle",15000],
	// Fish and Meat
	["salema",100],
	["ornate",100],
	["mackerel",250],
	["tuna",800],
	["mullet",350],
	["catshark",500],
	["henraw",1500],
    ["roosterraw",1500],
    ["sheepraw",1500],
    ["goatraw",1500],
    ["rabbitraw",1500],
	// Market Stuff
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["tbacon",25],
	["rabbit",65],
	["lockpick",75],
	["pickaxe",750],
	["redgull",100],
	["fuelF",500],
	["spikeStrip",1200],
	["zipties",250],
	["bottledbeer",5]
];

//███████████████████████████████████████████████████████████████████████
//██████████████████ DO NOT MODIFY THE FOLLOWING CODE! ██████████████████
//███████████████████████████████████████████████████████████████████████

DYNMARKET_Items_CurrentPriceArr = [];
DYNMARKET_sellarraycopy = DYNMARKET_Items_ToTrack;
DYNMARKET_Serveruptime = (DYNMARKET_Serveruptime * 3600) - 300;
{
	_currentArray = _x;
	DYNMARKET_Items_CurrentPriceArr pushBack [_currentArray select 0,_currentArray select 1,0];
} forEach DYNMARKET_Items_ToTrack;
publicVariable "DYNMARKET_UserNotification";
publicVariable "DYNMARKET_UserNotification_Text";
if (DYNMARKET_UseExternalDatabase) then {[1] call TON_fnc_HandleDB;};
DYNMARKET_UpdateCount = 0;
if (DYNMARKET_UseExternalDatabase) then {
	[] spawn {
		sleep DYNMARKET_Serveruptime;
		diag_log "### DYNMARKET >> CURRENT PRICES ARE BEING WRITTEN TO THE DATABASE    ###";
		diag_log "### DYNMARKET >> AS PLANNED, AWAITING RESULT...                      ###";
		[0] call TON_fnc_HandleDB;
	};
};
sleep 5;
[] call TON_fnc_sleeper;
