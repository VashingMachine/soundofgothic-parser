
func void B_SetBabeDefaultPerceptions()
{
	Npc_PercEnable(self,PERC_ASSESSTALK,B_Babe_RefuseTalk);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_Babe_Flee);
	Npc_PercEnable(self,PERC_DRAWWEAPON,ZS_Babe_Flee);
};

