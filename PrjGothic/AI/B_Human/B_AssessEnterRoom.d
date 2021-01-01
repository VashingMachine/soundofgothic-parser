
func void B_AssessEnterRoom()
{
	var int self_guild;
	var int portalguild;
	var int formerportalguild;
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessEnterRoom");
	self_guild = self.guild;
	PrintGlobals(PD_ZS_Check);
	portalguild = Wld_GetPlayerPortalGuild();
	PrintGuild(PD_ZS_Check,portalguild);
	formerportalguild = Wld_GetFormerPlayerPortalGuild();
	PrintGuild(PD_ZS_Check,formerportalguild);
	if(!C_NpcIsHuman(other))
	{
		PrintDebugNpc(PD_ZS_Check,"Monster betritt Raum!");
		B_FullStop(self);
		AI_StartState(self,ZS_AssessMonster,0,"");
	};
	if(!Npc_IsPlayer(other))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC betritt Raum!");
		return;
	};
	if((self.npcType == npctype_friend) || (Npc_GetAttitude(self,other) == ATT_FRIENDLY))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC ist NPCTYPE_FRIEND oder ATT_FRIENDLY");
		return;
	};
	if(Npc_CanSeeNpc(self,other) || (!C_BodyStateContains(other,BS_SNEAK) && (Npc_GetDistToNpc(self,other) < HAI_DIST_HEARROOMINTRUDER)))
	{
		PrintDebugNpc(PD_ZS_Check,"...Nsc sieht/hört Eindringling!");
		if(C_NpcIsGuard(self))
		{
			PrintDebugNpc(PD_ZS_Check,"...Nsc ist Wache!");
			if((portalguild != GIL_None) && (Wld_GetGuildAttitude(self_guild,portalguild) == ATT_FRIENDLY))
			{
				PrintDebugNpc(PD_ZS_Check,"...betretener Portalraum gehört Schützling-Gilde!");
				B_FullStop(self);
				AI_StartState(self,ZS_ClearRoom,0,"");
			}
			else if((formerportalguild != GIL_None) && (Wld_GetGuildAttitude(self_guild,formerportalguild) == ATT_FRIENDLY))
			{
				PrintDebugNpc(PD_ZS_Check,"...verlassener Portalraum gehört Schützling-Gilde!");
				B_FullStop(self);
				B_WhirlAround(self,other);
				AI_PointAtNpc(self,other);
				B_Say(self,other,"$HEYYOU");
				AI_StopPointAt(self);
				Npc_PercDisable(self,PERC_MOVENPC);
				AI_SetWalkMode(self,NPC_RUN);
				AI_GotoNpc(self,other);
				B_Say(self,other,"$WHATDIDYOUINTHERE");
			};
		}
		else if(C_NpcIsGuardArcher(self))
		{
			PrintDebugNpc(PD_ZS_Check,"...ich bin Fernkampfwache und ignoriere Räume betreten grundsätzlich!");
			Npc_PercEnable(self,PERC_OBSERVEINTRUDER,B_ObserveIntruder);
			AI_ContinueRoutine(self);
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"...Nsc ist KEINE Wache!");
			if((Npc_GetDistToNpc(self,other) < HAI_DIST_CLEARROOM) && (portalguild != GIL_None) && ((self_guild == portalguild) || (Wld_GetGuildAttitude(self_guild,portalguild) == ATT_FRIENDLY)))
			{
				PrintDebugNpc(PD_ZS_Check,"...SC nah & betretener Portalraum gehört Gilde des NSCs");
				B_FullStop(self);
				AI_StartState(self,ZS_ClearRoom,0,"");
				return;
			};
			if((Npc_GetDistToNpc(self,other) < HAI_DIST_CLEARROOM) && (formerportalguild != GIL_None) && ((self_guild == formerportalguild) || (Wld_GetGuildAttitude(self_guild,formerportalguild) == ATT_FRIENDLY)))
			{
				PrintDebugNpc(PD_ZS_Check,"...SC nah & SC verläßt eigenen Portalraum");
				B_FullStop(self);
				B_WhirlAround(self,other);
				AI_PointAtNpc(self,other);
				B_Say(self,other,"$HEYYOU");
				AI_StopPointAt(self);
				Npc_PercDisable(self,PERC_MOVENPC);
				AI_SetWalkMode(self,NPC_RUN);
				AI_GotoNpc(self,other);
				B_Say(self,other,"$WHATDIDYOUINTHERE");
			};
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC kann den Eindringling weder sehen noch hören!");
	};
};

