
func void ZS_TestHangAround()
{
	Npc_PercEnable(self,PERC_ASSESSENTERROOM,B_AssessEnterRoom);
	AI_GotoWP(self,self.wp);
};

func void ZS_TestHangAround_Loop()
{
	AI_PlayAni(self,"T_PERCEPTION");
};

func void ZS_TestHangAround_End()
{
};

func void ZS_TestPerception()
{
	Npc_PercEnable(self,PERC_ASSESSTALK,TestPrint);
};

func void ZS_TestPerception_Loop()
{
	if(Hlp_IsValidNpc(other))
	{
		PrintDebugS("other valid im TestHang");
	};
	if(Npc_GetStateTime(self) > 20)
	{
		return;
	};
};

func void ZS_TestPerception_End()
{
};

func void TestPrint()
{
	Print("Perception AN !!!");
	Npc_PercDisable(self,PERC_ASSESSTALK);
};

func void ZS_TestPerception1()
{
	Npc_PercDisable(self,PERC_ASSESSTALK);
};

func void ZS_TestPerception1_Loop()
{
	if(Npc_GetDistToNpc(self,other) < 500)
	{
		AI_ContinueRoutine(self);
	};
};

func void ZS_TestPerception1_End()
{
};

