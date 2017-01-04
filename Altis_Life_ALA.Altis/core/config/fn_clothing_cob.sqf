#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["U_B_CombatUniform_mcam","Cobra Uniform",25];
		_ret pushBack ["U_B_Wetsuit",nil,2000];
	};
	
	//Hats
	case 1:
	{
		_ret pushBack ["H_HelmetSpecB",nil,200];
		_ret pushBack ["H_HelmetSpecB_blk",nil,200];
		_ret pushBack ["H_HelmetB_light_black",nil,200];	
		_ret pushBack ["H_Beret_red",nil,100];
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Diving",nil,500],
			// Balaclavas and Bandanas
			["G_Balaclava_blk",nil,50],
			["G_Balaclava_lowprofile",nil,50],
			["G_Balaclava_combat",nil,50],
			["G_Balaclava_oli",nil,50],
			["G_Bandanna_aviator",nil,50],
			["G_Bandanna_beast",nil,50],
			["G_Bandanna_tan",nil,50],
			["G_Bandanna_sport",nil,50],
			["G_Bandanna_blk",nil,50],
			["G_Bandanna_oli",nil,50],
			["G_Bandanna_shades",nil,50],
			["G_Balaclava_TI_blk_F",nil,100],
			["G_Balaclava_TI_G_blk_F",nil,100]
		];
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_TacVestIR_blk",nil,800];
		_ret pushBack ["V_RebreatherB",nil,5000];
		_ret pushBack ["V_PlateCarrier1_blk",nil,5000];
		_ret pushBack ["V_PlateCarrierIAGL_oli",nil,15000];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Carryall_cbr",nil,500]
		];
	};
};

_ret;