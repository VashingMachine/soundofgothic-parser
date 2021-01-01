
instance GRD_228_Gardist(Npc_Default)
{
	name[0] = NAME_Gardist;
	npcType = npctype_guard;
	flags = NPC_FLAG_IMMORTAL;
	guild = GIL_GRD;
	level = 15;
	voice = 7;
	id = 228;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,2,"Hum_Head_FatBald",5,1,grd_armor_m);
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
	daily_routine = Rtn_Prestart_228;
};


func void Rtn_Prestart_228()
{
	TA_GuardWheelOpen(7,55,19,55,"OCR_NORTHGATE_VWHEEL");
	TA_GuardWheelOpen(19,55,7,55,"OCR_NORTHGATE_VWHEEL");
};

func void Rtn_start_228()
{
	TA_GuardWheelOpen(7,55,19,55,"OCR_NORTHGATE_VWHEEL");
	TA_GuardWheelOpen(19,55,7,55,"OCR_NORTHGATE_VWHEEL");
};

func void Rtn_OMFull_228()
{
	TA_StandAround(12,0,13,0,"OCC_MERCS_RIGHT_ROOM_FRONT");
	TA_SitAround(13,0,13,15,"OCC_FIGHTTRAINING");
	TA_PracticeSword(13,15,18,0,"OCC_FIGHTTRAINING");
	TA_SitAround(18,0,21,0,"OCC_GATE_BEHIND_RIGHT_TOWER");
	TA_GuardPassage(21,0,6,0,"OCR_MAINGATE_LEFT_GUARD");
	TA_Sleep(6,0,12,0,"OCC_MERCS_UPPER_RIGHT_ROOM_FRONT");
};

func void Rtn_FMTaken_228()
{
	TA_GuardWheelClosed(7,0,20,0,"OCR_NORTHGATE_VWHEEL");
	TA_GuardWheelClosed(20,0,7,0,"OCR_NORTHGATE_VWHEEL");
};

func void Rtn_OrcAssault_228()
{
};

