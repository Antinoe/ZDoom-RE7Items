
/*
//	Items
*/

Class RE7RandomSpawner : RandomSpawner
{
	Default
	{
		DropItem "Chemfluid";
		DropItem "StrongChemfluid";
		DropItem "SeparatingAgent";
		DropItem "Herb";
		DropItem "Supplements";
		DropItem "Psychostimulants";
		DropItem "Gunpowder";
		DropItem "SolidFuel";
		DropItem "FirstAidMed";
		DropItem "StrongFirstAidMed";
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
				}
			}
			Stop;
	}
}

/*
//	Ammo
*/

Class RE7HandgunAmmoSpawner : Actor
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_handgunammoreplacement == 1)
				{
					A_SpawnItem("Clip",1);
				}
				if (sv_re7_handgunammoreplacement == 2)
				{
					A_SpawnItem("ClipBox",1);
				}
				if (sv_re7_handgunammoreplacement == 3)
				{
					A_SpawnItem("Shell",1);
				}
				if (sv_re7_handgunammoreplacement == 4)
				{
					A_SpawnItem("ShellBox",1);
				}
				if (sv_re7_handgunammoreplacement == 5)
				{
					A_SpawnItem("Cell",1);
				}
				if (sv_re7_handgunammoreplacement == 6)
				{
					A_SpawnItem("CellPack",1);
				}
				if (sv_re7_handgunammoreplacement == 7)
				{
					A_SpawnItem("RocketAmmo",1);
				}
				if (sv_re7_handgunammoreplacement == 8)
				{
					A_SpawnItem("RocketBox",1);
				}
			}
			Stop;
	}
}

Class RE7EnhancedHandgunAmmoSpawner : Actor
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_enhancedhandgunammoreplacement == 1)
				{
					A_SpawnItem("Clip",1);
				}
				if (sv_re7_enhancedhandgunammoreplacement == 2)
				{
					A_SpawnItem("ClipBox",1);
				}
				if (sv_re7_enhancedhandgunammoreplacement == 3)
				{
					A_SpawnItem("Shell",1);
				}
				if (sv_re7_enhancedhandgunammoreplacement == 4)
				{
					A_SpawnItem("ShellBox",1);
				}
				if (sv_re7_enhancedhandgunammoreplacement == 5)
				{
					A_SpawnItem("Cell",1);
				}
				if (sv_re7_enhancedhandgunammoreplacement == 6)
				{
					A_SpawnItem("CellPack",1);
				}
				if (sv_re7_enhancedhandgunammoreplacement == 7)
				{
					A_SpawnItem("RocketAmmo",1);
				}
				if (sv_re7_enhancedhandgunammoreplacement == 8)
				{
					A_SpawnItem("RocketBox",1);
				}
			}
			Stop;
	}
}

Class RE7BurnerFuelSpawner : Actor
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_burnerfuelreplacement == 1)
				{
					A_SpawnItem("Clip",1);
				}
				if (sv_re7_burnerfuelreplacement == 2)
				{
					A_SpawnItem("ClipBox",1);
				}
				if (sv_re7_burnerfuelreplacement == 3)
				{
					A_SpawnItem("Shell",1);
				}
				if (sv_re7_burnerfuelreplacement == 4)
				{
					A_SpawnItem("ShellBox",1);
				}
				if (sv_re7_burnerfuelreplacement == 5)
				{
					A_SpawnItem("Cell",1);
				}
				if (sv_re7_burnerfuelreplacement == 6)
				{
					A_SpawnItem("CellPack",1);
				}
				if (sv_re7_burnerfuelreplacement == 7)
				{
					A_SpawnItem("RocketAmmo",1);
				}
				if (sv_re7_burnerfuelreplacement == 8)
				{
					A_SpawnItem("RocketBox",1);
				}
			}
			Stop;
	}
}

Class RE7FlameRoundsSpawner : Actor
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_flameroundsreplacement == 1)
				{
					A_SpawnItem("Clip",1);
				}
				if (sv_re7_flameroundsreplacement == 2)
				{
					A_SpawnItem("ClipBox",1);
				}
				if (sv_re7_flameroundsreplacement == 3)
				{
					A_SpawnItem("Shell",1);
				}
				if (sv_re7_flameroundsreplacement == 4)
				{
					A_SpawnItem("ShellBox",1);
				}
				if (sv_re7_flameroundsreplacement == 5)
				{
					A_SpawnItem("Cell",1);
				}
				if (sv_re7_flameroundsreplacement == 6)
				{
					A_SpawnItem("CellPack",1);
				}
				if (sv_re7_flameroundsreplacement == 7)
				{
					A_SpawnItem("RocketAmmo",1);
				}
				if (sv_re7_flameroundsreplacement == 8)
				{
					A_SpawnItem("RocketBox",1);
				}
			}
			Stop;
	}
}

Class RE7NeuroRoundsSpawner : Actor
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_neuroroundsreplacement == 1)
				{
					A_SpawnItem("Clip",1);
				}
				if (sv_re7_neuroroundsreplacement == 2)
				{
					A_SpawnItem("ClipBox",1);
				}
				if (sv_re7_neuroroundsreplacement == 3)
				{
					A_SpawnItem("Shell",1);
				}
				if (sv_re7_neuroroundsreplacement == 4)
				{
					A_SpawnItem("ShellBox",1);
				}
				if (sv_re7_neuroroundsreplacement == 5)
				{
					A_SpawnItem("Cell",1);
				}
				if (sv_re7_neuroroundsreplacement == 6)
				{
					A_SpawnItem("CellPack",1);
				}
				if (sv_re7_neuroroundsreplacement == 7)
				{
					A_SpawnItem("RocketAmmo",1);
				}
				if (sv_re7_neuroroundsreplacement == 8)
				{
					A_SpawnItem("RocketBox",1);
				}
			}
			Stop;
	}
}
