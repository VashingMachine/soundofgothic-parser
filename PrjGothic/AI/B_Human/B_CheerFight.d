
func void B_CheerFight()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_CheerFight");
	if(Npc_GetStateTime(self) > 5)
	{
		Npc_SetStateTime(self,0);
		if(Npc_GetTempAttitude(self,victim) == ATT_FRIENDLY)
		{
			PrintDebugNpc(PD_ZS_Check,"B_CheerFight // Friendly victim");
			if((Npc_GetTempAttitude(self,other) == ATT_NEUTRAL) || (Npc_GetTempAttitude(self,other) == ATT_ANGRY))
			{
				PrintDebugNpc(PD_ZS_Check,"B_CheerFight // Friendly victim // neutral Attacker");
				B_Say(self,NULL,"$OOH");
				AI_PlayAni(self,"T_WATCHFIGHT_OHNO");
			}
			else if(Npc_GetTempAttitude(self,other) == ATT_FRIENDLY)
			{
				PrintDebugNpc(PD_ZS_Check,"B_CheerFight // Friendly victim // friendly Attacker");
				B_Say(self,NULL,"$CHEERFIGHT");
				AI_PlayAni(self,"T_WATCHFIGHT_YEAH");
			};
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"B_CheerFight // No Friendly victim");
			if(Npc_GetTempAttitude(self,other) == ATT_FRIENDLY)
			{
				PrintDebugNpc(PD_ZS_Check,"B_CheerFight // No Friendly victim // friendly aggressor");
				B_Say(self,NULL,"$CHEERFRIEND");
				AI_PlayAni(self,"T_WATCHFIGHT_YEAH");
			}
			else
			{
				PrintDebugNpc(PD_ZS_Check,"B_CheerFight // NO Friendly victim //  NO friendly aggressor");
				B_Say(self,NULL,"$CHEERFIGHT");
				AI_PlayAni(self,"T_WATCHFIGHT_YEAH");
			};
		};
	};
};

