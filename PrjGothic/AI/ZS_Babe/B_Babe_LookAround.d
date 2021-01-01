
func void B_Babe_LookAround()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_Babe_LookAround");
	AI_Standup(self);
	AI_PlayAni(self,"T_SEARCH");
};

