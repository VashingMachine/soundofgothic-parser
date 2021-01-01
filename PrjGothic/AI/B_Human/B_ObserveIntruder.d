
func void B_ObserveIntruder()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_ObserveIntruder");
	if(other.aivar[AIV_INVINCIBLE])
	{
		PrintDebugNpc(PD_ZS_Check,"...SC im Dialog!");
		return;
	};
	if(self.npcType == npctype_friend)
	{
		PrintDebugNpc(PD_ZS_Check,"...freundlich gesinnt!");
		return;
	};
	if(Npc_IsInState(self,ZS_GuardPassage))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC ist Durchgangswache!");
		return;
	};
	if(C_NpcIsHuman(other))
	{
		PrintDebugNpc(PD_ZS_Check,"...Eindringling ist Mensch!");
		if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
		{
			B_FullStop(self);
			B_AssessEnemy();
			return;
		};
		if((Npc_GetAttitude(self,other) != ATT_FRIENDLY) && (Npc_CanSeeNpc(self,other) || !C_BodyStateContains(other,BS_SNEAK)))
		{
			PrintDebugNpc(PD_ZS_Check,"...SC ist Mensch und nicht FRIENDLY!");
			AI_StartState(self,ZS_ObserveIntruder,1,"");
			return;
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...Eindringling ist Monster!");
		if(C_NpcIsDangerousMonster(self,other))
		{
			B_FullStop(self);
			AI_StartState(self,ZS_AssessMonster,0,"");
		};
	};
};

