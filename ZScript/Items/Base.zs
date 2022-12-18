
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
		-COUNTITEM;
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

Class PowerPsychostimulants : PowerProtection
{
	Default
	{
		+INVENTORY.ADDITIVETIME;
		Powerup.Duration -60;
		Inventory.Icon "SUP2A0";
	}
}

Class UpgradeStaminaRE7 : UpgradeStamina
{
	Default
	{
		Inventory.Amount 1;
		Inventory.MaxAmount 200;
	}
}
