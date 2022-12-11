
Class Gunpowder : CraftingItem
{
	Default
	{
		Inventory.Icon "GUNPA0";
		Inventory.PickupSound "Items/Bowl";
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
				A_Print("",0);
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
		Inventory.PickupSound "Items/Bowl";
		Inventory.PickupMessage "A block of flammable material.";
		Tag "Solid Fuel";
	}
	States
	{
		Spawn:
			FUEL A 20;
			FUEL A 20 bright;
			Loop;
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
				A_Print("",0);
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("Z_SelectedSolidFuel",1);
			}
			Fail;
	}
}

Class EmptyHandgunAmmo : CraftingItem
{
	Default
	{
		Inventory.MaxAmount 1;
		Inventory.Icon "AMM1A0";
		Inventory.PickupSound "Items/Clothing";
		Inventory.PickupMessage "Standard handgun ammo.";
		Tag "Empty Handgun Ammo Box";
	}
	States
	{
		Spawn:
			AMM1 A 20;
			AMM1 A 20 bright;
			Loop;
			/*
		Pickup:
			TNT1 A 0 A_JumpIfInventory("EmptyHandgunAmmo",1,"Give");
			Stop;
		Give:
			TNT1 A 0 A_GiveInventory("Gunpowder",2);
			Stop;
			*/
			// Couldn't get this to work.. I'll just leave it here for reference later.
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedHandgunAmmo",1,"UseItem");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSeparatingAgent",1,"UncraftHandgunAmmo");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Clothing",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("A box of handgun bullets. These rounds can be used with most pistols.",4);
				A_GiveInventory("Z_SelectedHandgunAmmo",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("Z_SelectedHandgunAmmo",1);
			}
			Fail;
	}
}

Class EmptyEnhancedHandgunAmmo : CraftingItem
{
	Default
	{
		Inventory.MaxAmount 1;
		Inventory.Icon "AMM2A0";
		Inventory.PickupSound "Items/Clothing";
		Inventory.PickupMessage "Ammo packed with extra gunpowder, making it more powerful.";
		Tag "Empty Enhanced Handgun Ammo Box";
	}
	States
	{
		Spawn:
			AMM2 A 20;
			AMM2 A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedEnhancedHandgunAmmo",1,"UseItem");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSeparatingAgent",1,"UncraftEnhancedHandgunAmmo");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Clothing",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("A box of enhanced handgun bullets. These rounds are more powerful and have greater stopping power than the standard Handgun Ammo. These rounds can be used with most pistols.",4);
				A_GiveInventory("Z_SelectedEnhancedHandgunAmmo",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("Z_SelectedEnhancedHandgunAmmo",1);
			}
			Fail;
	}
}
