
instance Vlk_580_Grim(Npc_Default)
{
	name[0] = "Grim";
	npcType = npctype_main;
	guild = GIL_VLK;
	level = 5;
	voice = 6;
	id = 580;
	attribute[ATR_STRENGTH] = 25;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_Thief",72,2,vlk_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Club_01);
	CreateInvItem(self,ItFo_Potion_Water_01);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_Start_580;
};


func void Rtn_Start_580()
{
	TA_Sleep(23,1,6,30,"OCR_HUT_2");
	TA_WashSelf(6,30,7,0,"OCR_LAKE_1");
	TA_StandAround(7,0,10,0,"OCR_CAMPFIRE_A_MOVEMENT2");
	TA_Smalltalk(10,0,12,0,"OCR_CAMPFIRE_A_MOVEMENT1");
	TA_Cook(12,0,12,30,"OCR_AT_HUT_2");
	TA_Smalltalk(12,30,15,30,"OCR_CAMPFIRE_A_MOVEMENT3");
	TA_Cook(15,30,18,5,"OCR_AT_HUT_2");
	TA_SitCampfire(18,5,23,1,"OCR_CAMPFIRE_A_MOVEMENT2");
};

func void Rtn_Guide_580()
{
	TA_GuidePC(10,0,22,0,"OC_ROUND_22_CF_2_MOVEMENT");
	TA_GuidePC(22,0,10,0,"OC_ROUND_22_CF_2_MOVEMENT");
};

func void Rtn_InExtremo_580()
{
	TA_WatchInExtremo(10,0,22,0,"OCR_AUDIENCE_01");
	TA_WatchInExtremo(22,0,10,0,"OCR_AUDIENCE_01");
};

