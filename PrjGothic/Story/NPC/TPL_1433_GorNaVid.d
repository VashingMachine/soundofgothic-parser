
instance TPL_1433_GorNaVid(Npc_Default)
{
	name[0] = "Gor Na Vid";
	npcType = npctype_main;
	guild = GIL_TPL;
	level = 17;
	flags = 0;
	voice = 13;
	id = 1433;
	attribute[ATR_STRENGTH] = 85;
	attribute[ATR_DEXTERITY] = 65;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 244;
	attribute[ATR_HITPOINTS] = 244;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Psionic",20,1,tpl_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	EquipItem(self,ItMw_2H_Sword_Light_01);
	CreateInvItem(self,ItFoSoup);
	CreateInvItem(self,ItMiJoint_1);
	daily_routine = Rtn_start_1433;
};


func void Rtn_start_1433()
{
	TA_SitAround(0,0,12,0,"OM_CAVE1_81");
	TA_SitAround(12,0,24,0,"OM_CAVE1_81");
};

func void Rtn_Gate_1433()
{
	TA_Guard(0,0,12,0,"OM_CAVE3_21");
	TA_Guard(12,0,24,0,"OM_CAVE3_21");
};

