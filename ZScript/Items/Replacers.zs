
Class RE7HandgunAmmoReplacer : CustomInventory
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_giveorspawnitems == 1)
				{
					A_SpawnItem("Clip",1);
				}
			}
			Stop;
		Pickup:
		Use:
			TNT1 A 0 NoDelay
			{
				A_GiveInventory("Clip",sv_re7_handgunammoamount);
			}
			Stop;
	}
}

Class RE7EnhancedHandgunAmmoReplacer : CustomInventory
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_giveorspawnitems == 1)
				{
					A_SpawnItem("Shell",1);
				}
			}
			Stop;
		Pickup:
		Use:
			TNT1 A 0 NoDelay
			{
				A_GiveInventory("Shell",sv_re7_enhancedhandgunammoamount);
			}
			Stop;
	}
}

Class RE7BurnerFuelReplacer : CustomInventory
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_giveorspawnitems == 1)
				{
					A_SpawnItem("Cell",1);
				}
			}
			Stop;
		Pickup:
		Use:
			TNT1 A 0 NoDelay
			{
				A_GiveInventory("Cell",sv_re7_burnerfuelamount);
			}
			Stop;
	}
}

Class RE7FlameRoundsReplacer : CustomInventory
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_giveorspawnitems == 1)
				{
					A_SpawnItem("RocketAmmo",1);
				}
			}
			Stop;
		Pickup:
		Use:
			TNT1 A 0 NoDelay
			{
				A_GiveInventory("RocketAmmo",sv_re7_flameroundsamount);
			}
			Stop;
	}
}

Class RE7NeuroRoundsReplacer : CustomInventory
{
	States
	{
		Spawn:
			TNT1 A 0 NoDelay
			{
				if (sv_re7_giveorspawnitems == 1)
				{
					A_SpawnItem("RocketAmmo",1);
				}
			}
			Stop;
		Pickup:
		Use:
			TNT1 A 0 NoDelay
			{
				A_GiveInventory("RocketAmmo",sv_re7_neuroroundsamount);
			}
			Stop;
	}
}
