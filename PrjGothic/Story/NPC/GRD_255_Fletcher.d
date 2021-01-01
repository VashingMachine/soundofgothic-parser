
instance GRD_255_Fletcher(Npc_Default)
{
	name[0] = "Fletcher";
	npcType = npctype_main;
	guild = GIL_GRD;
	level = 15;
	voice = 6;
	id = 255;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_Thief",1,2,grd_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	EquipItem(self,ItMw_1H_Sword_02);
	EquipItem(self,ItRw_Crossbow_01);
	CreateInvItems(self,ItAmBolt,30);
	CreateInvItem(self,ItFoCheese);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_Start_255;
};


func void Rtn_Start_255()
{
	TA_Guard(6,0,7,0,"OCR_OUTSIDE_ARENA_BARONS_HUT");
	TA_Guard(7,0,8,0,"OCR_LADDER_TOP_01");
	TA_Guard(8,0,9,0,"OCR_OUTSIDE_ARENA_BARONS_HUT");
	TA_Guard(9,0,10,0,"OCR_BEHIND_HUT_17");
	TA_Guard(10,0,11,0,"OCR_OUTSIDE_ARENA_BARONS_HUT");
	TA_Guard(11,0,12,0,"OCR_LADDER_TOP_01");
	TA_Guard(12,0,13,0,"OCR_OUTSIDE_ARENA_BARONS_HUT");
	TA_Guard(13,0,14,0,"OCR_BEHIND_HUT_17");
	TA_Guard(14,0,15,0,"OCR_OUTSIDE_ARENA_BARONS_HUT");
	TA_Guard(15,0,16,0,"OCR_LADDER_TOP_01");
	TA_Guard(16,0,17,0,"OCR_OUTSIDE_ARENA_BARONS_HUT");
	TA_Guard(17,0,18,0,"OCR_BEHIND_HUT_17");
	TA_Guard(18,0,19,0,"OCR_OUTSIDE_ARENA_BARONS_HUT");
	TA_Guard(19,0,20,0,"OCR_LADDER_TOP_01");
	TA_Guard(20,0,21,0,"OCR_OUTSIDE_ARENA_BARONS_HUT");
	TA_Guard(21,0,22,0,"OCR_BEHIND_HUT_17");
	TA_Guard(22,0,23,0,"OCR_OUTSIDE_ARENA_BARONS_HUT");
	TA_Guard(23,0,0,0,"OCR_LADDER_TOP_01");
	TA_Guard(0,0,1,0,"OCR_OUTSIDE_ARENA_BARONS_HUT");
	TA_Guard(1,0,2,0,"OCR_BEHIND_HUT_17");
	TA_Guard(2,0,3,0,"OCR_OUTSIDE_ARENA_BARONS_HUT");
	TA_Guard(3,0,4,0,"OCR_LADDER_TOP_01");
	TA_Guard(4,0,5,0,"OCR_OUTSIDE_ARENA_BARONS_HUT");
	TA_Guard(5,0,6,0,"OCR_BEHIND_HUT_17");
};

func void Rtn_FMTaken_255()
{
	TA_StayNeutral(7,0,20,0,"OC1");
	TA_StayNeutral(20,0,7,0,"OC1");
};

func void Rtn_FMTaken2_255()
{
	TA_Stay(7,0,20,0,"OC1");
	TA_Stay(20,0,7,0,"OC1");
};

