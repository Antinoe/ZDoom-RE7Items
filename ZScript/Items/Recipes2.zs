
Class UncraftingItem : CraftingItem
{
	States
	{
		UncraftFirstAidMed:
			TNT1 A 0 A_JumpIfInventory("SeparatingAgent",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("FirstAidMed",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("White",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/PotionUp",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Chem Fluid and Herb.",2);
				A_GiveInventory("ChemFluid",1);
				A_GiveInventory("Herb",1);
				if (sv_re7_consumeseparatingagent == 1)
				{
					A_TakeInventory("SeparatingAgent",1);
				}
				A_TakeInventory("FirstAidMed",1);
				A_TakeInventory("Z_SelectedSeparatingAgent",1);
				A_TakeInventory("Z_SelectedFirstAidMed",1);
			}
			Fail;
		UncraftStrongFirstAidMed:
			TNT1 A 0 A_JumpIfInventory("SeparatingAgent",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("StrongFirstAidMed",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("White",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/PotionUp",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Strong Chem Fluid and Herb.",2);
				A_GiveInventory("StrongChemFluid",1);
				A_GiveInventory("Herb",1);
				if (sv_re7_consumeseparatingagent == 1)
				{
					A_TakeInventory("SeparatingAgent",1);
				}
				A_TakeInventory("StrongFirstAidMed",1);
				A_TakeInventory("Z_SelectedSeparatingAgent",1);
				A_TakeInventory("Z_SelectedStrongFirstAidMed",1);
			}
			Fail;
		UncraftPsychostimulants:
			TNT1 A 0 A_JumpIfInventory("SeparatingAgent",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("Psychostimulants",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("White",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Pills",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Chem Fluid and Supplements.",2);
				A_GiveInventory("ChemFluid",1);
				A_GiveInventory("Supplements",1);
				if (sv_re7_consumeseparatingagent == 1)
				{
					A_TakeInventory("SeparatingAgent",1);
				}
				A_TakeInventory("Psychostimulants",1);
				A_TakeInventory("Z_SelectedSeparatingAgent",1);
				A_TakeInventory("Z_SelectedPsychostimulants",1);
			}
			Fail;
		UncraftHandgunAmmo:
			TNT1 A 0 A_JumpIfInventory("SeparatingAgent",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("Clip",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("White",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/BulletEmpty",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Gunpowder",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Chem Fluid and Gunpowder.",2);
				A_GiveInventory("ChemFluid",1);
				A_GiveInventory("Gunpowder",1);
				if (sv_re7_consumeseparatingagent == 1)
				{
					A_TakeInventory("SeparatingAgent",1);
				}
				A_TakeInventory("Clip",1);
				A_TakeInventory("Z_SelectedSeparatingAgent",1);
				A_TakeInventory("Z_SelectedHandgunAmmo",1);
			}
			Fail;
		UncraftEnhancedHandgunAmmo:
			TNT1 A 0 A_JumpIfInventory("SeparatingAgent",1,1);
			Goto CraftFail;
			TNT1 A 0 A_JumpIfInventory("Shell",1,1);
			Goto CraftFail;
			TNT1 A 0
			{
				A_SetBlend("White",0.25,10);
				A_StartSound("Items/PlasticBag",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/ShellEmpty",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Gunpowder",CHAN_AUTO,CHANF_OVERLAP);
				A_StartSound("Items/Bowl",CHAN_AUTO,CHANF_OVERLAP);
				A_Print("Crafted Strong Chem Fluid and Gunpowder.",2);
				A_GiveInventory("StrongChemFluid",1);
				A_GiveInventory("Gunpowder",1);
				if (sv_re7_consumeseparatingagent == 1)
				{
					A_TakeInventory("SeparatingAgent",1);
				}
				A_TakeInventory("Shell",1);
				A_TakeInventory("Z_SelectedSeparatingAgent",1);
				A_TakeInventory("Z_SelectedEnhancedHandgunAmmo",1);
			}
			Fail;
	}
}
