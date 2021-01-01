
func void ZS_GuardPalisade()
{
	GuardPerception();
	PrintDebugNpc(PD_TA_FRAME,"ZS_GuardPalisade");
	AI_Standup(self);
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
	B_InitArmor();
};

func void ZS_GuardPalisade_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_GuardPalisade_Loop");
	if((Npc_GetDistToNpc(self,hero) < HAI_DIST_WATCH) && !C_BodyStateContains(hero,BS_SNEAK))
	{
		B_SmartTurnToNpc(self,hero);
	}
	else
	{
		B_PlayArmor();
		AI_AlignToWP(self);
	};
	AI_Wait(self,1);
};

func void ZS_GuardPalisade_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_GuardPalisade_End");
	B_ExitArmor();
};

