
func void ZS_StayNeutral()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_StayNeutral");
	Npc_SetAttitude(self,ATT_NEUTRAL);
	Npc_SetTempAttitude(self,ATT_NEUTRAL);
	B_SetPerception(self);
	self.senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
	if(Npc_HasReadiedWeapon(self))
	{
		AI_SetWalkMode(self,NPC_RUN);
	}
	else
	{
		AI_SetWalkMode(self,NPC_WALK);
	};
	AI_GotoWP(self,self.wp);
	AI_AlignToWP(self);
};

func void ZS_StayNeutral_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_StayNeutral_Loop");
	AI_Wait(self,1);
};

func void ZS_StayNeutral_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_StayNeutral_End");
	self.senses = hero.senses;
	C_StopLookAt(self);
};

