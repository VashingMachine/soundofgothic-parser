
func void B_GuildGreetings()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_GuilGreetings");
	if(C_NpcIsHuman(other) && ((self.guild == GIL_GUR) || (self.guild == GIL_NOV) || (self.guild == GIL_TPL)) && (Npc_GetTempAttitude(self,other) == ATT_FRIENDLY))
	{
		PrintDebugNpc(PD_ZS_Check,"B_GuilGreetings Guru ");
		B_Say(self,other,"$SECTGREETINGS");
	}
	else if(((other.guild == GIL_EBR) || (other.guild == GIL_GRD) || (other.guild == GIL_STT) || (other.guild == GIL_VLK)) && ((self.guild == GIL_GRD) || (self.guild == GIL_STT) || (self.guild == GIL_VLK)) && ((Npc_GetTempAttitude(self,other) == ATT_FRIENDLY) || (Npc_GetTempAttitude(self,other) == ATT_NEUTRAL)))
	{
		PrintDebugNpc(PD_ZS_Check,"B_GuilGreetings OC both");
		B_Say(self,other,"$ALGREETINGS");
	}
	else if(((other.guild == GIL_KDF) || (other.guild == GIL_KDW)) && ((self.guild == GIL_KDF) || (self.guild == GIL_KDW)) && ((Npc_GetTempAttitude(self,other) == ATT_FRIENDLY) || (Npc_GetTempAttitude(self,other) == ATT_NEUTRAL)))
	{
		PrintDebugNpc(PD_ZS_Check,"B_GuilGreetings NC both");
		B_Say(self,other,"$MAGEGREETINGS");
	}
	else if(Npc_GetTempAttitude(self,other) == ATT_FRIENDLY)
	{
		PrintDebugNpc(PD_ZS_Check,"B_GuilGreetings friend");
		B_Say(self,other,"$FRIENDLYGREETINGS");
	};
};

