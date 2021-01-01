
instance VLK_557_Buddler(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 3;
	voice = 1;
	id = 557;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 76;
	attribute[ATR_HITPOINTS] = 76;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_FatBald",71,1,vlk_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItMwPickaxe);
	CreateInvItem(self,ItFoBeer);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_557;
};


func void Rtn_start_557()
{
	TA_Sleep(23,15,6,30,"OCR_HUT_75");
	TA_WashSelf(6,30,7,6,"OCR_LAKE_4");
	TA_StandAround(7,6,12,0,"OCR_OUTSIDE_HUT_77_MOVEMENT2");
	TA_SitAround(12,0,13,0,"OCR_OUTSIDE_HUT_75");
	TA_Cook(13,0,14,0,"OCR_OUTSIDE_HUT_75");
	TA_StandAround(14,0,16,0,"OCR_OUTSIDE_HUT_77_MOVEMENT2");
	TA_SitAround(16,0,17,55,"OCR_OUTSIDE_HUT_75");
	TA_SitCampfire(17,55,23,15,"OCR_OUTSIDE_HUT_77_MOVEMENT2");
};

