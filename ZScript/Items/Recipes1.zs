
Class CraftingItem : BasicItem
{
	States
	{
		CraftFail:
			TNT1 A 0
			{
				A_SetBlend("Black",0.25,10);
				A_Print("Missing required components.",2);
				A_TakeInventory("Z_SelectedChemFluid",1);
				A_TakeInventory("Z_SelectedStrongChemFluid",1);
				A_TakeInventory("Z_SelectedSeparatingAgent",1);
				A_TakeInventory("Z_SelectedHerb",1);
				A_TakeInventory("Z_SelectedFirstAidMed",1);
				A_TakeInventory("Z_SelectedStrongFirstAidMed",1);
				A_TakeInventory("Z_SelectedGunpowder",1);
				A_TakeInventory("Z_SelectedSolidFuel",1);
				A_TakeInventory("Z_SelectedSupplements",1);
				A_TakeInventory("Z_SelectedPsychostimulants",1);
				A_TakeInventory("Z_SelectedSteroids",1);
				A_TakeInventory("Z_SelectedStabilizer",1);
				A_TakeInventory("Z_SelectedHandgunAmmo",1);
				A_TakeInventory("Z_SelectedEnhancedHandgunAmmo",1);
				//^ Here,we take away all Item Selections so that it isn't
				//a repititious time of constantly trying to craft every time
				//a craftable item is used when there lacks required items.
			}
			Fail;
		CraftFirstAidMed:
			TNT1 A 0 A_JumpIfInventory("ChemFluid",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("Herb",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("Green",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Grass",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/MixHerb",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/MixChemFluid",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted First Aid.",2);
				A_GiveInventory("FirstAidMed",1);
				A_TakeInventory("ChemFluid",1);
				A_TakeInventory("Herb",1);
				A_TakeInventory("Z_SelectedChemFluid",1);
				A_TakeInventory("Z_SelectedHerb",1);
			}
			Fail;
			//^ Instead of using 'Stop' to end the item states,'Fail' will
			//take its place. Why? Because 'Stop' ends up taking 1 of the item.
			//We don't want this for Crafting sequences because it'll take
			//an extra item away.
		CraftStrongFirstAidMed:
			TNT1 A 0 A_JumpIfInventory("StrongChemFluid",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("Herb",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("Green",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Grass",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/MixHerb",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/MixChemFluid",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted First Aid.",2);
				A_GiveInventory("StrongFirstAidMed",1);
				A_TakeInventory("StrongChemFluid",1);
				A_TakeInventory("Herb",1);
				A_TakeInventory("Z_SelectedStrongChemFluid",1);
				A_TakeInventory("Z_SelectedHerb",1);
			}
			Fail;
		CraftPsychostimulants:
			TNT1 A 0 A_JumpIfInventory("ChemFluid",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("Supplements",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("LightBlue",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Pills",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/MixHerb",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Psychostimulants.",2);
				A_GiveInventory("Psychostimulants",1);
				A_TakeInventory("ChemFluid",1);
				A_TakeInventory("Supplements",1);
				A_TakeInventory("Z_SelectedChemFluid",1);
				A_TakeInventory("Z_SelectedSupplements",1);
			}
			Fail;
		CraftHandgunAmmo:
			TNT1 A 0 A_JumpIfInventory("ChemFluid",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("Gunpowder",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("Yellow",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/MixGunpowder",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Weapons/BulletEmpty",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Handgun Ammo.",2);
				//A_SpawnItem("RE7HandgunAmmoSpawner",1);
				A_GiveInventory("Clip",10);
				A_TakeInventory("ChemFluid",1);
				A_TakeInventory("Gunpowder",1);
				A_TakeInventory("Z_SelectedChemFluid",1);
				A_TakeInventory("Z_SelectedGunpowder",1);
			}
			Fail;
		CraftEnhancedHandgunAmmo:
			TNT1 A 0 A_JumpIfInventory("StrongChemFluid",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("Gunpowder",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("DarkYellow",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/MixGunpowder",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Weapons/ShellEmpty",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Enhanced Handgun Ammo.",2);
				//A_SpawnItem("RE7EnhancedHandgunAmmoSpawner",1);
				A_GiveInventory("Shell",5);
				A_TakeInventory("StrongChemFluid",1);
				A_TakeInventory("Gunpowder",1);
				A_TakeInventory("Z_SelectedStrongChemFluid",1);
				A_TakeInventory("Z_SelectedGunpowder",1);
			}
			Fail;
		CraftBurnerFuel:
			TNT1 A 0 A_JumpIfInventory("ChemFluid",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("SolidFuel",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("Orange",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/MixChemFluid",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Burner Fuel.",2);
				//A_SpawnItem("RE7BurnerFuelSpawner",1);
				A_GiveInventory("Cell",100);
				A_TakeInventory("ChemFluid",1);
				A_TakeInventory("SolidFuel",1);
				A_TakeInventory("Z_SelectedChemFluid",1);
				A_TakeInventory("Z_SelectedSolidFuel",1);
			}
			Fail;
		CraftFlameRounds:
			TNT1 A 0 A_JumpIfInventory("StrongChemFluid",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("SolidFuel",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("Orange",0.25,10);
				A_StartSound("Items/MixChemFluid",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Flame Rounds.",2);
				//A_SpawnItem("RE7FlameRoundsSpawner",1);
				A_GiveInventory("RocketAmmo",2);
				A_TakeInventory("StrongChemFluid",1);
				A_TakeInventory("SolidFuel",1);
				A_TakeInventory("Z_SelectedStrongChemFluid",1);
				A_TakeInventory("Z_SelectedSolidFuel",1);
			}
			Fail;
		CraftNeuroRounds:
			TNT1 A 0 A_JumpIfInventory("StrongChemFluid",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("Supplements",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("Orange",0.25,10);
				A_StartSound("Items/MixChemFluid",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Neuro Rounds.",2);
				//A_SpawnItem("RE7NeuroRoundsSpawner",1);
				A_GiveInventory("RocketAmmo",2);
				A_TakeInventory("StrongChemFluid",1);
				A_TakeInventory("Supplements",1);
				A_TakeInventory("Z_SelectedStrongChemFluid",1);
				A_TakeInventory("Z_SelectedSupplements",1);
			}
			Fail;
	/*
	//Uncrafting
	*/
		UncraftFirstAidMed:
			TNT1 A 0 A_JumpIfInventory("SeparatingAgent",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("FirstAidMed",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("White",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/PotionUp",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Chem Fluid and Herb.",2);
				A_GiveInventory("ChemFluid",1);
				A_GiveInventory("Herb",1);
				if (sv_re7_consumeseparatingagent == 1)
				{
					A_TakeInventory("SeparatingAgent",1);
				}
				A_TakeInventory("FirstAidMed",1);
				A_TakeInventory("Z_SelectedSeparatingAgent",1);
				A_TakeInventory("Z_SelectedFirstAidMed",1);
			}
			Fail;
		UncraftStrongFirstAidMed:
			TNT1 A 0 A_JumpIfInventory("SeparatingAgent",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("StrongFirstAidMed",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("White",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/PotionUp",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Strong Chem Fluid and Herb.",2);
				A_GiveInventory("StrongChemFluid",1);
				A_GiveInventory("Herb",1);
				if (sv_re7_consumeseparatingagent == 1)
				{
					A_TakeInventory("SeparatingAgent",1);
				}
				A_TakeInventory("StrongFirstAidMed",1);
				A_TakeInventory("Z_SelectedSeparatingAgent",1);
				A_TakeInventory("Z_SelectedStrongFirstAidMed",1);
			}
			Fail;
		UncraftPsychostimulants:
			TNT1 A 0 A_JumpIfInventory("SeparatingAgent",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("Psychostimulants",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("White",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Pills",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Chem Fluid and Supplements.",2);
				A_GiveInventory("ChemFluid",1);
				A_GiveInventory("Supplements",1);
				if (sv_re7_consumeseparatingagent == 1)
				{
					A_TakeInventory("SeparatingAgent",1);
				}
				A_TakeInventory("Psychostimulants",1);
				A_TakeInventory("Z_SelectedSeparatingAgent",1);
				A_TakeInventory("Z_SelectedPsychostimulants",1);
			}
			Fail;
		UncraftHandgunAmmo:
			TNT1 A 0 A_JumpIfInventory("SeparatingAgent",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("Clip",10,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("White",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/BulletEmpty",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Gunpowder",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Chem Fluid and Gunpowder.",2);
				A_GiveInventory("ChemFluid",1);
				A_GiveInventory("Gunpowder",1);
				if (sv_re7_consumeseparatingagent == 1)
				{
					A_TakeInventory("SeparatingAgent",1);
				}
				A_TakeInventory("Clip",10);
				A_TakeInventory("Z_SelectedSeparatingAgent",1);
				A_TakeInventory("Z_SelectedHandgunAmmo",1);
			}
			Fail;
		UncraftEnhancedHandgunAmmo:
			TNT1 A 0 A_JumpIfInventory("SeparatingAgent",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("Shell",10,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("White",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/ShellEmpty",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Gunpowder",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Strong Chem Fluid and Gunpowder.",2);
				A_GiveInventory("StrongChemFluid",1);
				A_GiveInventory("Gunpowder",1);
				if (sv_re7_consumeseparatingagent == 1)
				{
					A_TakeInventory("SeparatingAgent",1);
				}
				A_TakeInventory("Shell",10);
				A_TakeInventory("Z_SelectedSeparatingAgent",1);
				A_TakeInventory("Z_SelectedEnhancedHandgunAmmo",1);
			}
			Fail;
	}
}
