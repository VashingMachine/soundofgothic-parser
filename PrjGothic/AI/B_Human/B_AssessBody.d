
func void B_AssessBody()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessBody");
	PrintGlobals(PD_ZS_Check);
	if(Npc_GetDistToNpc(self,other) < 1000)
	{
		PrintDebugNpc(PD_ZS_Check,"...Körper näher als 10m!");
		B_FullStop(self);
		AI_StartState(self,ZS_AssessBody,0,"");
	};
};

func void ZS_AssessBody()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_AssessBody");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSFIGHTER,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSMURDER,ZS_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,ZS_AssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTHEFT,B_AssessTheft);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_RefuseTalk);
	if(other.aivar[AIV_PLUNDERED] == TRUE)
	{
		PrintDebugNpc(PD_ZS_Check,"...Körper bereits geplündert!");
		AI_ContinueRoutine(self);
	};
	if(Npc_GetDistToNpc(self,other) > PERC_DIST_INTERMEDIAT)
	{
		PrintDebugNpc(PD_ZS_Check,"...Körper zu weit weg!");
		AI_ContinueRoutine(self);
	};
};

func int ZS_AssessBody_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_AssessBody_Loop");
	B_FullStop(self);
	AI_GotoNpc(self,other);
	return LOOP_END;
};

func void ZS_AssessBody_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_AssessBody_End");
	if(other.aivar[AIV_PLUNDERED] == TRUE)
	{
		AI_ContinueRoutine(self);
	};
	if((self.fight_tactic != FAI_HUMAN_RANGED) && (self.npcType != npctype_friend) && C_NpcIsHuman(self))
	{
		PrintDebugNpc(PD_ZS_Check,"...kein purer Fernkämpfer und kein NSC-Freund!");
		AI_PlayAni(self,"T_PLUNDER");
		if(B_Plunder())
		{
			B_Say(self,other,"$ITookYourOre");
		}
		else
		{
			B_Say(self,other,"$ShitNoOre");
		};
		other.aivar[AIV_PLUNDERED] = TRUE;
	};
	AI_StartState(self,ZS_AssessBody_RecoverWeapon,1,"");
};

func void ZS_AssessBody_RecoverWeapon()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_AssessBody_RecoverWeapon");
	B_SetPerception(self);
	Npc_PerceiveAll(self);
	if((Wld_DetectItem(self,ITEM_KAT_NF) || Wld_DetectItem(self,ITEM_KAT_FF)) && (Npc_GetDistToItem(self,item) < 300))
	{
		PrintDebugNpc(PD_ZS_Check,"...Nah- oder Fernkampfwaffe gefunden!");
		B_SayOverlay(self,NULL,"$ITakeYourWeapon");
		AI_TakeItem(self,item);
		AI_EquipBestMeleeWeapon(self);
		AI_EquipBestRangedWeapon(self);
	};
	AI_StartState(self,ZS_HealSelf,1,"");
};

