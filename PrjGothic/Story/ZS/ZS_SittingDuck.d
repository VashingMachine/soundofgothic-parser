
func void ZS_SittingDuck()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_SittingDuck");
	self.senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoWP(self,self.wp);
	AI_AlignToWP(self);
};

func void ZS_SittingDuck_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_SittingDuck_Loop");
	AI_Wait(self,1);
};

func void ZS_SittingDuck_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_SittingDuck_End");
};

