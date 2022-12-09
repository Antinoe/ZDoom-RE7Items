
Class Herb : CraftingItem
{
	Default
	{
		Inventory.Icon "HERBA0";
		Inventory.PickupMessage "A herb that can be found growing naturally in the Louisiana area.";
		Tag "Herb";
	}
	States
	{
		Spawn:
			HERB A 20;
			HERB A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedHerb",1,"UseItem");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedChemFluid",1,"CraftFirstAidMed");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedStrongChemFluid",1,"CraftStrongFirstAidMed");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Grass",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("A plant containing nutrients that help to heal wounds. Consume to recover a small amount of health.",4);
				A_GiveInventory("Z_SelectedHerb",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_SetBlend("Red",0.25,10);
				A_StartSound("Items/EatPlant",CHAN_AUTO,CHANF_OVERLAP);
				A_GiveInventory("Medikit",1);
				A_TakeInventory("Z_SelectedHerb",1);
			}
			Stop;
	}
}

Class FirstAidMed : CraftingItem
{
	Default
	{
		Inventory.Icon "MED1A0";
		Inventory.PickupSound "Items/PotionUp";
		Inventory.PickupMessage "A bottle of first aid medication.";
		Tag "First Aid Med";
	}
	States
	{
		Spawn:
			MED1 A 20;
			MED1 A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedFirstAidMed",1,"UseItem");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSeparatingAgent",1,"UncraftFirstAidMed");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/PotionUp",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Closes up wounds and promotes cell regeneration. Partially restores health.",4);
				A_GiveInventory("Z_SelectedFirstAidMed",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_SetBlend("Red",0.25,10);
				A_StartSound("Items/PotionUse",CHAN_AUTO,CHANF_OVERLAP);
				A_GiveInventory("Medikit",2);
				A_TakeInventory("Z_SelectedFirstAidMed",1);
			}
			Stop;
	}
}

Class StrongFirstAidMed : CraftingItem
{
	Default
	{
		Inventory.Icon "MED2A0";
		Inventory.PickupSound "Items/PotionUp";
		Inventory.PickupMessage "A bottle of extra-strength first aid medication.";
		Tag "Strong First Aid Med";
	}
	States
	{
		Spawn:
			MED2 A 20;
			MED2 A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedStrongFirstAidMed",1,"UseItem");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSeparatingAgent",1,"UncraftStrongFirstAidMed");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/PotionUp",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Strong recovery medicine. Completely restores health.",4);
				A_GiveInventory("Z_SelectedStrongFirstAidMed",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_SetBlend("Red",0.25,10);
				A_StartSound("Items/PotionUse",CHAN_AUTO,CHANF_OVERLAP);
				A_GiveInventory("Medikit",4);
				A_TakeInventory("Z_SelectedStrongFirstAidMed",1);
			}
			Stop;
	}
}

Class Supplements : CraftingItem
{
	Default
	{
		Inventory.Icon "SUP1A0";
		Inventory.PickupSound "Items/Pills";
		Inventory.PickupMessage "A tin of small white tablets.";
		Tag "Supplements";
	}
	States
	{
		Spawn:
			SUP1 A 20;
			SUP1 A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSupplements",1,"UseItem");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedChemFluid",1,"CraftPsychostimulants");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedStrongChemFluid",1,"CraftNeuroRounds");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Pills",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Pills that affect the nervous system. Can't be used as is: make them into medicine first.",4);
				A_GiveInventory("Z_SelectedSupplements",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("Z_SelectedSupplements",1);
			}
			Fail;
	}
}

Class Psychostimulants : CraftingItem
{
	Default
	{
		Inventory.Icon "SUP2A0";
		Inventory.PickupSound "Items/Pills";
		Inventory.PickupMessage "A tin of small yellow tablets.";
		Tag "Psychostimulants";
	}
	States
	{
		Spawn:
			SUP2 A 20;
			SUP2 A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedPsychostimulants",1,"UseItem");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSeparatingAgent",1,"UncraftPsychostimulants");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Pills",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Medicine that temporarily sharpens the senses,making item detection easier.",4);
				A_GiveInventory("Z_SelectedPsychostimulants",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_StartSound("Items/Pills",CHAN_AUTO,CHANF_OVERLAP);
				A_GiveInventory("PowerPsychostimulants",1);
				A_TakeInventory("Psychostimulants",1);
				A_TakeInventory("Z_SelectedPsychostimulants",1);
			}
			Fail;
	}
}

Class Steroids : CraftingItem
{
	Default
	{
		Inventory.Icon "SYR1A0";
		Inventory.PickupSound "Items/Generic";
		Inventory.PickupMessage "A special syringe containing a yellow liquid.";
		Tag "Steroids";
		Scale 0.75;
	}
	States
	{
		Spawn:
			SYR1 A 20;
			SYR1 A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSteroids",1,"UseItem");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Dramatically strengthens muscles and increases max health. Effect lasts indefinitely.",4);
				A_GiveInventory("Z_SelectedSteroids",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("Z_SelectedSteroids",1);
			}
			Fail;
	}
}

Class Stabilizer : CraftingItem
{
	Default
	{
		Inventory.Icon "SYR2A0";
		Inventory.PickupSound "Items/Generic";
		Inventory.PickupMessage "A special syringe containing a blue liquid.";
		Scale 0.75;
		Tag "Stabilizer";
	}
	States
	{
		Spawn:
			SYR2 A 20;
			SYR2 A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedStabilizer",1,"UseItem");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Relaxes the muscles and reduces stress,making reloading faster. Effect lasts indefinitely.",4);
				A_GiveInventory("Z_SelectedStabilizer",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("Z_SelectedStabilizer",1);
			}
			Fail;
	}
}
