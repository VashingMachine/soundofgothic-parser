
func void ZS_Controlled()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Controlled");
};

func void ZS_Controlled_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_Controlled_Loop");
};

func void ZS_Controlled_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Controlled_End");
	B_FullStop(self);
	AI_PlayAni(self,"T_PSI_VICTIM");
	AI_Wait(self,3.5);
	B_RegainDroppedWeapon(self);
	B_RegainDroppedArmor(self);
	Npc_SetTarget(self,hero);
	Npc_GetTarget(self);
	AI_StartState(self,ZS_AssessEnemy,1,"");
};

