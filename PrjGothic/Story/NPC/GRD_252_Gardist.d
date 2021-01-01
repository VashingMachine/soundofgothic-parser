
instance GRD_252_Gardist(Npc_Default)
{
	name[0] = NAME_Gardist;
	npcType = npctype_guard;
	guild = GIL_GRD;
	level = 10;
	voice = 6;
	id = 252;
	attribute[ATR_STRENGTH] = 35;
	attribute[ATR_DEXTERITY] = 35;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 160;
	attribute[ATR_HITPOINTS] = 160;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",19,1,grd_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_01);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	daily_routine = Rtn_start_252;
};


func void Rtn_start_252()
{
	TA_Sleep(23,0,6,0,"OCC_MERCS_LEFT_ROOM_BED2");
	TA_Smalltalk(6,0,23,0,"OCR_TO_MAINGATE_INSERT");
};

func void Rtn_FMTaken_252()
{
	TA_StayNeutral(7,0,20,0,"OCR_MAINGATE_OUTSIDE");
	TA_StayNeutral(20,0,7,0,"OCR_MAINGATE_OUTSIDE");
};

func void Rtn_FMTaken2_252()
{
	TA_Stay(7,0,20,0,"OCR_MAINGATE_OUTSIDE");
	TA_Stay(20,0,7,0,"OCR_MAINGATE_OUTSIDE");
};

