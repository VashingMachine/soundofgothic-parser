
instance STT_329_Dexter(Npc_Default)
{
	name[0] = "Dexter";
	npcType = npctype_main;
	guild = GIL_STT;
	level = 7;
	voice = 10;
	id = 329;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 18;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_HITPOINTS_MAX] = 124;
	attribute[ATR_HITPOINTS] = 124;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",58,1,stt_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_Short_04);
	EquipItem(self,ItRw_Bow_Small_03);
	CreateInvItems(self,ItAmArrow,15);
	CreateInvItem(self,ItWrWorldmap);
	CreateInvItems(self,ItKeLockpick,20);
	CreateInvItems(self,ItMiNugget,200);
	CreateInvItems(self,ItMiJoint_1,23);
	CreateInvItems(self,ItMiJoint_2,15);
	CreateInvItems(self,ItMiJoint_3,8);
	CreateInvItems(self,ItFo_Potion_Health_01,10);
	CreateInvItems(self,ItFo_Potion_Health_02,5);
	CreateInvItems(self,ItFo_Potion_Mana_01,8);
	daily_routine = Rtn_start_329;
};


func void Rtn_start_329()
{
	TA_Sleep(23,30,7,30,"OCR_HUT_55");
	TA_Boss(7,30,8,0,"OCR_OUTSIDE_HUT_55");
	TA_WashSelf(8,0,8,15,"OCR_WASH_8");
	TA_SitAround(8,15,11,0,"OCR_OUTSIDE_HUT_55");
	TA_Smalltalk(11,0,17,0,"OCR_OUTSIDE_HUT_47_SMALT1");
	TA_StandAround(17,0,23,30,"OCR_MARKETPLACE_SCAVENGER");
};

