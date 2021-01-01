
instance Gur_1205_Chani(Npc_Default)
{
	name[0] = "Chani";
	npcType = npctype_main;
	guild = GIL_BAB;
	level = 1;
	voice = 16;
	id = 1205;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 20;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 52;
	attribute[ATR_HITPOINTS] = 52;
	Mdl_SetVisual(self,"Babe.MDS");
	Mdl_SetVisualBody(self,"Bab_body_Naked0",0,3,"Bab_Head_Hair1",0,DEFAULT,-1);
	daily_routine = Rtn_start_1205;
};


func void Rtn_start_1205()
{
	TA_Babe_SitAround(0,0,6,0,"PSI_TEMPLE_ROOMS_IN_03");
	TA_Babe_SitAround(6,0,7,0,"PSI_TEMPLE_ROOMS_IN_03");
	TA_Babe_Fan(7,0,8,0,"PSI_TEMPLE_ROOMS_05");
	TA_Babe_SitAround(8,0,9,0,"PSI_TEMPLE_ROOMS_IN_03");
	TA_Babe_Fan(9,0,10,0,"PSI_TEMPLE_ROOMS_05");
	TA_Babe_SitAround(10,0,11,0,"PSI_TEMPLE_ROOMS_IN_03");
	TA_Babe_Fan(11,0,12,0,"PSI_TEMPLE_ROOMS_05");
	TA_Babe_SitAround(12,0,13,0,"PSI_TEMPLE_ROOMS_IN_03");
	TA_Babe_Fan(13,0,14,0,"PSI_TEMPLE_ROOMS_05");
	TA_Babe_SitAround(14,0,15,0,"PSI_TEMPLE_ROOMS_IN_03");
	TA_Babe_Fan(15,0,16,0,"PSI_TEMPLE_ROOMS_05");
	TA_Babe_SitAround(16,0,17,0,"PSI_TEMPLE_ROOMS_IN_03");
	TA_Babe_Fan(17,0,18,0,"PSI_TEMPLE_ROOMS_05");
	TA_Babe_SitAround(18,0,19,0,"PSI_TEMPLE_ROOMS_IN_03");
	TA_Babe_Fan(19,0,20,0,"PSI_TEMPLE_ROOMS_05");
	TA_Babe_SitAround(20,0,21,0,"PSI_TEMPLE_ROOMS_IN_03");
	TA_Babe_Fan(21,0,22,0,"PSI_TEMPLE_ROOMS_05");
	TA_Babe_SitAround(22,0,23,0,"PSI_TEMPLE_ROOMS_IN_03");
	TA_Babe_Fan(23,0,0,0,"PSI_TEMPLE_ROOMS_05");
};

func void Rtn_dead_1205()
{
	TA_Babe_SitAround(0,0,6,0,"PSI_TEMPLE_ROOMS_IN_02");
	TA_Babe_SitAround(6,0,0,0,"PSI_TEMPLE_ROOMS_IN_02");
};

