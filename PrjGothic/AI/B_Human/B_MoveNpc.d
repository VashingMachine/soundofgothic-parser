
func void B_MoveNpc()
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_MoveNpc");
	if(other.aivar[AIV_INVINCIBLE] == FALSE)
	{
		if(Npc_IsInCutscene(self) || Npc_IsInCutscene(other))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...Blockierender oder Blockierter in Cutscene!!!");
			return;
		};
		if(C_NpcIsDown(other))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...Blockierender ist kampfunfähig!");
			return;
		};
		if(C_NpcTypeIsFriend(self,other))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...Blockierender ist Freund!");
			return;
		};
		if(other.aivar[AIV_INVINCIBLE])
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...Blockierender ist in ZS_Talk!");
			return;
		};
		if(!C_BodyStateContains(other,BS_STAND))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...Blockierender ist in Bewegung!");
			return;
		};
		if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...Blockierender ist feindlich!");
			B_AssessEnemy();
			return;
		}
		else if(!Npc_IsPlayer(other))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...Blockierender ist kein Spieler!");
			if((self.level > other.level) || ((self.level == other.level) && (self.id > other.id)))
			{
			}
			else
			{
			};
		}
		else if(C_NpcIsWorker(self))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...ich bin unwichter NSC!");
			B_FullStop(self);
			B_SmartTurnToNpc(self,other);
			AI_StartState(self,ZS_MoveNpcFriendlyWait,0,"");
			return;
		}
		else if(((Npc_GetAttitude(self,other) == ATT_ANGRY) || (Npc_GetAttitude(self,other) == ATT_NEUTRAL)) && C_AmIStronger(self,other) && !C_NpcIsGuard(self) && !C_NpcIsGuardArcher(self))
		{
			B_FullStop(self);
			B_SmartTurnToNpc(self,other);
			B_Say(self,other,"$OUTOFMYWAY");
			AI_StartState(self,ZS_MoveNpcWait,0,"");
			return;
		}
		else
		{
			B_FullStop(self);
			B_SmartTurnToNpc(self,other);
			B_Say(self,other,"$MAKEWAY");
			AI_StartState(self,ZS_MoveNpcFriendlyWait,0,"");
			return;
		};
	};
};

