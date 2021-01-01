
instance TPL_1403_Templer(Npc_Default)
{
	name[0] = NAME_Templer;
	npcType = npctype_guard;
	guild = GIL_TPL;
	level = 17;
	flags = 0;
	voice = 8;
	id = 1403;
	attribute[ATR_STRENGTH] = 85;
	attribute[ATR_DEXTERITY] = 65;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 244;
	attribute[ATR_HITPOINTS] = 244;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",60,1,tpl_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_RANGED;
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	EquipItem(self,ItMw_2H_Sword_Light_01);
	EquipItem(self,ItRw_Crossbow_01);
	CreateInvItems(self,ItAmBolt,30);
	CreateInvItem(self,ItFoSoup);
	CreateInvItem(self,ItMiJoint_1);
	daily_routine = Rtn_start_1403;
};


func void Rtn_start_1403()
{
	TA_GuardPalisade(0,0,22,0,"PSI_GUARD2");
	TA_GuardPalisade(22,0,24,0,"PSI_GUARD2");
};

func void Rtn_PrepareRitual_1403()
{
	TA_GuardPalisade(0,0,22,0,"PSI_GUARD2");
	TA_GuardPalisade(22,0,24,0,"PSI_GUARD2");
};

func void Rtn_OMFull_1403()
{
	TA_GuardPalisade(0,0,22,0,"PSI_GUARD2");
	TA_GuardPalisade(22,0,24,0,"PSI_GUARD2");
};

func void Rtn_FMTaken_1403()
{
	TA_GuardPalisade(0,0,22,0,"PSI_GUARD2");
	TA_GuardPalisade(22,0,24,0,"PSI_GUARD2");
};

func void Rtn_OrcAssault_1403()
{
	TA_GuardPalisade(0,0,22,0,"PSI_GUARD2");
	TA_GuardPalisade(22,0,24,0,"PSI_GUARD2");
};

