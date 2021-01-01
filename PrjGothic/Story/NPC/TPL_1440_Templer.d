
instance TPL_1440_Templer(Npc_Default)
{
	name[0] = NAME_Templer;
	npcType = npctype_guard;
	guild = GIL_TPL;
	level = 17;
	flags = 0;
	voice = 13;
	id = 1440;
	attribute[ATR_STRENGTH] = 85;
	attribute[ATR_DEXTERITY] = 65;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 244;
	attribute[ATR_HITPOINTS] = 244;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Psionic",64,1,tpl_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	EquipItem(self,ItMw_2H_Sword_Light_01);
	CreateInvItem(self,ItFoSoup);
	CreateInvItem(self,ItMiJoint_1);
	daily_routine = Rtn_start_1440;
};


func void Rtn_start_1440()
{
	TA_Smalltalk(6,0,14,0,"PSI_SWAMP_MOVEMENT");
	TA_Smalltalk(14,0,6,0,"OW_OM_ENTRANCE02");
};

func void Rtn_FMTaken_1440()
{
	TA_Smalltalk(6,0,14,0,"PSI_SWAMP_MOVEMENT");
	TA_Smalltalk(14,0,6,0,"PSI_SWAMP_MOVEMENT");
};

