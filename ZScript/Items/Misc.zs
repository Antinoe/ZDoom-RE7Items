
Class ChemFluid : CraftingItem
{
	Default
	{
		Inventory.Icon "CHM1A0";
		Inventory.PickupSound "Items/PlasticBag";
		Inventory.PickupMessage "A bag of yellow liquid.";
		Tag "Chem Fluid";
	}
	States
	{
		Spawn:
			CHM1 A 20;
			CHM1 A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedChemFluid",1,"UseItem");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedHerb",1,"CraftFirstAidMed");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedGunpowder",1,"CraftPistolAmmo");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSolidFuel",1,"CraftBurnerAmmo");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSupplements",1,"CraftPsychostimulants");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				//A_Print("Multi-Purpose Chemical Fluid. Can be used in the creation of medical items and ammo.",4);
				A_Print("A liquid that can be combined to make items. Can't be used as is.",4);
				A_GiveInventory("Z_SelectedChemFluid",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("Z_SelectedChemFluid",1);
			}
			Fail;
	}
}

Class StrongChemFluid : CraftingItem
{
	Default
	{
		Inventory.Icon "CHM2A0";
		Inventory.PickupSound "Items/PlasticBag";
		Inventory.PickupMessage "A bag of red liquid.";
		Tag "Strong Chem Fluid";
	}
	States
	{
		Spawn:
			CHM2 A 20;
			CHM2 A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedStrongChemFluid",1,"UseItem");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedHerb",1,"CraftStrongFirstAidMed");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedGunpowder",1,"CraftEnhancedPistolAmmo");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSolidFuel",1,"CraftFlameAmmo");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSupplements",1,"CraftNeuroAmmo");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Can be combined with other items to change their properties. Stronger than normal Chem Fluid.",4);
				A_GiveInventory("Z_SelectedStrongChemFluid",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("Z_SelectedStrongChemFluid",1);
			}
			Fail;
	}
}

Class SeparatingAgent : CraftingItem
{
	Default
	{
		Inventory.Icon "CHM3A0";
		Inventory.PickupSound "Items/PlasticBag";
		Inventory.PickupMessage "A bag of blue liquid.";
		Tag "Separating Agent";
	}
	States
	{
		Spawn:
			CHM3 A 20;
			CHM3 A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSeparatingAgent",1,"UseItem");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedFirstAidMed",1,"UncraftFirstAidMed");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedStrongFirstAidMed",1,"UncraftStrongFirstAidMed");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedPsychostimulants",1,"UncraftPsychostimulants");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Can be combined with some items to separate the Chem Fluid from them into a usable item.",4);
				A_GiveInventory("Z_SelectedSeparatingAgent",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("Z_SelectedSeparatingAgent",1);
			}
			Fail;
	}
}