
instance EBR_110_Seraphia(Npc_Default)
{
	name[0] = "Serafia";
	npcType = npctype_main;
	guild = GIL_BAB;
	level = 1;
	voice = 16;
	id = 110;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 20;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 40;
	attribute[ATR_HITPOINTS] = 40;
	Mdl_SetVisual(self,"Babe.MDS");
	Mdl_SetVisualBody(self,"Bab_body_Naked0",2,1,"Bab_Head_Hair1",2,DEFAULT,-1);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItem(self,ItMiBrush);
	CreateInvItem(self,ItMiWedel);
	daily_routine = Rtn_start_110;
};


func void Rtn_start_110()
{
	TA_Babe_Sweep(0,1,8,30,"OCC_BARONS_GREATHALL_CENTER_LEFT");
	TA_Babe_Fan(8,30,0,1,"OCC_BARONS_GREATHALL_BERATER");
};

