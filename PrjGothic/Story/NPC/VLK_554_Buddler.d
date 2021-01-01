
instance VLK_554_Buddler(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 3;
	voice = 2;
	id = 554;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 76;
	attribute[ATR_HITPOINTS] = 76;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Pony",0,2,vlk_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItMwPickaxe);
	CreateInvItem(self,ItFoLoaf);
	CreateInvItem(self,ItFoBeer);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_554;
};


func void Rtn_start_554()
{
	TA_Sleep(22,15,6,15,"OCR_HUT_72");
	TA_Boss(6,15,7,15,"OCR_OUTSIDE_HUT_72");
	TA_WashSelf(7,15,7,45,"OCR_WASH_2");
	TA_StandAround(7,45,11,0,"OCR_OUTSIDE_HUT_72");
	TA_RepairHut(11,0,13,0,"OCR_OUTSIDE_HUT_72");
	TA_Smalltalk(13,0,16,0,"OCR_OUTSIDE_HUT_68_BENCH");
	TA_SitCampfire(16,0,22,15,"OCR_OUTSIDE_HUT_72");
};

