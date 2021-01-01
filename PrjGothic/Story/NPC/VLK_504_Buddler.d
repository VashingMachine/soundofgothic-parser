
instance VLK_504_Buddler(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 2;
	voice = 2;
	id = 504;
	attribute[ATR_STRENGTH] = 13;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 64;
	attribute[ATR_HITPOINTS] = 64;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Thief",74,1,vlk_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItMwPickaxe);
	CreateInvItem(self,ItFo_Potion_Water_01);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_504;
};


func void Rtn_start_504()
{
	TA_Sleep(22,0,6,30,"OCR_HUT_12");
	TA_SitAround(6,30,10,30,"OCR_HUT_12");
	TA_RepairHut(10,30,17,30,"OCR_OUTSIDE_HUT_12");
	TA_SitAround(17,30,22,0,"OCR_HUT_12");
};

