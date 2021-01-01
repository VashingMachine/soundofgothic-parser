
instance VLK_575_Buddler(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 4;
	voice = 1;
	id = 575;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 88;
	attribute[ATR_HITPOINTS] = 88;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Bald",70,1,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Club_01);
	CreateInvItem(self,ItFoApple);
	daily_routine = Rtn_start_575;
};


func void Rtn_start_575()
{
	TA_Sleep(22,45,6,30,"OCR_HUT_66");
	TA_StandAround(7,0,12,0,"OCR_OUTSIDE_HUT_66");
	TA_Smalltalk(12,0,17,0,"OCR_OUTSIDE_HUT_66");
	TA_SitCampfire(17,0,22,45,"OCR_OUTSIDE_HUT_66");
};

