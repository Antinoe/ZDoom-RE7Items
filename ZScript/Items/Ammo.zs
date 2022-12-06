
Class Gunpowder : CraftingItem
{
	Default
	{
		Inventory.Icon "GUNPA0";
		Inventory.PickupMessage "A small quantity of loose gunpowder.";
		Tag "Gunpowder";
	}
	States
	{
		Spawn:
			GUNP A 20;
			GUNP A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedGunpowder",1,"UseItem");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedChemFluid",1,"CraftHandgunAmmo");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedStrongChemFluid",1,"CraftEnhancedHandgunAmmo");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Gunpowder that can be packed into bullets. Combine with Chem Fluid to create Handgun Ammo.",4);
				A_GiveInventory("Z_SelectedGunpowder",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("Z_SelectedGunpowder",1);
			}
			Fail;
	}
}

Class SolidFuel : CraftingItem
{
	Default
	{
		Inventory.Icon "FUELA0";
		Inventory.PickupMessage "A block of flammable material.";
		Tag "Solid Fuel";
	}
	States
	{
		Spawn:
			FUEL A 20;
			FUEL A 20 bright;
			Loop;
		Pickup:
			TNT1 A 0 A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
			Stop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSolidFuel",1,"UseItem");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedChemFluid",1,"CraftBurnerFuel");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedStrongChemFluid",1,"CraftFlameRounds");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("A flammable solid that burns fiercely when ignited. Can't be used as is.",4);
				A_GiveInventory("Z_SelectedSolidFuel",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("Z_SelectedSolidFuel",1);
			}
			Fail;
	}
}
