
instance VLK_564_Jesse(Npc_Default)
{
	name[0] = "Jesse";
	npcType = npctype_main;
	guild = GIL_VLK;
	level = 4;
	voice = 3;
	id = 564;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 88;
	attribute[ATR_HITPOINTS] = 88;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_FatBald",71,1,vlk_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItMwPickaxe);
	CreateInvItem(self,ItFo_Potion_Water_01);
	daily_routine = Rtn_Start_564;
};


func void Rtn_Start_564()
{
	TA_Sleep(23,0,6,45,"OCR_HUT_63");
	TA_CookForMe(6,45,12,0,"OCR_OUTSIDE_HUT_63_COOK");
	TA_Smalltalk(12,0,17,0,"OCR_OUTSIDE_HUT_63_COOK");
	TA_SitCampfire(17,0,23,0,"OCR_CAMPFIRE_E_2_MOVEMENT");
};

