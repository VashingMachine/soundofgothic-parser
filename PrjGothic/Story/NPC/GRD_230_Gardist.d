
instance GRD_230_Gardist(Npc_Default)
{
	name[0] = NAME_Gardist;
	npcType = npctype_guard;
	flags = NPC_FLAG_IMMORTAL;
	guild = GIL_GRD;
	level = 20;
	voice = 6;
	id = 230;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",19,0,grd_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	EquipItem(self,ItMw_1H_Sword_02);
	EquipItem(self,ItRw_Crossbow_01);
	CreateInvItems(self,ItAmBolt,30);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	daily_routine = Rtn_start_230;
};


func void Rtn_start_230()
{
	TA_GuardWheelOpen(7,55,19,55,"OCC_MAINGATE_VWHEEL");
	TA_GuardWheelOpen(19,55,7,55,"OCC_MAINGATE_VWHEEL");
};

func void Rtn_Forgetspell_230()
{
	TA_SitAround(0,0,24,0,"OCC_CENTER_1");
};

func void Rtn_OMFull_230()
{
	TA_GuardPassage(21,0,6,0,"OCR_MAINGATE_RIGHT_GUARD");
	TA_Sleep(6,0,15,0,"OCC_MERCS_UPPER_RIGHT_ROOM_BACK");
	TA_StandAround(15,0,16,0,"OCC_MERCS_RIGHT_ROOM_FRONT");
	TA_Smoke(16,0,18,0,"OCC_GATE_CAMPFIRE_1");
	TA_SitAround(18,0,21,0,"OCC_GATE_CAMPFIRE_1");
};

func void Rtn_FMTaken_230()
{
	TA_GuardWheelClosed(7,0,20,0,"OCC_MAINGATE_VWHEEL");
	TA_GuardWheelClosed(20,0,7,0,"OCC_MAINGATE_VWHEEL");
};

