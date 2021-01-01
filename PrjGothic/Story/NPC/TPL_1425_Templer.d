
instance TPL_1425_Templer(Npc_Default)
{
	name[0] = NAME_Templer;
	npcType = npctype_guard;
	guild = GIL_TPL;
	level = 17;
	voice = 13;
	id = 1425;
	attribute[ATR_STRENGTH] = 85;
	attribute[ATR_DEXTERITY] = 65;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 244;
	attribute[ATR_HITPOINTS] = 244;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Bald",65,1,tpl_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	EquipItem(self,ItMw_2H_Sword_Light_02);
	CreateInvItem(self,ItFoSoup);
	CreateInvItem(self,ItMiJoint_1);
	daily_routine = Rtn_start_1425;
};


func void Rtn_start_1425()
{
	TA_Smalltalk(6,0,7,0,"PSI_SWAMP_6");
	TA_Guard(7,0,8,0,"PSI_PATH_TEMPLE_8");
	TA_Smalltalk(8,0,9,0,"PSI_SWAMP_6");
	TA_Guard(9,0,10,0,"PSI_PATH_TEMPLE_8");
	TA_Smalltalk(10,0,11,0,"PSI_SWAMP_6");
	TA_Guard(11,0,12,0,"PSI_PATH_TEMPLE_8");
	TA_Smalltalk(12,0,13,0,"PSI_SWAMP_6");
	TA_Guard(13,0,14,0,"PSI_PATH_TEMPLE_8");
	TA_Smalltalk(14,0,15,0,"PSI_SWAMP_6");
	TA_Guard(15,0,16,0,"PSI_PATH_TEMPLE_8");
	TA_Smalltalk(16,0,17,0,"PSI_SWAMP_6");
	TA_Guard(17,0,18,0,"PSI_PATH_TEMPLE_8");
	TA_Smalltalk(18,0,19,0,"PSI_SWAMP_6");
	TA_Guard(19,0,20,0,"PSI_PATH_TEMPLE_8");
	TA_Smalltalk(20,0,21,0,"PSI_SWAMP_6");
	TA_Guard(21,0,22,0,"PSI_PATH_TEMPLE_8");
	TA_Smalltalk(22,0,23,0,"PSI_SWAMP_6");
	TA_Guard(23,0,0,0,"PSI_PATH_TEMPLE_8");
	TA_Smalltalk(0,0,1,0,"PSI_SWAMP_6");
	TA_Guard(1,0,2,0,"PSI_PATH_TEMPLE_8");
	TA_Smalltalk(2,0,3,0,"PSI_SWAMP_6");
	TA_Guard(3,0,4,0,"PSI_PATH_TEMPLE_8");
	TA_Smalltalk(4,0,5,0,"PSI_SWAMP_6");
	TA_Guard(5,0,6,0,"PSI_PATH_TEMPLE_8");
};

