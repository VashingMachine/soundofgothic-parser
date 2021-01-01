
instance GRD_251_Kirgo(Npc_Default)
{
	name[0] = "Kirgo";
	npcType = npctype_main;
	guild = GIL_None;
	level = 10;
	voice = 5;
	id = 251;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 160;
	attribute[ATR_HITPOINTS] = 160;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,3,"Hum_Head_FatBald",2,1,grd_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_01);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	daily_routine = Rtn_start_251;
};


func void Rtn_start_251()
{
	TA_Sleep(23,45,7,45,"OCR_HUT_21");
	TA_StandAround(7,45,10,0,"OCR_ARENABATTLE_OUTSIDE");
	TA_PracticeSword(10,0,14,5,"OCR_ARENABATTLE");
	TA_Smith_Sharp(14,5,17,15,"OCR_ARENABATTLE_OUTSIDE");
	TA_SitCampfire(17,15,23,45,"OCR_ARENABATTLE_OUTSIDE");
};

func void Rtn_Guide_251()
{
	TA_GuidePC(8,0,20,0,"OCR_ARENABATTLE_TRAIN");
	TA_GuidePC(20,0,8,0,"OCR_ARENABATTLE_TRAIN");
};

