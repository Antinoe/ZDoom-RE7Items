
Class RE7HandgunAmmoReplacer : CustomInventory
{
	States
	{
		Pickup:
		Use:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_giveorspawnitems == 0)
				{
					A_GiveInventory("Clip",sv_re7_handgunammoamount);
				}
				if (sv_re7_giveorspawnitems == 1)
				{
					A_SpawnItem("Clip",1);
				}
			}
			Stop;
	}
}

Class RE7EnhancedHandgunAmmoReplacer : CustomInventory
{
	States
	{
		Pickup:
		Use:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_giveorspawnitems == 0)
				{
					A_GiveInventory("Shell",sv_re7_enhancedhandgunammoamount);
				}
				if (sv_re7_giveorspawnitems == 1)
				{
					A_SpawnItem("Shell",1);
				}
			}
			Stop;
	}
}

Class RE7BurnerFuelReplacer : CustomInventory
{
	States
	{
		Pickup:
		Use:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_giveorspawnitems == 0)
				{
					A_GiveInventory("Cell",sv_re7_burnerfuelamount);
				}
				if (sv_re7_giveorspawnitems == 1)
				{
					A_SpawnItem("Cell",1);
				}
			}
			Stop;
	}
}

Class RE7FlameRoundsReplacer : CustomInventory
{
	States
	{
		Pickup:
		Use:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_giveorspawnitems == 0)
				{
					A_GiveInventory("RocketAmmo",sv_re7_flameroundsamount);
				}
				if (sv_re7_giveorspawnitems == 1)
				{
					A_SpawnItem("RocketAmmo",1);
				}
			}
			Stop;
	}
}

Class RE7NeuroRoundsReplacer : CustomInventory
{
	States
	{
		Pickup:
		Use:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_giveorspawnitems == 0)
				{
					A_GiveInventory("RocketAmmo",sv_re7_neuroroundsamount);
				}
				if (sv_re7_giveorspawnitems == 1)
				{
					A_SpawnItem("RocketAmmo",1);
				}
			}
			Stop;
	}
}
