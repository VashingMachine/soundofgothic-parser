
instance TPL_1400_GorNaBar(Npc_Default)
{
	name[0] = "Gor Na Bar";
	npcType = npctype_main;
	guild = GIL_TPL;
	level = 17;
	flags = 0;
	voice = 9;
	id = 1400;
	attribute[ATR_STRENGTH] = 85;
	attribute[ATR_DEXTERITY] = 65;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 244;
	attribute[ATR_HITPOINTS] = 244;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,2,"Hum_Head_FatBald",16,1,tpl_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	CreateInvItem(self,ItMi_Amulet_Psi_01);
	EquipItem(self,ItMw_2H_Sword_Light_03);
	CreateInvItem(self,ItFoSoup);
	CreateInvItem(self,ItMiJoint_3);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_1400;
};


func void Rtn_start_1400()
{
	TA_Smalltalk(0,0,12,0,"OM_CAVE1_56");
	TA_Smalltalk(12,0,24,0,"OM_CAVE1_56");
};

func void Rtn_Gate_1400()
{
	TA_Guard(0,0,12,0,"OM_CAVE3_26");
	TA_Guard(12,0,24,0,"OM_CAVE3_26");
};

