
func void B_AssessThreat()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessThreat");
	if(Npc_CanSeeNpc(self,other))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC kann Bedrohung sehen!");
		if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
		{
			B_SayOverlay(self,other,"$WATCHYOURAIM");
			Npc_SetTempAttitude(self,ATT_NEUTRAL);
		}
		else if(Npc_GetAttitude(self,other) == ATT_NEUTRAL)
		{
			B_SayOverlay(self,other,"$WATCHYOURAIMANGRY");
			Npc_SetTempAttitude(self,ATT_ANGRY);
		}
		else if(Npc_GetAttitude(self,other) == ATT_ANGRY)
		{
			Npc_SetTempAttitude(self,ATT_HOSTILE);
			AI_StartState(self,ZS_AssessEnemy,0,"");
			return;
		};
		Npc_PercDisable(self,PERC_ASSESSTHREAT);
	};
};

