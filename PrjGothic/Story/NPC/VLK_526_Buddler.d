
instance VLK_526_Buddler(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 2;
	voice = 3;
	id = 526;
	attribute[ATR_STRENGTH] = 13;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 64;
	attribute[ATR_HITPOINTS] = 64;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_Pony",74,1,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Nailmace_01);
	EquipItem(self,ItMw_1H_Club_01);
	CreateInvItem(self,ItFoApple);
	daily_routine = Rtn_start_526;
};


func void Rtn_start_526()
{
	TA_Sleep(23,30,6,30,"OCR_HUT_67");
	TA_Boss(6,30,7,30,"OCR_OUTSIDE_HUT_67");
	TA_StandAround(7,30,17,0,"OCR_CAMPFIRE_E_1_MOVEMENT");
	TA_SitAround(17,0,18,0,"OCR_HUT_67");
	TA_SitCampfire(18,0,23,30,"OCR_CAMPFIRE_E_1_MOVEMENT");
};

