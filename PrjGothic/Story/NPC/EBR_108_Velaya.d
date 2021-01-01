
instance EBR_108_Velaya(Npc_Default)
{
	name[0] = "Velaya";
	npcType = npctype_main;
	guild = GIL_BAB;
	level = 1;
	voice = 16;
	id = 108;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 20;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 40;
	attribute[ATR_HITPOINTS] = 40;
	Mdl_SetVisual(self,"BABE.MDS");
	Mdl_SetVisualBody(self,"Bab_body_Naked0",0,1,"Bab_Head_Hair1",0,DEFAULT,-1);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItem(self,ItMiBrush);
	CreateInvItem(self,ItMiWedel);
	daily_routine = Rtn_start_108;
};


func void Rtn_start_108()
{
	TA_Babe_Sleep(1,0,10,0,"OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_LEFT_BACK");
	TA_Babe_SitAround(10,0,11,0,"OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_FRONT");
	TA_Bathing_Babe(11,0,14,0,"OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_FRONT");
	TA_Babe_SitAround(14,0,16,0,"OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_FRONT");
	TA_Bathing_Babe(16,0,19,0,"OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_FRONT");
	TA_Babe_SitAround(19,0,1,0,"OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_FRONT");
};

