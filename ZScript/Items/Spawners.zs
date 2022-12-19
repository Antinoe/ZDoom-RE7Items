
/*
//	Items
*/

Class RE7RandomSpawner : RandomSpawner
{
	Default
	{
		DropItem "Chemfluid",190,10;
		DropItem "StrongChemfluid",190,10;
		DropItem "SeparatingAgent",190,10;
		DropItem "Herb",190,10;
		DropItem "FirstAidMed",190,10;
		DropItem "StrongFirstAidMed",190,10;
		DropItem "Supplements",190,10;
		DropItem "Psychostimulants",190,10;
		DropItem "Gunpowder",190,10;
		DropItem "SolidFuel",190,10;
		DropItem "EmptyHandgunAmmo",190,10;
		DropItem "EmptyEnhancedHandgunAmmo",190,10;
		DropItem "Steroids",190,10;
		DropItem "Stabilizer",190,10;
		DropItem "RustedScrap",190,10;
		DropItem "WoodenScrap",190,10;
		DropItem "DefenseCoin",190,10;
		DropItem "IronDefenseCoin",190,10;
		DropItem "AssaultCoin",190,10;
		DropItem "WoodenBoards",190,10;
	}
}

Class RE7RandomSpawnerCommon : RandomSpawner
{
	Default
	{
		DropItem "Chemfluid",190,10;
		DropItem "StrongChemfluid",190,10;
		DropItem "SeparatingAgent",190,10;
		DropItem "Herb",190,10;
		DropItem "Supplements",190,10;
		DropItem "Gunpowder",190,10;
		DropItem "SolidFuel",190,10;
		DropItem "RustedScrap",190,10;
		DropItem "WoodenScrap",190,10;
	}
}

Class RE7RandomSpawnerUncommon : RandomSpawner
{
	Default
	{
		DropItem "FirstAidMed",190,10;
		DropItem "StrongFirstAidMed",190,10;
		DropItem "Psychostimulants",190,10;
		DropItem "EmptyHandgunAmmo",190,10;
		DropItem "EmptyEnhancedHandgunAmmo",190,10;
	}
}

Class RE7RandomSpawnerRare : RandomSpawner
{
	Default
	{
		DropItem "Steroids",190,10;
		DropItem "Stabilizer",190,10;
		DropItem "DefenseCoin",190,10;
		DropItem "IronDefenseCoin",190,10;
		DropItem "AssaultCoin",190,10;
		DropItem "WoodenBoards",190,10;
	}
}

Class HealthBonusSpawner : Actor replaces HealthBonus
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_enableitemreplacements == 0)
				{
					A_SpawnItem("HealthBonus",1);
				}
				if (sv_re7_enableitemreplacements == 1)
				{
					A_SpawnItem("RE7RandomSpawner",1);
					A_SpawnItem("RE7RandomSpawnerCommon",1);
				}
			}
			Stop;
	}
}

Class ArmorBonusSpawner : Actor replaces ArmorBonus
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_enableitemreplacements == 0)
				{
					A_SpawnItem("ArmorBonus",1);
				}
				if (sv_re7_enableitemreplacements == 1)
				{
					A_SpawnItem("RE7RandomSpawner",1);
					A_SpawnItem("RE7RandomSpawnerCommon",1);
				}
			}
			Stop;
	}
}

Class StimpackSpawner : Actor replaces Stimpack
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_enableitemreplacements == 0)
				{
					A_SpawnItem("Stimpack",1);
				}
				if (sv_re7_enableitemreplacements == 1)
				{
					A_SpawnItem("RE7RandomSpawner",1);
					A_SpawnItem("RE7RandomSpawnerCommon",1);
				}
			}
			Stop;
	}
}

Class MedikitSpawner : Actor replaces Medikit
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_enableitemreplacements == 0)
				{
					A_SpawnItem("Medikit",1);
				}
				if (sv_re7_enableitemreplacements == 1)
				{
					A_SpawnItem("RE7RandomSpawner",1);
					A_SpawnItem("RE7RandomSpawnerUncommon",1);
					A_SpawnItem("RE7RandomSpawnerRare",1);
				}
			}
			Stop;
	}
}

Class GreenArmorSpawner : Actor replaces GreenArmor
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_enableitemreplacements == 0)
				{
					A_SpawnItem("GreenArmor",1);
				}
				if (sv_re7_enableitemreplacements == 1)
				{
					A_SpawnItem("RE7RandomSpawner",1);
					A_SpawnItem("RE7RandomSpawnerUncommon",1);
					A_SpawnItem("RE7RandomSpawnerRare",1);
				}
			}
			Stop;
	}
}

Class BlueArmorSpawner : Actor replaces BlueArmor
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_enableitemreplacements == 0)
				{
					A_SpawnItem("BlueArmor",1);
				}
				if (sv_re7_enableitemreplacements == 1)
				{
					A_SpawnItem("RE7RandomSpawner",1);
					A_SpawnItem("RE7RandomSpawnerUncommon",1);
					A_SpawnItem("RE7RandomSpawnerRare",1);
				}
			}
			Stop;
	}
}
