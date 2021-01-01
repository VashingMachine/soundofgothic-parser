
instance VLK_555_Buddler(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 3;
	voice = 3;
	id = 555;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 76;
	attribute[ATR_HITPOINTS] = 76;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,2,"Hum_Head_Psionic",0,1,vlk_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItMwPickaxe);
	CreateInvItem(self,ItFoLoaf);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_555;
};


func void Rtn_start_555()
{
	TA_Sleep(22,45,7,30,"OCR_HUT_29");
	TA_SitAround(7,30,11,0,"OCR_OUTSIDE_HUT_29");
	TA_RepairHut(11,0,17,0,"OCR_OUTSIDE_HUT_29");
	TA_SitAround(17,0,22,45,"OCR_OUTSIDE_HUT_29");
};

