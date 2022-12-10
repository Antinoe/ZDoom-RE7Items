
Class BasicItem : CustomInventory
{
	Default
	{
		Inventory.Amount 1;
		Inventory.MaxAmount 99;
		Inventory.InterHubAmount 99;
		+INVENTORY.NOSCREENFLASH;
		+INVENTORY.INVBAR;
		+INVENTORY.ALWAYSPICKUP;
		-SOLID;
		+COUNTITEM;
		Inventory.PickupSound "Items/Generic";
		Inventory.Icon "CLIPA0";
		Tag "Item";
	}
	States
	{
		Spawn:
			CLIP A 20;
			CLIP A 20 bright;
			Loop;
		Use:
			TNT1 A 0
			{
				//Set Timer so that selected item tokens are removed at a certain point.
				/*
				A_SetBlend("White",0.25,10);
				A_StartSound("Items/ItemSmall",CHAN_AUTO,CHANF_OVERLAP);
				A_GiveInventory("HealthBonus",3);
				HealThing(10,0);
				A_SpawnItemEx("Stimpack",48,0,0,0,0,0,0,0,0,919);
				*/
			}
			Stop;
	}
}

//Here,we declare the many dummy items that will be used for Item Crafting.
Class Z_DummyItem : Inventory
{
	Default
	{
		Inventory.MaxAmount 1;
	}
}
Class Z_SelectedChemFluid : Z_DummyItem {}
Class Z_SelectedStrongChemFluid : Z_DummyItem {}
Class Z_SelectedSeparatingAgent : Z_DummyItem {}
Class Z_SelectedHerb : Z_DummyItem {}
Class Z_SelectedFirstAidMed : Z_DummyItem {}
Class Z_SelectedStrongFirstAidMed : Z_DummyItem {}
Class Z_SelectedGunpowder : Z_DummyItem {}
Class Z_SelectedSolidFuel : Z_DummyItem {}
Class Z_SelectedSupplements : Z_DummyItem {}
Class Z_SelectedPsychostimulants : Z_DummyItem {}
Class Z_SelectedSteroids : Z_DummyItem {}
Class Z_SelectedStabilizer : Z_DummyItem {}
Class Z_SelectedHandgunAmmo : Z_DummyItem {}
Class Z_SelectedEnhancedHandgunAmmo : Z_DummyItem {}

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
				A_SpawnItem("RE7HandgunAmmoSpawner",1);
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
				A_SpawnItem("RE7EnhancedHandgunAmmoSpawner",1);
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
				A_SpawnItem("RE7BurnerFuelSpawner",1);
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
				A_SpawnItem("RE7FlameRoundsSpawner",1);
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
				A_SpawnItem("RE7NeuroRoundsSpawner",1);
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
				A_Print("Crafted Chem Fluid.",2);
				A_GiveInventory("ChemFluid",1);
				A_GiveInventory("Herb",1);
				A_TakeInventory("SeparatingAgent",1);
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
				A_Print("Crafted Strong Chem Fluid.",2);
				A_GiveInventory("StrongChemFluid",1);
				A_GiveInventory("Herb",1);
				A_TakeInventory("SeparatingAgent",1);
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
				A_Print("Crafted Chem Fluid.",2);
				A_GiveInventory("ChemFluid",1);
				A_GiveInventory("Supplements",1);
				A_TakeInventory("SeparatingAgent",1);
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
				A_Print("Crafted Chem Fluid.",2);
				A_GiveInventory("ChemFluid",1);
				A_GiveInventory("Gunpowder",1);
				A_TakeInventory("SeparatingAgent",1);
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
				A_Print("Crafted Strong Chem Fluid.",2);
				A_GiveInventory("StrongChemFluid",1);
				A_GiveInventory("Gunpowder",1);
				A_TakeInventory("SeparatingAgent",1);
				A_TakeInventory("Shell",10);
				A_TakeInventory("Z_SelectedSeparatingAgent",1);
				A_TakeInventory("Z_SelectedEnhancedHandgunAmmo",1);
			}
			Fail;
	}
}

Class PowerPsychostimulants : PowerProtection
{
	Default
	{
		+INVENTORY.ADDITIVETIME;
		Powerup.Duration -60;
		Inventory.Icon "SUP2A0";
	}
}