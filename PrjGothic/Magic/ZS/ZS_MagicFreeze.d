
func void B_StopMagicFreeze()
{
	PrintDebugNpc(PD_MAGIC,"B_StopMagicFreeze");
	PrintGlobals(PD_MAGIC);
	Npc_ClearAIQueue(self);
	AI_Standup(self);
	if(C_NpcIsHuman(self) || C_NpcIsOrc(self))
	{
		AI_StartState(self,ZS_ReactToDamage,0,"");
	}
	else if(C_NpcIsMonster(self))
	{
		AI_StartState(self,ZS_MM_Attack,0,"");
	};
};

func int ZS_MagicFreeze()
{
	PrintDebugNpc(PD_MAGIC,"ZS_MagicFreeze");
	PrintGlobals(PD_MAGIC);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,ZS_MagicFreeze);
	if(!C_BodyStateContains(self,BS_UNCONSCIOUS))
	{
		AI_PlayAniBS(self,"T_STAND_2_FREEZE_VICTIM",BS_UNCONSCIOUS);
	};
	if(self.attribute[ATR_HITPOINTS] > ((SPL_FREEZE_DAMAGE + 1) - self.protection[PROT_MAGIC]))
	{
		B_MagicHurtNpc(other,SPL_FREEZE_DAMAGE);
	};
};

func int ZS_MagicFreeze_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_MagicFreeze_Loop");
	if(Npc_GetStateTime(self) > SPL_TIME_FREEZE)
	{
		B_StopMagicFreeze();
		return LOOP_END;
	};
	AI_Wait(self,1);
	return LOOP_CONTINUE;
};

func void ZS_MagicFreeze_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_MagicFreeze_End");
};

