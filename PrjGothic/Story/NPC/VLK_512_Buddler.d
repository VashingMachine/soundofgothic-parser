
instance VLK_512_Buddler(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 2;
	voice = 1;
	id = 512;
	attribute[ATR_STRENGTH] = 13;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 64;
	attribute[ATR_HITPOINTS] = 64;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,0,"Hum_Head_Psionic",16,3,vlk_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItMwPickaxe);
	CreateInvItem(self,ItFoLoaf);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_512;
};


func void Rtn_start_512()
{
	TA_Sleep(23,0,8,0,"OCR_HUT_64");
	TA_Smalltalk(8,0,12,0,"OCR_OUTSIDE_HUT_63_SMALLTALK");
	TA_SitAround(12,0,16,0,"OCR_OUTSIDE_HUT_63");
	TA_SitAround(16,0,23,0,"OCR_OUTSIDE_HUT_64");
};

