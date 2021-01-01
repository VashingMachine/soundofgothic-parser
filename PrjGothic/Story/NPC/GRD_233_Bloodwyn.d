
instance GRD_233_Bloodwyn(Npc_Default)
{
	name[0] = "Bloodwyn";
	npcType = npctype_main;
	guild = GIL_GRD;
	level = 15;
	voice = 8;
	id = 233;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 160;
	attribute[ATR_HITPOINTS] = 160;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Bald",18,1,grd_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	EquipItem(self,ItMw_1H_Sword_04);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	daily_routine = Rtn_start_233;
};


func void Rtn_start_233()
{
	TA_Guard(6,0,7,0,"OCR_OUTSIDE_HUT_77_INSERT");
	TA_Guard(7,0,8,0,"OCR_OUTSIDE_HUT_63");
	TA_Guard(8,0,9,0,"OCR_OUTSIDE_HUT_77_INSERT");
	TA_Guard(9,0,10,0,"OCR_OUTSIDE_HUT_63");
	TA_Guard(10,0,11,0,"OCR_OUTSIDE_HUT_77_INSERT");
	TA_Guard(11,0,12,0,"OCR_OUTSIDE_HUT_63");
	TA_Guard(12,0,13,0,"OCR_OUTSIDE_HUT_77_INSERT");
	TA_Guard(13,0,14,0,"OCR_OUTSIDE_HUT_63");
	TA_Guard(14,0,15,0,"OCR_OUTSIDE_HUT_77_INSERT");
	TA_Guard(15,0,16,0,"OCR_OUTSIDE_HUT_63");
	TA_Guard(16,0,17,0,"OCR_OUTSIDE_HUT_77_INSERT");
	TA_Guard(17,0,18,0,"OCR_OUTSIDE_HUT_63");
	TA_Guard(18,0,19,0,"OCR_OUTSIDE_HUT_77_INSERT");
	TA_Guard(19,0,20,0,"OCR_OUTSIDE_HUT_63");
	TA_Guard(20,0,21,0,"OCR_OUTSIDE_HUT_77_INSERT");
	TA_Guard(21,0,22,0,"OCR_OUTSIDE_HUT_63");
	TA_Guard(22,0,23,0,"OCR_OUTSIDE_HUT_77_INSERT");
	TA_Guard(23,0,0,0,"OCR_OUTSIDE_HUT_63");
	TA_Guard(0,0,1,0,"OCR_OUTSIDE_HUT_77_INSERT");
	TA_Guard(1,0,2,0,"OCR_OUTSIDE_HUT_63");
	TA_Guard(2,0,3,0,"OCR_OUTSIDE_HUT_77_INSERT");
	TA_Guard(3,0,4,0,"OCR_OUTSIDE_HUT_63");
	TA_Guard(4,0,5,0,"OCR_OUTSIDE_HUT_77_INSERT");
	TA_Guard(5,0,6,0,"OCR_OUTSIDE_HUT_63");
};

func void Rtn_FMTaken_233()
{
	TA_StayNeutral(7,0,20,0,"OCR_NORTHGATE_LEFT_GUARD_CHANGE");
	TA_StayNeutral(20,0,7,0,"OCR_NORTHGATE_LEFT_GUARD_CHANGE");
};

func void Rtn_FMTaken2_233()
{
	TA_Stay(7,0,20,0,"OCR_NORTHGATE_LEFT_GUARD_CHANGE");
	TA_Stay(20,0,7,0,"OCR_NORTHGATE_LEFT_GUARD_CHANGE");
};

