
instance PC_Mage(Npc_Default)
{
	name[0] = "Milten";
	npcType = npctype_friend;
	guild = GIL_KDF;
	level = 999;
	voice = 2;
	id = 2;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 30;
	attribute[ATR_MANA_MAX] = 150;
	attribute[ATR_MANA] = 150;
	attribute[ATR_HITPOINTS_MAX] = 250;
	attribute[ATR_HITPOINTS] = 250;
	protection[PROT_FIRE] = 1000;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Bald",76,1,kdf_armor_l);
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	CreateInvItem(self,ItArRuneFireball);
	CreateInvItems(self,ItFoWine,3);
	CreateInvItems(self,ItFo_Potion_Health_02,10);
	CreateInvItems(self,ItFo_Potion_Mana_02,10);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_MAGE;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
	daily_routine = rtn_Start_2;
};


func void rtn_Start_2()
{
	TA_Sleep(0,0,8,0,"OCC_CHAPEL_LEFT_ROOM");
	TA_Stand(8,0,0,0,"OCC_CHAPEL_ENTRANCE");
};

func void Rtn_SHWait_2()
{
	TA_Stay(0,0,23,0,"OW_PATH_274");
	TA_Stay(23,0,24,0,"OW_PATH_274");
};

func void Rtn_SHGuide_2()
{
	TA_GuidePC(0,0,23,0,"OW_PATH_3_STONES");
	TA_GuidePC(23,0,24,0,"OW_PATH_3_STONES");
};

func void Rtn_SHFollow_2()
{
	TA_FollowPC(0,0,23,0,"OW_PATH_3_STONES");
	TA_FollowPC(23,0,24,0,"OW_PATH_3_STONES");
};

func void Rtn_ReturnToOC_2()
{
	TA_SitAround(0,0,12,0,"LOCATION_02_04");
	TA_SitAround(12,0,24,0,"LOCATION_02_04");
};

func void Rtn_OCWait_2()
{
	TA_Stay(0,0,12,0,"PATH_OC_NC");
	TA_Stay(12,0,24,0,"PATH_OC_NC");
};

func void Rtn_LSWait_2()
{
	TA_Stay(0,0,12,0,"NC_KDW_CAVE_STAIRS");
	TA_Stay(12,0,24,0,"NC_KDW_CAVE_STAIRS");
};

func void Rtn_LSAway_2()
{
	TA_GuidePC(0,0,12,0,"NC_KDW04_IN");
	TA_GuidePC(12,0,24,0,"NC_KDW04_IN");
};

func void Rtn_LSOreHeap_2()
{
	TA_Stay(0,0,12,0,"NC_PATH41");
	TA_Stay(12,0,24,0,"NC_PATH41");
};

