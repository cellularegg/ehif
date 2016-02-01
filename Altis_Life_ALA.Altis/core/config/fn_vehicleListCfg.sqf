#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	Edit: Game Timer for ALA
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["C_SUV_01_F",25000],
			["B_MRAP_01_F",60000],
			["C_Van_01_box_F",30000]
		];
	};
	
	case "med_air_hs": 
	{
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000],
			["O_Heli_Transport_04_medevac_F",90000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Hatchback_01_sport_F",230000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_transport_F",275000],
			["B_Truck_01_ammo_F",310000],
			["B_Truck_01_box_F",350000],
			["O_Truck_03_device_F",870000]
			//["C_Van_01_fuel_F",100]
			//["B_Truck_01_covered_F",100]
			//["B_Truck_01_fuel_F",100]
			//["I_Truck_02_fuel_F",100]
			//["I_Truck_02_box_F",100]
			//["O_Truck_03_repair_F",100]
			//["O_Truck_03_ammo_F",100]
			//["O_Truck_03_fuel_F",100]
		];	
	};
	
	
	case "reb_car":
	{
		if(license_civ_rebel) then
		{
			_return =
			[
				["B_Quadbike_01_F",2500],
				["B_G_Offroad_01_F",15000],
				["B_G_Van_01_transport_F",45000],
				["O_MRAP_02_F",1000000],
				["B_Heli_Light_01_F",325000],
				["B_G_Offroad_01_armed_F",600000],
				["O_Heli_Light_02_unarmed_F",930000],
				["I_MRAP_03_F",1200000]
			];
		};
	};
	
	// Stammspieler Shop
	case "donator_1":
	{
		if(__GETC__(life_donator) != 0) then
		{
			_return =
			[
				["B_Quadbike_01_F",800],
				["B_G_Offroad_01_F",8000],
				["C_Hatchback_01_sport_F",100000],
				["O_Truck_03_covered_F",200000],
				["B_Truck_01_box_F",300000],
				["O_Truck_03_device_F",700000],
				["O_MRAP_02_F",700000],
				["I_MRAP_03_F",870000],
				["B_G_Offroad_01_armed_F",500000],
				["B_Heli_Light_01_F",270000],
				["O_Heli_Light_02_unarmed_F",600000],
				["I_Heli_Transport_02_F",1070000],
				["O_Heli_Transport_04_box_F",1200000]
			];
		};
	};
	
	// Press Shop (AAN)
	case "press_car":
	{	
		if (license_civ_press) then
		{
			_return =
			[
				["C_SUV_01_F",25000]
			];
		};
	};
	
	// Taxi shop
	case "taxi_car":
	{	
		if (license_civ_taxi) then
		{
			_return =
			[
				["C_Offroad_01_F",10000],
				["C_SUV_01_F",25000],
				["B_Heli_Light_01_F",150000]
			];
		};
	};

	
	case "cop_car":
	{
		_return pushBack
		["B_Quadbike_01_F",1000];
		_return pushBack
		["C_Offroad_01_F",5000];
		_return pushBack
		["C_Hatchback_01_F",5000];
		if(__GETC__(life_coplevel) > 1) then	// Inspektor
		{
			_return pushBack
			["C_SUV_01_F",20000];						
		};
		if(__GETC__(life_coplevel) > 2) then	// Chefinspektor
		{
			_return pushBack
			["B_MRAP_01_F",30000];		
		};
		if(__GETC__(life_coplevel) > 3) then	// Wachtmeister
		{
			_return pushBack
			["C_Hatchback_01_sport_F",25000];
		};
		if(__GETC__(life_coplevel) > 4) then	// Hauptmann
		{
			_return pushBack
			["I_MRAP_03_F",30000];		
		};
		if(__GETC__(life_coplevel) > 5) then	// Major / General
		{
			_return pushBack
			["B_MRAP_01_hmg_F",300000];			
		};
	};
	
	case "cobra_car":
	{
		if(license_cop_swat) then
		{
			_return =
			[
				["B_MRAP_01_hmg_F",300000],
				["B_APC_Tracked_01_CRV_F",300000],
				["B_Heli_Transport_03_F",300000],
				["B_Heli_Transport_01_F",300000]
			];
		};
		
	};
	
	case "civ_air":
	{
		_return =
		[
			["C_Heli_Light_01_civil_F",235000],
			["B_Heli_Light_01_F",247000],
			["O_Heli_Light_02_unarmed_F",900000],
			["I_Heli_Transport_02_F",1340000],
			["O_Heli_Transport_04_box_F",1500000]
			//["O_Heli_Transport_04_bench_F",100]
			//["O_Heli_Transport_04_covered_F",100]
			//["O_Heli_Transport_04_fuel_F",100]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 1) then	// Inspektor
		{
			_return pushBack
			["C_Heli_Light_01_civil_F",75000];
			//["B_Heli_Light_01_F",75000];						
		};
		if(__GETC__(life_coplevel) > 2) then	// Chefinspektor
		{
			_return pushBack
			["B_Heli_Light_01_F",75000];
		};
		if(__GETC__(life_coplevel) > 3) then	// Wachtmeister
		{
			// nothing.
		};
		if(__GETC__(life_coplevel) > 4) then	// Hauptmann
		{
			_return pushBack
			["I_Heli_light_03_unarmed_F",30000];
			_return pushBack
			["O_Heli_Transport_04_F",30000];
		};
		if(__GETC__(life_coplevel) > 4) then	// Major / General
		{
			_return pushBack
			["B_Heli_Transport_01_F",300000];		// <= armed
			_return pushBack
			["B_Heli_Transport_03_unarmed_F",300000];
			
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
