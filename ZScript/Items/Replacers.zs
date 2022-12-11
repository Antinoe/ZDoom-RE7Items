
Class RE7HandgunAmmoReplacer : CustomInventory
{
	States
	{
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
		Pickup:
		Use:
			TNT1 A 0 NoDelay
			{
				A_GiveInventory("RocketAmmo",sv_re7_neuroroundsamount);
			}
			Stop;
	}
}
