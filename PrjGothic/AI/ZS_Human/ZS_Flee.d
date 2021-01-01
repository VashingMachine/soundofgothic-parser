
func void ZS_Flee()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Flee");
	PrintGlobals(PD_ZS_Check);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	C_ZSInit();
	AI_SetWalkMode(self,NPC_RUN);
	Mdl_ApplyOverlayMds(self,"HUMANS_FLEE.MDS");
	if(Npc_IsPlayer(other))
	{
		Npc_SetTempAttitude(self,ATT_HOSTILE);
	};
};

func int ZS_Flee_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_Flee_Loop");
	if(!Hlp_IsValidNpc(other))
	{
		PrintDebugNpc(PD_ZS_Check,"...Gegner nicht mehr gültig!");
		return LOOP_END;
	}
	else if(Npc_GetDistToNpc(self,other) > HAI_DIST_ABORT_FLEE)
	{
		PrintDebugNpc(PD_ZS_Check,"...Gegner weit genug weg -> Flucht abbrechen!");
		return LOOP_END;
	}
	else if(C_NpcIsDown(other))
	{
		PrintDebugNpc(PD_ZS_Check,"...Gegner nicht mehr kampffähig!");
		return LOOP_END;
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...Gegner noch zu nah dran!");
		Npc_SetTarget(self,other);
		Npc_GetTarget(self);
		AI_Flee(self);
		AI_Wait(self,1);
		return LOOP_CONTINUE;
	};
};

func void ZS_Flee_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Flee_End");
	Mdl_RemoveOverlayMds(self,"HUMANS_FLEE.MDS");
	B_LookAround();
	AI_StartState(self,ZS_HealSelf,1,"");
};

