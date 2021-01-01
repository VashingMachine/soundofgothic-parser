
instance VLK_524_Dusty(Npc_Default)
{
	name[0] = "Dusty";
	npcType = npctype_friend;
	guild = GIL_VLK;
	level = 10;
	voice = 3;
	id = 524;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 64;
	attribute[ATR_HITPOINTS] = 64;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_Psionic",68,0,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Club_01);
	CreateInvItem(self,ItFo_Potion_Water_01);
	daily_routine = Rtn_start_524;
};


func void Rtn_start_524()
{
	TA_Sleep(22,0,7,0,"OCR_HUT_58");
	TA_SitAround(7,0,22,0,"OCR_OUTSIDE_HUT_58");
};

func void Rtn_Follow_524()
{
	TA_FollowPC(23,0,16,0,"OCR_OUTSIDE_HUT_58");
	TA_FollowPC(16,0,23,0,"OCR_OUTSIDE_HUT_58");
};

func void Rtn_PrepareRitual_524()
{
	TA_Sleep(23,0,7,45,"PSI_25_HUT_IN");
	TA_Listen(7,45,23,0,"PSI_PLATFORM_1");
};

