
instance TPL_1439_GorNaDrak(Npc_Default)
{
	name[0] = "Gor Na Drak";
	npcType = npctype_main;
	guild = GIL_TPL;
	level = 21;
	voice = 9;
	id = 1439;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 80;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 292;
	attribute[ATR_HITPOINTS] = 292;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Bald",63,2,tpl_armor_h);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_MASTER;
	Npc_SetTalentSkill(self,NPC_TALENT_2H,2);
	EquipItem(self,ItMw_2H_Sword_Light_04);
	CreateInvItem(self,ItFoSoup);
	CreateInvItem(self,ItMiJoint_1);
	daily_routine = Rtn_start_1439;
};


func void Rtn_start_1439()
{
	TA_Smalltalk(6,0,14,0,"PSI_WALK_05");
	TA_Smalltalk(14,0,6,0,"OW_OM_ENTRANCE02");
};

func void Rtn_FMTaken_1439()
{
	TA_Smalltalk(6,0,14,0,"PSI_WALK_05");
	TA_Smalltalk(14,0,6,0,"PSI_WALK_05");
};

