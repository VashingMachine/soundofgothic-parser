
func void B_GuardItemsAssessTheft()
{
	PrintDebugNpc(PD_ZS_Check,"B_GuardItemsAssessTheft");
	if(Npc_IsPlayer(other))
	{
		if(Hlp_IsValidItem(item) && !Hlp_IsValidNpc(victim))
		{
			if(Npc_CanSeeNpcFreeLOS(self,other))
			{
				B_SayOverlay(self,other,"$HANDSOFF");
				Npc_SendPassivePerc(self,PERC_ASSESSWARN,self,other);
				if(C_AmIStronger(self,other))
				{
					AI_Standup(self);
					AI_StartState(self,ZS_CatchThief,0,"");
				};
			};
		};
	};
};

func void B_AssessTheft()
{
	var int other_guild;
	var int self_guild;
	var int item_ownerguild;
	if(self.aivar[AIV_ITEMSCHWEIN] == TRUE)
	{
		B_GuardItemsAssessTheft();
	};
	PrintDebugNpc(PD_ZS_Check,"B_AssessTheft");
	other_guild = other.guild;
	self_guild = self.guild;
	if(!Npc_IsPlayer(other))
	{
		PrintDebugNpc(PD_ZS_Check,"...anderer Nsc hat ein Item aufgehoben");
		return;
	};
	AI_QuickLook(self,other);
	if(Npc_CanSeeNpc(self,other))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC kann den Dieb sehen!");
		if(Hlp_IsValidItem(item) && !Hlp_IsValidNpc(victim))
		{
			PrintDebugNpc(PD_ZS_Check,"...Item wurde aufgehoben!");
			item_ownerguild = item.ownerGuild;
			if(Npc_OwnedByNpc(item,self))
			{
				PrintDebugNpc(PD_ZS_Check,"...Item gehört NSC!");
				Npc_ClearAIQueue(self);
				C_LookAtNpc(self,other);
				AI_StartState(self,ZS_CatchThief,0,"");
				return;
			}
			else if((Wld_GetGuildAttitude(self_guild,item_ownerguild) == ATT_FRIENDLY) && (Wld_GetGuildAttitude(self_guild,other_guild) != ATT_FRIENDLY))
			{
				B_FullStop(self);
				PrintDebugNpc(PD_ZS_Check,"Gilden-Bes.");
				C_LookAtNpc(self,other);
				AI_StartState(self,ZS_CatchThief,0,"");
				return;
			}
			else if(self.aivar[AIV_WANTEDITEM] == Hlp_GetInstanceID(item))
			{
				B_FullStop(self);
				PrintDebugNpc(PD_ZS_Check,"Wanted Item");
				if(C_AmIStronger(self,other) && !Wld_DetectItem(self,ITEM_MULTI))
				{
					PrintDebugNpc(PD_ZS_Check,"Wanted Item & Stronger");
					Npc_PerceiveAll(self);
					if(!Wld_DetectNpc(self,-1,ZS_GetBackItem,-1))
					{
						AI_StartState(self,ZS_GetBackItem,0,"");
					}
					else
					{
						AI_StartState(self,ZS_ObservePerson,0,"");
					};
				}
				else
				{
					Npc_ClearAIQueue(self);
					AI_QuickLook(self,other);
					B_Say(self,other,"$YOUCANKEEPTHECRAP");
					AI_ContinueRoutine(self);
				};
			};
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"...Taschendiebstahl!");
			if(C_NpcIsHuman(victim) && !C_NpcIsDown(victim) && ((Wld_GetGuildAttitude(self.guild,victim.guild) == ATT_FRIENDLY) || (Wld_GetGuildAttitude(self.guild,victim.guild) == ATT_NEUTRAL) || (Npc_GetPermAttitude(self,other) == ATT_ANGRY)))
			{
				PrintDebugNpc(PD_ZS_Check,"...Opfer FRIENDLY/NEUTRAL oder Dieb ANGRY");
				B_FullStop(self);
				C_LookAtNpc(self,other);
				AI_PointAtNpc(self,other);
				B_Say(self,other,"$BEHINDYOU");
				B_AssessAndMemorize(NEWS_THEFT,NEWS_SOURCE_WITNESS,self,other,victim);
				AI_StopPointAt(self);
				Npc_SendPassivePerc(self,PERC_ASSESSWARN,victim,other);
				AI_StartState(self,ZS_ObservePerson,0,"");
				return;
			};
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC kann den Dieb NICHT sehen!");
	};
};

