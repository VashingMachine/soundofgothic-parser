
instance VLK_535_Buddler(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 3;
	voice = 3;
	id = 535;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 76;
	attribute[ATR_HITPOINTS] = 76;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Bald",73,2,vlk_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItMwPickaxe);
	CreateInvItem(self,ItFoLoaf);
	CreateInvItem(self,ItFoBeer);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_535;
};


func void Rtn_start_535()
{
	TA_Sleep(22,30,6,45,"OCR_HUT_71");
	TA_SitAround(6,45,8,0,"OCR_OUTSIDE_HUT_71");
	TA_StandAround(8,0,11,0,"OCR_OUTSIDE_HUT_71");
	TA_WashSelf(11,0,11,30,"OCR_WASH_2");
	TA_SitAround(11,30,16,30,"OCR_OUTSIDE_HUT_71");
	TA_SitCampfire(16,30,22,30,"OCR_OUTSIDE_HUT_71");
};

