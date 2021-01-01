
func void ZS_StandAround()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_StandAround");
	B_SetPerception(self);
	if(Npc_WasInState(self,ZS_Smalltalk))
	{
		Npc_PercEnable(self,PERC_NPCCOMMAND,B_SmallTalk);
	};
	AI_SetWalkMode(self,NPC_WALK);
	B_ClearItem(self);
	if(!Npc_IsOnFP(self,"CAMPFIRE"))
	{
		PrintDebugNpc(PD_TA_CHECK,"...nicht auf FP!");
		AI_GotoWP(self,self.wp);
	};
};

func int ZS_StandAround_Loop()
{
	var int choice;
	PrintDebugNpc(PD_TA_LOOP,"ZS_StandAround_Loop");
	if(Npc_WasInState(self,ZS_Smalltalk))
	{
		B_GotoFP(self,"SMALLTALK");
		AI_AlignToFP(self);
	}
	else if(Wld_IsFPAvailable(self,"CAMPFIRE"))
	{
		B_GotoFP(self,"CAMPFIRE");
		AI_AlignToFP(self);
	}
	else
	{
		Npc_PerceiveAll(self);
		if(Wld_DetectNpcEx(self,-1,NOFUNC,-1,0))
		{
			AI_TurnToNPC(self,other);
		};
	};
	if(Npc_WasInState(self,ZS_Smalltalk))
	{
		Npc_SendPassivePerc(self,PERC_NPCCOMMAND,self,self);
	};
	choice = Hlp_Random(100);
	PrintDebugInt(PD_TA_DETAIL,"...Zufallsani-Wurf: ",choice);
	if(self.aivar[AIV_ITEMSTATUS] == TA_IT_NONE)
	{
		if(C_NpcBelongsToOldCamp(self))
		{
			if(choice < 10)
			{
				B_ChooseApple(self);
			}
			else if(choice < 20)
			{
				B_ChooseLoaf(self);
			}
			else if(choice < 30)
			{
				B_ChooseCheese(self);
			}
			else if(choice < 40)
			{
				B_ChooseBeer(self);
			}
			else if(choice < 60)
			{
				B_ChooseMeat(self);
			}
			else if(choice < 80)
			{
				B_Pee(self);
			}
			else if(choice < 100)
			{
				B_Bored(self);
			};
		}
		else if(C_NpcBelongsToNewCamp(self))
		{
			if(choice < 10)
			{
				B_ChooseRice(self);
			}
			else if(choice < 30)
			{
				B_ChooseWine(self);
			}
			else if(choice < 50)
			{
				B_ChooseBooze(self);
			}
			else if(choice < 60)
			{
				B_ChooseJoint(self);
			}
			else if(choice < 80)
			{
				B_Pee(self);
			}
			else if(choice < 100)
			{
				B_Bored(self);
			};
		}
		else if(C_NpcBelongsToPsiCamp(self))
		{
			if(choice < 20)
			{
				B_ChooseSoup(self);
			}
			else if(choice < 80)
			{
				B_ChooseJoint(self);
			}
			else if(choice < 90)
			{
				B_Pee(self);
			}
			else if(choice < 100)
			{
				B_Bored(self);
			};
		};
	}
	else if(choice < 20)
	{
		B_ClearItem(self);
	};
	B_PlayItemRandoms(self);
	AI_Wait(self,1);
	return LOOP_CONTINUE;
};

func void ZS_StandAround_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_StandAround_End");
	C_StopLookAt(self);
	B_ClearItem(self);
};

func void B_SmallTalk()
{
	PrintDebugNpc(PD_TA_FRAME,"B_SmallTalk");
	if(Npc_IsInState(other,ZS_StandAround) && Npc_IsOnFP(other,"SMALLTALK") && (Npc_GetDistToNpc(self,other) < HAI_DIST_SMALLTALK))
	{
		PrintDebugNpc(PD_TA_CHECK,"...'other' geeigneter SmallTalk-Partner!");
		Npc_PercDisable(other,PERC_ASSESSPLAYER);
		Npc_PercDisable(other,PERC_OBSERVEINTRUDER);
		B_FullStop(other);
		Npc_SetTarget(other,self);
		Npc_GetTarget(self);
		AI_StartState(other,ZS_Smalltalk,1,"");
		Npc_PercDisable(self,PERC_ASSESSPLAYER);
		Npc_PercDisable(self,PERC_OBSERVEINTRUDER);
		B_FullStop(self);
		Npc_SetTarget(self,other);
		Npc_GetTarget(self);
		AI_StartState(self,ZS_Smalltalk,1,"");
	};
};

