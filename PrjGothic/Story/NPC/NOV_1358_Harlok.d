
instance NOV_1358_Harlok(Npc_Default)
{
	name[0] = "Harlok";
	npcType = npctype_main;
	guild = GIL_None;
	level = 3;
	voice = 1;
	id = 1358;
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 7;
	attribute[ATR_MANA] = 7;
	attribute[ATR_HITPOINTS_MAX] = 76;
	attribute[ATR_HITPOINTS] = 76;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Bald",28,1,nov_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	EquipItem(self,ItMw_1H_Hatchet_01);
	daily_routine = Rtn_PreStart_1358;
};


func void Rtn_PreStart_1358()
{
	TA_Smoke(8,0,20,0,"PSI_31_HUT_EX");
	TA_Smoke(20,0,8,0,"PSI_31_HUT_EX");
};

func void Rtn_Start_1358()
{
	TA_HerbAlchemy(6,55,23,55,"PSI_HERB_PLACE_1");
	TA_HerbAlchemy(23,55,6,55,"PSI_HERB_PLACE_1");
};

