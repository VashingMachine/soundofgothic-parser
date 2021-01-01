
func void B_AssessEnemy()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessEnemy");
	PrintGlobals(PD_ZS_Check);
	if(Npc_CanSeeNpcFreeLOS(self,other))
	{
		if(C_NpcIsHuman(other))
		{
			PrintDebugNpc(PD_ZS_FRAME,"...Feind ist Mensch!");
			if(self.aivar[AIV_TALKBEFOREATTACK])
			{
				PrintDebugNpc(PD_ZS_Check,"...'letzte Nachricht' für den Feind!");
				if(B_CheckForImportantInfo(self,other))
				{
					return;
				};
			};
			if(C_NpcTypeIsFriend(self,other) || (Npc_GetAttitude(self,other) == ATT_FRIENDLY))
			{
				PrintDebugNpc(PD_ZS_Check,"...NSC ist NPCTYPE_FRIEND oder ATT_FRIENDLY!");
				return;
			};
			if(C_OtherIsToleratedEnemy(self,other))
			{
				PrintDebugNpc(PD_ZS_Check,"...Feind wird toleriert!");
				B_TolerateEnemy(self,other);
				return;
			};
			if(other.aivar[AIV_INVINCIBLE])
			{
				PrintDebugNpc(PD_ZS_Check,"...Feind spricht gerade!");
				AI_ContinueRoutine(self);
				return;
			};
			if(Npc_IsInCutscene(other))
			{
				PrintDebugNpc(PD_ZS_Check,"...Feind ist in Cutscene!");
				return;
			};
			B_FullStop(self);
			AI_StartState(self,ZS_AssessEnemy,0,"");
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"... 'enemy' ist Monster/Orc!");
			if((Npc_GetDistToNpc(self,other) < HAI_DIST_ASSESS_MONSTER) && C_NpcIsDangerousMonster(self,other))
			{
				B_FullStop(self);
				AI_StartState(self,ZS_AssessMonster,0,"");
				return;
			};
		};
	};
};

