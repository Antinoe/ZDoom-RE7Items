
/*
//	Items
*/

Class ChemicalSpawner : RandomSpawner
{
	Default
	{
		DropItem "Chemfluid";
		DropItem "StrongChemfluid";
		DropItem "SeparatingAgent";
	}
}

Class IngredientSpawner : RandomSpawner
{
	Default
	{
		DropItem "Herb";
		DropItem "Supplements";
		DropItem "Psychostimulants";
	}
}

Class MaterialSpawner : RandomSpawner
{
	Default
	{
		DropItem "Gunpowder";
		DropItem "SolidFuel";
	}
}

Class MedicalSpawner : RandomSpawner
{
	Default
	{
		DropItem "FirstAidMed";
		DropItem "StrongFirstAidMed";
	}
}

Class HealthBonusSpawner : RandomSpawner replaces HealthBonus
{
	Default
	{
		DropItem "ChemicalSpawner";
		DropItem "IngredientSpawner";
	}
}

Class ArmorBonusSpawner : RandomSpawner replaces ArmorBonus
{
	Default
	{
		DropItem "ChemicalSpawner";
		DropItem "MaterialSpawner";
	}
}

Class StimpackSpawner : RandomSpawner replaces Stimpack
{
	Default
	{
		DropItem "IngredientSpawner";
		DropItem "MedicalSpawner";
	}
}

Class MedikitSpawner : RandomSpawner replaces Medikit
{
	Default
	{
		DropItem "MedicalSpawner";
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
				A_SpawnItem("Clip");
				/*
				if (CVAR.GetCVAR("re7_compat") = 0)
				{
					A_SpawnItem("Clip",1);
				}
				//Aracnocide
				if (CVAR.GetCVAR("re7_compat") = 1)
				{
					//Light Pistol Ammo
					A_SpawnItem("ARAMSPC1",1);
				}
				*/
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
				A_SpawnItem("Shell",1);
				/*
				if (CVAR.GetCVAR("re7_compat") = 0)
				{
					A_SpawnItem("Shell",1);
				}
				//Aracnocide
				if (CVAR.GetCVAR("re7_compat") = 1)
				{
					//Heavy Pistol Ammo
					A_SpawnItem("ARAMSPR1",1);
				}
				*/
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
				A_SpawnItem("Cell",1);
				/*
				if (CVAR.GetCVAR("re7_compat") = 0)
				{
					A_SpawnItem("Cell",1);
				}
				//Aracnocide
				if (CVAR.GetCVAR("re7_compat") = 1)
				{
					//Rifle Ammo
					A_SpawnItem("ARAMSPH1",1);
				}
				*/
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
				A_SpawnItem("RocketAmmo",2);
				/*
				if (CVAR.GetCVAR("re7_compat") = 0)
				{
					A_SpawnItem("RocketAmmo",2);
				}
				//Aracnocide
				if (CVAR.GetCVAR("re7_compat") = 1)
				{
					//Explosive Ammo
					A_SpawnItem("ARAMSPX1",1);
				}
				*/
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
				A_SpawnItem("RocketAmmo",2);
				/*
				if (CVAR.GetCVAR("re7_compat") = 0)
				{
					A_SpawnItem("RocketAmmo",2);
				}
				//Aracnocide
				if (CVAR.GetCVAR("re7_compat") = 1)
				{
					//Throwable Ammo
					A_SpawnItem("ARAMSPT2",1);
				}
				*/
			}
			Stop;
	}
}
