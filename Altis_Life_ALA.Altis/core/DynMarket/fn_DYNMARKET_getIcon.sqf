/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

_itemName = [_this,0,""] call BIS_fnc_param;

_iconPath = "";

switch (_itemName) do {
	case "apple": {_iconPath = "icons\items\apple.paa";};
	case "peach": {_iconPath = "icons\items\peach.paa";};
	case "copper_r": {_iconPath = "icons\items\copper.paa";};
	case "oilp": {_iconPath = "icons\items\oil_processed.paa";};
	case "iron_r": {_iconPath = "icons\items\iron.paa";};
	case "salt_r": {_iconPath = "icons\items\salt.paa";};
	case "glass": {_iconPath = "icons\items\glass.paa";};
	case "cement": {_iconPath = "icons\items\cement.paa";};
	case "diamondc": {_iconPath = "icons\items\diamond.paa";};
	case "milkp": {_iconPath = "icons\items\milkp.paa";};
	case "heroinp": {_iconPath = "icons\items\heroin_processed.paa";};
	case "cocainep": {_iconPath = "icons\items\cocain_processed.paa";};
	case "marijuana": {_iconPath = "icons\items\marijuana.paa";};
	case "goldbar": {_iconPath = "icons\items\goldbar.paa";};
	case "turtle": {_iconPath = "icons\items\turtle.paa";};
	case "salema": {_iconPath = "icons\items\fish.paa";};
	case "ornate": {_iconPath = "icons\items\fish.paa";};
	case "mackerel": {_iconPath = "icons\items\fish.paa";};
	case "tuna": {_iconPath = "icons\items\fish.paa";};
	case "mullet": {_iconPath = "icons\items\fish.paa";};
	case "catshark": {_iconPath = "icons\items\fish.paa";};
	case "henraw": {_iconPath = "icons\items\meat.paa";};
	case "roosterraw": {_iconPath = "icons\items\meat.paa";};
	case "sheepraw": {_iconPath = "icons\items\meat.paa";};
	case "goatraw": {_iconPath = "icons\items\meat.paa";};
	case "rabbitraw": {_iconPath = "icons\items\meat.paa";};
	case default {_iconPath = "";};
};

_iconPath;