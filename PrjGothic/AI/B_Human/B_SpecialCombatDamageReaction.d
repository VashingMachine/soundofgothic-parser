
func void B_SpecialCombatDamageReaction()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_SpecialCombatDamageReaction");
	if(self.id == 2999)
	{
		self.aivar[AIV_MISSION1] = self.aivar[AIV_MISSION1] + 1;
		if(self.aivar[AIV_MISSION1] >= HighPriest_MaxHit)
		{
			PrintDebugNpc(PD_ZS_Check,"...Hohepriester 5mal getroffen!");
			hero.aivar[AIV_IMPORTANT] = TRUE;
			Npc_SetTempAttitude(self,ATT_NEUTRAL);
			Npc_SetPermAttitude(self,ATT_NEUTRAL);
			B_FullStop(self);
			AI_ContinueRoutine(self);
		};
		AI_ContinueRoutine(self);
	};
};

