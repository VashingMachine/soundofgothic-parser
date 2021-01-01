
instance VLK_560_Buddler(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 3;
	voice = 2;
	id = 560;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 76;
	attribute[ATR_HITPOINTS] = 76;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Psionic",67,2,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Club_01);
	CreateInvItem(self,ItFoApple);
	daily_routine = Rtn_start_560;
};


func void Rtn_start_560()
{
	TA_Sleep(23,0,6,30,"OCR_HUT_16");
	TA_StandAround(6,30,11,0,"OCR_OUTSIDE_HUT_16");
	TA_WashSelf(11,0,11,20,"OCR_TO_HUT_17");
	TA_SitCampfire(11,20,23,0,"OCR_OUTSIDE_HUT_16");
};

