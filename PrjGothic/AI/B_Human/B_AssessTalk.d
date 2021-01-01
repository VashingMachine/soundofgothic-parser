
func void B_AssessTalk()
{
	var C_Npc her;
	var C_Npc rock;
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessTalk");
	if(Npc_IsInState(self,ZS_Smoke))
	{
		Npc_ClearAIQueue(self);
		AI_StandupQuick(self);
		AI_StartState(self,ZS_Talk,0,"");
	}
	else if(C_BodyStateContains(self,BS_MOBINTERACT))
	{
		return;
	};
	her = Hlp_GetNpc(PC_Hero);
	rock = Hlp_GetNpc(PC_Rockefeller);
	if((Hlp_GetInstanceID(her) != Hlp_GetInstanceID(hero)) && (Hlp_GetInstanceID(rock) != Hlp_GetInstanceID(hero)))
	{
		B_Say(self,other,"$NOTNOW");
	}
	else
	{
		Npc_SetPercTime(self,3);
		self.aivar[AIV_INVINCIBLE] = FALSE;
		hero.aivar[AIV_INVINCIBLE] = FALSE;
		hero.aivar[AIV_IMPORTANT] = FALSE;
		Npc_ClearAIQueue(self);
		Npc_SetPercTime(self,1);
		if(!C_BodyStateContains(self,BS_SIT) || !Npc_CanSeeNpc(self,hero))
		{
			AI_StartState(self,ZS_Talk,1,"");
		}
		else
		{
			AI_StartState(self,ZS_Talk,0,"");
		};
	};
};

