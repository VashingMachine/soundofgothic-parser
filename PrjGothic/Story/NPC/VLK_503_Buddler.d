
instance VLK_503_Buddler(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 2;
	voice = 2;
	id = 503;
	attribute[ATR_STRENGTH] = 13;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 64;
	attribute[ATR_HITPOINTS] = 64;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,2,"Hum_Head_Bald",0,4,vlk_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItFoBeer);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_503;
};


func void Rtn_start_503()
{
	TA_Sleep(22,45,7,0,"OCR_HUT_53");
	TA_SitAround(7,0,8,0,"OCR_OUTSIDE_HUT_53");
	TA_StandAround(8,0,11,0,"OCR_OUTSIDE_HUT_53");
	TA_Smalltalk(11,0,17,0,"OCR_OUTSIDE_HUT_53");
	TA_StandAround(17,0,22,45,"OCR_OUTSIDE_HUT_53");
};

