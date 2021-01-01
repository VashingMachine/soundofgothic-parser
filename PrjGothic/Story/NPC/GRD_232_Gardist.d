
instance GRD_232_Gardist(Npc_Default)
{
	name[0] = NAME_Gardist;
	npcType = npctype_guard;
	guild = GIL_GRD;
	level = 15;
	voice = 13;
	id = 232;
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
	daily_routine = Rtn_start_232;
};


func void Rtn_start_232()
{
	TA_Sleep(23,0,7,0,"OCC_MERCS_LEFT_ROOM_BED1");
	TA_Smalltalk(7,0,23,0,"OCR_TO_MAINGATE_INSERT");
};

func void Rtn_FMTaken_232()
{
	TA_StayNeutral(7,0,20,0,"OCR_NORTHGATE_RIGHT_GUARD_CHANGE");
	TA_StayNeutral(20,0,7,0,"OCR_NORTHGATE_RIGHT_GUARD_CHANGE");
};

func void Rtn_FMTaken2_232()
{
	TA_Stay(7,0,20,0,"OCR_NORTHGATE_RIGHT_GUARD_CHANGE");
	TA_Stay(20,0,7,0,"OCR_NORTHGATE_RIGHT_GUARD_CHANGE");
};

