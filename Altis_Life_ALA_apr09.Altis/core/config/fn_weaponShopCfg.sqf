#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Game Timer
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_cadet":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du schaust ned wie a Kiberer aus!"};
			default
			{
				["Rekruten Shop",
					[
						["arifle_sdar_F","Tasergewehr",7000],
						["20Rnd_556x45_UW_mag","Tasergewehr Munition",60],
						["hgun_P07_snds_F","Taser",3000],
						["16Rnd_9x21_Mag",nil,50],						
						["hgun_P07_F","P07 Pistole",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F",nil,25000],
						["30Rnd_9x21_Mag",nil,75],
						["muzzle_snds_L",nil,500],	
						["optic_Aco",nil,1000],
						["Binocular","Fernglas",50],
						["ItemGPS",nil,50],
						["ItemCompass","Kompass",50],
						["ItemMap",nil,50],
						["FirstAidKit",nil,200],
						["Medikit",nil,1000],
						["ToolKit","Repairkit",200],
						["NVGoggles",nil,2000],
						["Chemlight_green","Knicklicht grün",50],
						["Chemlight_red","Knicklicht rot",50],
						["Chemlight_blue","Knicklicht blau",50],
						["Chemlight_yellow","Knicklicht gelb",50]
					]
				];
			};
		};
	};

	case "cop_officer":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du schaust ned wie a Kiberer aus!"};
			case (__GETC__(life_coplevel) < 2): {"Schleich di, Erdäpfelschäler!"};
			default
			{
				["Inspektor Shop",
					[
						["SMG_02_F","Sting MP",25000],
						["30Rnd_9x21_Mag",nil,75],
						["SMG_01_F","Vermin MP",25000],
						["30Rnd_45ACP_Mag_SMG_01",nil,75],						
						["arifle_Mk20_plain_F",nil,40000],
						["arifle_MK20C_plain_F",nil,35000],
						["arifle_TRG21_F",nil,40000],
						["arifle_TRG20_F",nil,35000],
						["30Rnd_556x45_Stanag",nil,80],						
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_acp",nil,800],
						["acc_flashlight","Taktische Sonne",400],
						["optic_MRCO",nil,5000],
						["optic_Aco",nil,1000],
						["optic_Holosight",nil,2000]							
					]
				];
			};
		};
	};

	case "cop_corporal":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du schaust ned wie a Kiberer aus!"};
			case (__GETC__(life_coplevel) < 3): {"Schleich di, Erdäpfelschäler!"};
			default
			{
				["Chefinspektor Shop",
					[
						["arifle_MX_F","MX",50000],
						["arifle_MXC_F","MXC",40000],
						["arifle_MXM_F","MXM",55000],
						["30Rnd_65x39_caseless_mag",nil,80],
						["optic_Arco","ARCO",5000],
						["optic_Hamr","RCO",5000],
						["optic_DMS",nil,15000],	// DMS? Really needed?
						["acc_pointer_IR",nil,2000],
						["muzzle_snds_H",nil,1000]
					]
				];
			};
		};
	};
	
	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du schaust ned wie a Kiberer aus!"};
			case (__GETC__(life_coplevel) < 4): {"Schleich di, Erdäpfelschäler!"};
			default
			{
				["Wachtmeister Shop",
					[
						["arifle_MX_SW_F",nil,50000],
						["30Rnd_65x39_caseless_mag",nil,80],
						["100Rnd_65x39_caseless_mag_Tracer",nil,500],
						["Rangefinder",nil,10000],
						["muzzle_snds_H",nil,1000],
						["HandGrenade_Stone","Flashbang",2000]
					]
				];
			};
		};
	};
	
	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du schaust ned wie a Kiberer aus!"};
			case (__GETC__(life_coplevel) < 5): {"Schleich di, Erdäpfelschäler!"};
			default
			{
				["Hauptmann Shop",
					[
						["arifle_MX_SW_Black_F",nil,75000],
						["100Rnd_65x39_caseless_mag",nil,100],
						["arifle_MXC_Black_F",nil,40000],
						["arifle_MX_Black_F",nil,50000],
						["arifle_MXM_Black_F",nil,55000],
						["30Rnd_65x39_caseless_mag",nil,80],
						["srifle_EBR_F",nil,90000],
						["20Rnd_762x51_Mag",nil,150],
						["Rangefinder",nil,10000],
						["optic_DMS",nil,15000],
						["optic_SOS",nil,17000],
						["B_UavTerminal",nil,4000],
						["B_UAV_01_backpack_F","Drohnenrucksack",40000],
						["muzzle_snds_B",nil,1200],
						["muzzle_snds_H",nil,1000],
						["SmokeShellBlue","Tränengas",500]
					]
				];
			};
		};
	};
	
	
	case "cop_captain":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du schaust ned wie a Kiberer aus!"};
			case (__GETC__(life_coplevel) < 6): {"Schleich di, Erdäpfelschäler!"};
			default
			{
				["Major/General Shop",
					[
						["srifle_LRR_F",nil,260000],
						["7Rnd_408_Mag",nil,600],
						["NVGoggles_OPFOR","NV Schwarz",3000],
						["optic_LRPS",nil,20000],
						["optic_NVS",nil,5000]					
					]
				];
			};
		};
	};
	
	case "cop_cobra":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du schaust ned wie a Kiberer aus!"};
			case (!license_cop_swat): {"Du bist nicht bei der Cobra!"};
			default
			{
				["Cobra Shop",
					[
						["srifle_GM6_F",nil,270000],
						["5Rnd_127x108_Mag",nil,600],
						["srifle_LRR_F",nil,260000],
						["7Rnd_408_Mag",nil,600],
						["srifle_EBR_F",nil,90000],
						["20Rnd_762x51_Mag",nil,150],
						["NVGoggles_OPFOR","NV Schwarz",3000],
						["optic_SOS",nil,17000],
						["optic_LRPS",nil,20000]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["hgun_Rook40_F",nil,3000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_Pistol_heavy_02_F",nil,4000],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_ACPC2_F",nil,4000],
						["9Rnd_45ACP_Mag",nil,50],
						["hgun_Pistol_heavy_01_F",nil,5000],
						["11Rnd_45ACP_Mag",nil,50],
						["SMG_02_F",nil,25000],
						["hgun_PDW2000_F",nil,25000],
						["30Rnd_9x21_Mag",nil,200],
						["SMG_01_F",nil,30000],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["arifle_SDAR_F",nil,30000],
						["20Rnd_556x45_UW_mag",nil,100],
						["30Rnd_556x45_Stanag",nil,200],
						["arifle_TRG21_F",nil,40000],
						["arifle_TRG20_F",nil,40000],
						["arifle_Mk20_F",nil,40000],
						["arifle_Mk20C_F",nil,40000],
						["30Rnd_556x45_Stanag",nil,200],
						["arifle_Katiba_F",nil,60000],
						["arifle_Katiba_C_F",nil,60000],
						["30Rnd_65x39_caseless_green",nil,275],
						["srifle_DMR_01_F",nil,100000],
						["10Rnd_762x51_Mag",nil,500],
						["srifle_EBR_F",nil,120000],
						["20Rnd_762x51_Mag",nil,500],
						["srifle_LRR_F",nil,700000],
						["7Rnd_408_Mag",nil,1000],
						["SmokeShell",nil,8000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["optic_MRCO",nil,5000],
						["optic_Hamr",nil,7500],
						["optic_Arco",nil,7500],
						["optic_DMS",nil,30000],
						["optic_SOS",nil,40000],
						["optic_LRPS",nil,60000],
						["acc_flashlight",nil,1000],
						["Rangefinder",nil,10000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["NVGoggles_OPFOR","NV Schwarz",2000],
						["NVGoggles_INDEP","NV Grün",2000]	
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_P07_F",nil,6500],
						["16Rnd_9x21_Mag",nil,25],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_ACPC2_F",nil,11500],
						["9Rnd_45ACP_Mag",nil,45],
						["hgun_Pistol_heavy_01_F",nil,14000],
						["11Rnd_45ACP_Mag",nil,50],
						["hgun_PDW2000_F",nil,20000],
						["SMG_02_F",nil,30000],
						["30Rnd_9x21_Mag",nil,75],
						["SMG_01_F",nil,40000],
						["30Rnd_45ACP_Mag_SMG_01",nil,85],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight_smg",nil,2000],
						["V_Rangemaster_belt",nil,4900]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,4500],
						["16Rnd_9x21_Mag",nil,25],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_ACPC2_F",nil,4500],
						["9Rnd_45ACP_Mag",nil,45],
						["hgun_PDW2000_F",nil,9500],
						["SMG_02_F",nil,20000],
						["30Rnd_9x21_Mag",nil,75],
						["SMG_01_F",nil,25000],
						["30Rnd_45ACP_Mag_SMG_01",nil,85],
						["optic_ACO_grn_smg",nil,950],
						["optic_Holosight_smg",nil,1000],
						["V_Rangemaster_belt",nil,1900]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	
	// Stammspieler Shop
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			default
			{
				["Das Stammspieler Geschäft",
					[
						["hgun_Rook40_F",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_ACPC2_F",nil,2500],
						["9Rnd_45ACP_Mag",nil,50],
						["hgun_Pistol_heavy_01_F",nil,3000],
						["11Rnd_45ACP_Mag",nil,50],
						["SMG_02_F",nil,15000],
						["30Rnd_9x21_Mag",nil,200],
						["SMG_01_F",nil,20000],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["arifle_SDAR_F",nil,20000],
						["20Rnd_556x45_UW_mag",nil,100],
						["30Rnd_556x45_Stanag",nil,200],
						["arifle_TRG21_F",nil,30000],
						["arifle_TRG20_F",nil,30000],
						["arifle_Mk20_F",nil,30000],
						["arifle_Mk20C_F",nil,30000],
						["30Rnd_556x45_Stanag",nil,200],
						["arifle_Katiba_F",nil,45000],
						["arifle_Katiba_C_F",nil,45000],
						["30Rnd_65x39_caseless_green",nil,275],
						["srifle_DMR_01_F",nil,80000],
						["10Rnd_762x51_Mag",nil,500],
						["srifle_EBR_F",nil,95000],
						["20Rnd_762x51_Mag",nil,500],
						["srifle_LRR_F",nil,500000],
						["7Rnd_408_Mag",nil,1000],
						["SmokeShell",nil,7000],
						["optic_ACO_grn",nil,2000],
						["optic_Holosight",nil,2100],
						["optic_MRCO",nil,2500],
						["optic_Hamr",nil,4000],
						["optic_Arco",nil,4000],
						["optic_DMS",nil,20000],					
						["optic_SOS",nil,25000],
						["optic_LRPS",nil,40000],
						["acc_flashlight",nil,500],
						["Rangefinder",nil,5000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,1000],
						["NVGoggles_OPFOR","NV Schwarz",1000],
						["NVGoggles_INDEP","NV Grün",1000]
					]
				];
			};
		};
	};
	
	// Press Shop
	case "press":
	{
		switch (true) do
		{
			case (playerSide != civilian): {"Erst nachm Dienst geht des!"};
			case (!license_civ_press): {"Du host kan Presseausweis!"};
			default
			{
				["Presseausrüstung",
					[
						["Binocular","Kamera",2000],
						["Rangefinder","Spezialkamera",5000],
						["U_C_Journalist","Presseuniform",200],
						["V_Press_F","Schutzweste",5000],
						["H_Cap_press","Kappe",100],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
		};
	};
	
	// Undercover Police Shop
	case "uccop":
	{
		switch (true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilfahnder!"};
			case (!license_civ_ucduty): {"Du bist kein Zivilfahnder!"};
			default
			{
				["Zivilpolizei",
					[
						
						["hgun_Rook40_F",nil,3500],
						["hgun_P07_F",nil,3500],
						["16Rnd_9x21_Mag",nil,25],
						["hgun_Pistol_heavy_01_F",nil,7000],
						["11Rnd_45ACP_Mag",nil,50],
						["hgun_ACPC2_F",nil,5500],
						["9Rnd_45ACP_Mag",nil,45],
						["hgun_PDW2000_F",nil,10000],
						["SMG_02_F",nil,15000],
						["30Rnd_9x21_Mag",nil,75],
						["SMG_01_F",nil,20000],
						["30Rnd_45ACP_Mag_SMG_01",nil,85],
						// Items
						["optic_ACO_grn_smg",nil,2500],
						["optic_Aco_smg",nil,2500],
						["acc_flashlight",nil,100],
						["muzzle_snds_L",nil,200],
						["muzzle_snds_acp",nil,200],
						// Vest & Belt
						["V_Rangemaster_belt",nil,4900],
						["V_TacVest_camo",nil,8000],
						["V_TacVest_blk_POLICE",nil,8000],
						// General stuff
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
};
