
instance Stt_322_Schatten(Npc_Default)
{
	name[0] = NAME_Schatten;
	npcType = npctype_ambient;
	guild = GIL_STT;
	level = 7;
	voice = 12;
	id = 322;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 18;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 124;
	attribute[ATR_HITPOINTS] = 124;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Psionic",57,1,stt_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_Short_04);
	EquipItem(self,ItRw_Bow_Small_02);
	CreateInvItems(self,ItAmArrow,15);
	daily_routine = Rtn_start_322;
};


func void Rtn_start_322()
{
	TA_Sleep(23,2,6,45,"OCR_HUT_3");
	TA_StandAround(6,45,10,0,"OCR_CAMPFIRE_A_MOVEMENT3");
	TA_WashSelf(10,0,10,30,"OCR_LAKE_1");
	TA_StandAround(10,30,12,30,"OCR_CAMPFIRE_A_MOVEMENT2");
	TA_Smalltalk(12,30,15,30,"OCR_CAMPFIRE_A_MOVEMENT3");
	TA_SitAround(15,30,16,0,"OCR_HUT_3");
	TA_Smalltalk(16,0,18,1,"OCR_CAMPFIRE_A_MOVEMENT3");
	TA_SitCampfire(18,1,23,2,"OCR_CAMPFIRE_A_MOVEMENT3");
};

func void Rtn_OMFull_322()
{
	TA_Sleep(23,0,7,0,"OCR_HUT_3");
	TA_StandAround(7,0,23,0,"OCR_TO_MAINGATE");
};

func void Rtn_FMTaken_322()
{
	TA_PickOre(8,0,13,0,"FMC_FM_ENTRANCE");
	TA_WashSelf(14,0,15,0,"OCR_WASH_5");
	TA_Smoke(18,0,23,0,"OCR_OUTSIDE_HUT_54");
	TA_Sleep(23,0,8,0,"OCR_HUT_3");
};

func void Rtn_OrcAssault_322()
{
};

