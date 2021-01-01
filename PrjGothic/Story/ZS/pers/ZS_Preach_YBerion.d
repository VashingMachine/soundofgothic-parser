
func void ZS_Preach_YBerion()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Preach_YBerion");
	B_SetPerception(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(!Npc_IsOnFP(self,"PREACH"))
	{
		AI_GotoWP(self,self.wp);
	};
	if(Wld_IsFPAvailable(self,"PREACH"))
	{
		AI_GotoFP(self,"PREACH");
	};
	AI_AlignToFP(self);
};

func void ZS_Preach_YBerion_Loop()
{
	var int preachtime;
	PrintDebugNpc(PD_TA_LOOP,"ZS_Preach_YBerion_Loop");
	preachtime = Hlp_Random(100);
	if(preachtime <= 3)
	{
		AI_Output(self,NULL,"ZS_Preach_YBerion01");	//*MISSING TEXT*
	}
	else if(preachtime >= 98)
	{
		AI_Output(self,NULL,"ZS_Preach_YBerion02");	//*MISSING TEXT*
	}
	else if(preachtime >= 95)
	{
		AI_Output(self,NULL,"ZS_Preach_YBerion03");	//*MISSING TEXT*
	};
	AI_Wait(self,1);
};

func void ZS_Preach_YBerion_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Preach_YBerion_End");
};

