
instance VLK_511_Herek(Npc_Default)
{
	name[0] = "Herek";
	npcType = npctype_main;
	guild = GIL_None;
	level = 2;
	voice = 1;
	id = 511;
	attribute[ATR_STRENGTH] = 13;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 64;
	attribute[ATR_HITPOINTS] = 64;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_Pony",105,3,vlk_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItMwPickaxe);
	CreateInvItem(self,ItMi_Stuff_Barbknife_01);
	CreateInvItems(self,ItMiNugget,4);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_511;
};


func void Rtn_start_511()
{
	TA_Sleep(22,0,7,0,"OCR_HUT_62");
	TA_Boss(7,0,8,0,"OCR_OUTSIDE_HUT_62");
	TA_Smalltalk(8,0,12,0,"OCR_OUTSIDE_HUT_63_SMALLTALK");
	TA_Smith_Sharp(12,0,17,0,"OCR_OUTSIDE_HUT_63_SMALLTALK");
	TA_SitAround(17,0,22,0,"OCR_OUTSIDE_HUT_62");
};

