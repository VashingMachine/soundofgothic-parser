
func void ZS_Berzerk()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Berzerk");
	PrintGlobals(PD_ZS_DETAIL);
	B_FullStop(self);
	B_SayOverlay(self,NULL,"$Berzerk");
	AI_PlayAni(self,"T_PSI_VICTIM");
	AI_SetWalkMode(self,NPC_RUN);
};

func int ZS_Berzerk_Loop()
{
	var int random;
	PrintDebugNpc(PD_ZS_LOOP,"ZS_Berzerk_Loop");
	if(Npc_GetStateTime(self) > SPL_TIME_BERZERK)
	{
		B_FullStop(self);
		return LOOP_END;
	};
	Npc_GetTarget(self);
	if(Hlp_IsValidNpc(other) && !C_NpcIsDown(other) && !Npc_IsPlayer(other))
	{
		Npc_GetTarget(self);
		AI_Attack(self);
		AI_Wait(self,0.1);
		if(Hlp_Random(100) < 20)
		{
			B_SayOverlay(self,other,"$Berzerk");
		};
		return LOOP_CONTINUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...kein gültiges Ziel mehr!");
		Npc_PerceiveAll(self);
		if(Wld_DetectNpcEx(self,-1,NOFUNC,-1,FALSE))
		{
			PrintDebugNpc(PD_ZS_Check,"...Neues Ziel entdeckt!");
			PrintGlobals(PD_ZS_DETAIL);
			Npc_SetTarget(self,other);
			return LOOP_CONTINUE;
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"...kein neues Ziel mehr vorhanden!");
			PrintGlobals(PD_ZS_DETAIL);
			AI_GotoWP(self,Npc_GetNearestWP(self));
			B_SayOverlay(self,NULL,"$Berzerk");
			AI_PlayAni(self,"T_SEARCH");
			AI_GotoWP(self,Npc_GetNextWP(self));
			B_SayOverlay(self,NULL,"$Berzerk");
			AI_PlayAni(self,"T_SEARCH");
		};
	};
};

func void ZS_Berzerk_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Berzerk_End");
	B_SayOverlay(self,NULL,"$Berzerk");
	AI_PlayAni(self,"T_PSI_VICTIM");
	AI_Wait(self,2);
	AI_ContinueRoutine(self);
};

