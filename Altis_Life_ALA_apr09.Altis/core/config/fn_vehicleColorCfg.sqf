/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
	Edit: Game Timer
*/

// -GT- plh means placeholder (not used). I did this so that the skins dont get messed up in the DB.

private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	/////////////////////////// CARS //////////////////////////////////
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"], // Brown
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};
	
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["textures\civ_hatchb_kitty.paa","civ"],
			["textures\bp_hatchback.paa","cop"]
			
		];
	};
	
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","plh"], //Black
			["#(ai,64,64,1)Fresnel(1.3,7)","civ"], // Cop Black
			["#(argb,8,8,3)color(0.6,0.3,0.01,1)","civ"], //Yellow			
			["textures\bp_offroad.paa","cop"],
			["textures\medic_offroad.paa","med"],
			["textures\civ_taxi_offroad.paa","taxi"]
		];
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa","civ"], // Real Cop Black
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["#(ai,64,64,1)Fresnel(1.3,7)","plh"], // Ugly Black
			["textures\medic_suv.paa","med"],
			["textures\bp_suv.paa","cop"],
			["textures\civ_suv_manner.paa","civ"],
			["textures\civ_suv_redgull.paa","civ"],
			["textures\civ_suv_press.paa","press"],
			["textures\civ_taxi_suv.paa","taxi"]
		];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["textures\bp_hatchback.paa","cop"] // replaced the black skin
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\MRAP_01\Data\mrap_01_base_co.paa","plh"],
			["textures\bp_hunter_front.paa","cop","textures\bp_hunter_back.paa"],	// replaced the black skin
			["textures\medic_hunter_front.paa","med","textures\medic_hunter_back.paa"],
			["textures\bp_cobra_hunter_front.paa","cop","textures\bp_cobra_hunter_back.paa"]
		];
	};
	
	case "I_MRAP_03_F":
	{
		_ret = 
		[
			["textures\bp_strider.paa","cop"],
			["textures\bp_cobra_strider.paa","cop"],
			["\A3\Soft_F_beta\MRAP_03\Data\mrap_03_ext_indp_co.paa","reb"]
		];
	};
	
	case "B_MRAP_01_hmg_F":
	{
		_ret = 
		[
			["textures\bp_hunter_front.paa","cop","textures\bp_hunter_back.paa"]
		];
	};
	
	/////////////////////////// TRUCKS //////////////////////////////////
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["textures\medic_truck_front.paa","med","textures\medic_truck_back.paa"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"]
		];
	};
	
	/////////////////////////// HELIS //////////////////////////////////
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa","plh"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["#(argb,8,8,3)color(1,1,1,0.8)","plh"], // Ugly white
			["textures\medic_hbird.paa","med"],
			["textures\bp_hbird.paa","cop"],
			["textures\civ_taxi_hbird.paa","taxi"]
		];
	};
	
	case "C_Heli_Light_01_civil_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa","plh"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","plh"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["#(argb,8,8,3)color(1,1,1,0.8)","plh"], // Ugly white
			["textures\medic_hbird.paa","med"],
			["textures\bp_hbird.paa","cop"],
			["textures\civ_taxi_hbird.paa","taxi"]
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","reb"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","plh"],
			["#(argb,8,8,3)color(1,1,1,0.8)","plh"], // ugly white
			["textures\medic_orca.paa","med"]
		];
	};
	
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"]
		];
	};

	case "I_Heli_light_03_unarmed_F":
	{
			_ret = 
			[
				["textures\bp_hellcat_black.paa","cop"],
				["textures\bp_hellcat_polizei.paa","cop"]
			];
	};	
	
	case "B_Heli_Transport_01_F":
	{
		_ret = 
		[
			["textures\bp_ghawk_front.paa","cop","textures\bp_ghawk_back.paa"],
			["textures\bp_cobra_ghawk.paa","cop","textures\bp_ghawk_back.paa"]
		];
	};	
	
};

_ret;