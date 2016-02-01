/*
	Author: Game Timer
	Notes: Gets called in onTakeItem, inventoryOpened, inventoryClosed, spawnConfirm, 
	clothing.hpp, revived, loadGear, buyClothes
*/

switch (playerSide) do
{
	case civilian:
	{
		if (uniform player == "U_C_Poloshirt_redwhite") then {
			player setObjectTextureGlobal [0,"textures\civ_uniform_ala.paa"];
		}
		else
		{
			// don't do anything, mofo!
		};
	};
	
	case west:
	{
		if (uniform player == "U_BG_Guerilla2_3") then {
			player setObjectTextureGlobal[0,"textures\bp_uniform2.paa"];
			(unitBackpack player) setObjectTextureGlobal [0,""];
		}
		else
		{
			if (uniform player == "U_B_CombatUniform_mcam") then {
				player setObjectTextureGlobal [0,"textures\bp_cobra_uniform.paa"];
				(unitBackpack player) setObjectTextureGlobal [0,""];
			};
		};
	};
	
	case independent:
	{
		if (uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal[0,"textures\medic_uniform.paa"];
			(unitBackpack player) setObjectTextureGlobal [0,""];
		};
	};
};