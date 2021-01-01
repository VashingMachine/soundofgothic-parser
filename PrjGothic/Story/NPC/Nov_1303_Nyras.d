
instance Nov_1303_Nyras(Npc_Default)
{
	name[0] = "Nyras";
	npcType = npctype_main;
	guild = GIL_None;
	level = 6;
	voice = 3;
	id = 1303;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 24;
	attribute[ATR_DEXTERITY] = 13;
	attribute[ATR_MANA_MAX] = 12;
	attribute[ATR_MANA] = 12;
	attribute[ATR_HITPOINTS_MAX] = 132;
	attribute[ATR_HITPOINTS] = 132;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_FatBald",22,1,nov_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Mace_04);
	CreateInvItems(self,ItMiNugget,15);
	CreateInvItems(self,ItFoRice,5);
	CreateInvItems(self,ItFoBooze,3);
	CreateInvItems(self,ItMiJoint_1,1);
	daily_routine = Rtn_Start_1303;
};


func void Rtn_Start_1303()
{
	TA_Smalltalk(8,0,23,0,"PSI_3_HUT_EX");
	TA_Sleep(23,0,8,0,"PSI_4_HUT_IN");
};

func void Rtn_PrepareRitual_1303()
{
	TA_Stay(0,0,7,0,"WP_CIRCLE_01");
	TA_Stay(7,0,24,0,"WP_CIRCLE_01");
};

