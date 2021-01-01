
instance VLK_573_Graham(Npc_Default)
{
	name[0] = "Graham";
	npcType = npctype_main;
	guild = GIL_VLK;
	level = 4;
	voice = 2;
	id = 573;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 88;
	attribute[ATR_HITPOINTS] = 88;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Fighter",67,1,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Mace_Light_01);
	CreateInvItem(self,ItFo_Potion_Water_01);
	CreateInvItem(self,ItWrOMMap);
	CreateInvItem(self,ItWrWorldmap);
	CreateInvItem(self,ItWrOCmap);
	CreateInvItem(self,ItWrPinup);
	daily_routine = Rtn_start_573;
};


func void Rtn_start_573()
{
	TA_Sleep(22,30,6,0,"OCR_HUT_76");
	TA_SitAround(6,0,7,0,"OCR_OUTSIDE_HUT_76");
	TA_StandAround(7,0,11,0,"OCR_OUSIDE_HUT_77_INSERT");
	TA_WashSelf(11,0,11,30,"OCR_LAKE_4");
	TA_RepairHut(11,30,12,0,"OCR_OUTSIDE_HUT_76");
	TA_Boss(12,0,18,0,"OCR_HUT_76");
	TA_SitCampfire(18,0,22,30,"OCR_OUSIDE_HUT_77_INSERT");
};

