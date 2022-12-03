
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
