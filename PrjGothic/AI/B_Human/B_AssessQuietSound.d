
func void B_AssessQuietSound()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessQuietSound");
	PrintGlobals(PD_ZS_FRAME);
	if(Npc_GetDistToItem(self,item) > PERC_DIST_DIALOG)
	{
		PrintDebugNpc(PD_ZS_FRAME,"... to far");
		return;
	};
	if(Npc_CanSeeSource(self))
	{
		PrintDebugNpc(PD_ZS_Check,"...kann Geräuschquelle sehen!");
		if(Snd_IsSourceNpc(self))
		{
			PrintDebugNpc(PD_ZS_Check,"...Geräuschquelle ist SC!");
			if(Npc_GetTempAttitude(self,other) == ATT_HOSTILE)
			{
				PrintDebugNpc(PD_ZS_Check,"...SC ist HOSTILE!");
				Npc_ClearAIQueue(self);
				AI_StartState(self,ZS_AssessEnemy,0,"");
			};
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...kann NICHT Geräuschquelle sehen!");
		if(Snd_IsSourceNpc(self))
		{
			Npc_ClearAIQueue(self);
			AI_StartState(self,ZS_AssessQuietSound,0,"");
		};
	};
};

