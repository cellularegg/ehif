/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,5000],
			["U_BG_Guerrilla_6_1",nil,6000],
			["U_O_OfficerUniform_ocamo",nil,7500],
			["U_I_G_Story_Protagonist_F",nil,7500],
			["U_I_G_resistanceLeader_F",nil,11500],
			["U_O_PilotCoveralls",nil,15000],
			["U_IG_leader","Guerilla Leader",15000],
			["U_O_CombatUniform_ocamo",nil,17500],
			["U_O_CombatUniform_oucamo",nil,17500],
			["U_O_GhillieSuit",nil,35000],
			["U_O_FullGhillie_ard",nil,65000],
			["U_O_FullGhillie_sard",nil,65000],
			["U_O_FullGhillie_lsh",nil,65000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_HelmetO_ocamo",nil,2500],
			["H_HelmetO_oucamo",nil,2500],
			["H_HelmetIA",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_MilCap_dgtl",nil,1200],
			["H_Bandanna_camo",nil,650],
			["H_Beret_blk",nil,500],
			["H_Cap_blk_Raven",nil,500],
			["H_Cap_brn_SPECOPS",nil,500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
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
			["G_Bandanna_shades",nil,50]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_BandollierB_cbr",nil,4500],
			["V_BandollierB_rgr",nil,4500],
			["V_BandollierB_oli",nil,4500],
			["V_BandollierB_blk",nil,4500],
			["V_Chestrig_rgr",nil,6500],
			["V_Chestrig_blk",nil,6500],
			["V_HarnessO_brn",nil,7500],
			["V_TacVest_oli",nil,10000],
			["V_TacVest_blk",nil,10000],
			["V_TacVest_camo",nil,10000],
			["V_TacVest_khk",nil,10000],
			["V_HarnessOGL_gry","Selbstmordweste",500000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};