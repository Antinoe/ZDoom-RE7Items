
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
			TNT1 A 0 A_JumpIfInventory("Z_SelectedGunpowder",1,"CraftHandgunAmmo");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSolidFuel",1,"CraftBurnerFuel");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSupplements",1,"CraftPsychostimulants");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedRustedScrap",1,"CraftDefenseCoin");
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
				A_Print("",0);
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
			TNT1 A 0 A_JumpIfInventory("Z_SelectedGunpowder",1,"CraftEnhancedHandgunAmmo");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSolidFuel",1,"CraftFlameRounds");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSupplements",1,"CraftNeuroRounds");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedRustedScrap",1,"CraftIronDefenseCoin");
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
				A_Print("",0);
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
			TNT1 A 0 A_JumpIfInventory("Z_SelectedHandgunAmmo",1,"UncraftHandgunAmmo");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedEnhancedHandgunAmmo",1,"UncraftEnhancedHandgunAmmo");
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
				A_Print("",0);
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("Z_SelectedSeparatingAgent",1);
			}
			Fail;
	}
}

Class Battery : CraftingItem
{
	Default
	{
		Inventory.Icon "BAT1A0";
		Inventory.PickupSound "Items/Bowl";
		Inventory.PickupMessage "A large storage battery.";
		Tag "Battery";
	}
	States
	{
		Spawn:
			BAT1 A 20;
			BAT1 A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedBattery",1,"UseItem");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedSeparatingAgent",1,"UncraftBattery");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("A large battery used for powering large and heavy equipment.",4);
				A_GiveInventory("Z_SelectedBattery",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("Z_SelectedBattery",1);
			}
			Fail;
	}
}

Class RustedScrap : CraftingItem
{
	Default
	{
		Inventory.Icon "MET1A0";
		Inventory.PickupSound "Items/Bowl";
		Inventory.PickupMessage "A small pile of various rusted scrap parts.";
		Tag "Rusted Scrap";
		Scale 0.50;
	}
	States
	{
		Spawn:
			MET1 A 20;
			MET1 A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedRustedScrap",1,"UseItem");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedChemFluid",1,"CraftDefenseCoin");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedStrongChemFluid",1,"CraftIronDefenseCoin");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedWoodenScrap",1,"CraftWoodenBoards");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("A small pile of various rusted scrap parts. This is a crafting item that cannot be used on its own, but instead combined with something else to produce a new item.",4);
				A_GiveInventory("Z_SelectedRustedScrap",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("Z_SelectedRustedScrap",1);
			}
			Fail;
	}
}

Class WoodenScrap : CraftingItem
{
	Default
	{
		Inventory.Icon "WOODA0";
		Inventory.PickupSound "Items/Bowl";
		Inventory.PickupMessage "A small pile of various wooden scrap parts.";
		Tag "Wooden Scrap";
	}
	States
	{
		Spawn:
			WOOD A 20;
			WOOD A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedWoodenScrap",1,"UseItem");
			TNT1 A 0 A_JumpIfInventory("Z_SelectedRustedScrap",1,"CraftWoodenBoards");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("A small pile of various wooden scrap parts. This is a crafting item that cannot be used on its own, but instead combined with something else to produce a new item.",4);
				A_GiveInventory("Z_SelectedWoodenScrap",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_StartSound("Items/Generic",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("Z_SelectedWoodenScrap",1);
			}
			Fail;
	}
}

Class DefenseCoin : CraftingItem
{
	Default
	{
		Inventory.Icon "COINA0";
		Inventory.PickupSound "Items/Bowl";
		Inventory.PickupMessage "A small copper coin.";
		Tag "Defense Coin";
		Scale 0.50;
	}
	States
	{
		Spawn:
			COIN A 20;
			COIN A 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedDefenseCoin",1,"UseItem");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("These coins are said to have special effects on those who carry them. This one was made to toughen your body.",4);
				A_GiveInventory("Z_SelectedDefenseCoin",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_GiveInventory("DefenseCoinItem",1);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("DefenseCoin",1);
				A_TakeInventory("Z_SelectedDefenseCoin",1);
			}
			Fail;
	}
}

Class IronDefenseCoin : CraftingItem
{
	Default
	{
		Inventory.Icon "COINB0";
		Inventory.PickupSound "Items/Bowl";
		Inventory.PickupMessage "A small silver coin.";
		Tag "Iron Defense Coin";
		Scale 0.50;
	}
	States
	{
		Spawn:
			COIN B 20;
			COIN B 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedIronDefenseCoin",1,"UseItem");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("These coins are said to have special effects on those who carry them. This one makes your body feel tougher.",4);
				A_GiveInventory("Z_SelectedIronDefenseCoin",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_GiveInventory("IronDefenseCoinItem",1);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("IronDefenseCoin",1);
				A_TakeInventory("Z_SelectedIronDefenseCoin",1);
			}
			Fail;
	}
}

Class AssaultCoin : CraftingItem
{
	Default
	{
		Inventory.Icon "COINC0";
		Inventory.PickupSound "Items/Bowl";
		Inventory.PickupMessage "A small golden coin.";
		Tag "Assault Coin";
		Scale 0.50;
	}
	States
	{
		Spawn:
			COIN C 20;
			COIN C 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedAssaultCoin",1,"UseItem");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("These coins are said to have special effects on those who carry them. This one makes you feel stronger.",4);
				A_GiveInventory("Z_SelectedAssaultCoin",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_GiveInventory("AssaultCoinItem",1);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("AssaultCoin",1);
				A_TakeInventory("Z_SelectedAssaultCoin",1);
			}
			Fail;
	}
}

Class WoodenBoards : CraftingItem
{
	Default
	{
		Inventory.Icon "WOODB0";
		Inventory.PickupSound "Items/Bowl";
		Inventory.PickupMessage "Sturdy pieces of wood.";
		Tag "Wooden Boards";
		Scale 0.75;
	}
	States
	{
		Spawn:
			WOOD B 20;
			WOOD B 20 bright;
			Loop;
		Use:
			TNT1 A 0 A_JumpIfInventory("Z_SelectedWoodenBoards",1,"UseItem");
			TNT1 A 0
			{
				A_SetBlend("Black",0.75,10);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("A set of sturdy wooden boards.",4);
				A_GiveInventory("Z_SelectedWoodenBoards",1);
			}
			Fail;
		UseItem:
			TNT1 A 0
			{
				A_Print("",0);
				A_GiveInventory("WoodenBoardsItem",1);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_TakeInventory("WoodenBoards",1);
				A_TakeInventory("Z_SelectedWoodenBoards",1);
			}
			Fail;
	}
}
