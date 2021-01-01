
instance Tpl_1422_GorHanis(Npc_Default)
{
	name[0] = "Gor Hanis";
	npcType = npctype_main;
	guild = GIL_None;
	level = 12;
	voice = 8;
	id = 1422;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 25;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 184;
	attribute[ATR_HITPOINTS] = 184;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Bald",66,1,tpl_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_MASTER;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	EquipItem(self,ItMw_1H_Sword_01);
	CreateInvItem(self,ItFoSoup);
	CreateInvItem(self,ItMiJoint_1);
	CreateInvItem(self,ItMi_Stuff_OldCoin_02);
	daily_routine = Rtn_start_1422;
};


func void Rtn_start_1422()
{
	TA_Sleep(23,45,7,45,"OCR_HUT_32");
	TA_StandAround(7,45,10,5,"OCR_CAMPFIRE_I_1");
	TA_Smalltalk(10,5,16,0,"OCR_SMALLTALK_A_OC_ARENA");
	TA_PracticeSword(16,0,17,15,"OCR_ARENABATTLE");
	TA_SitCampfire(17,15,23,45,"OCR_CAMPFIRE_I_1");
};

