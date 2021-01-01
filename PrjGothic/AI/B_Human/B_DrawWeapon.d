
func void B_DrawWeapon(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_DrawWeapon");
	B_SelectWeapon(slf,oth);
};

func void B_RemoveWeapon(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_RemoveWeapon");
	if(Npc_IsInFightMode(slf,FMODE_MAGIC))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"... Zauber wegstecken!");
		AI_UnreadySpell(slf);
	}
	else if(Npc_HasReadiedMeleeWeapon(slf))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...Nahkampfwaffe gezogen!");
		AI_RemoveWeapon(slf);
	}
	else if(Npc_HasReadiedRangedWeapon(slf))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...Nahkampfwaffe gezogen!");
		AI_StopAim(slf);
		AI_RemoveWeapon(slf);
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...nur Fäuste 'gezogen'!");
		AI_RemoveWeapon(slf);
	};
};

