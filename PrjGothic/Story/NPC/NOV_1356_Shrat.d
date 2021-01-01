
instance NOV_1356_Shrat(Npc_Default)
{
	name[0] = "Shrat";
	npcType = npctype_main;
	guild = GIL_NOV;
	level = 3;
	voice = 2;
	id = 1356;
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 7;
	attribute[ATR_MANA] = 7;
	attribute[ATR_HITPOINTS_MAX] = 76;
	attribute[ATR_HITPOINTS] = 76;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_FatBald",28,1,nov_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	EquipItem(self,ItMw_1H_Hatchet_01);
	daily_routine = Rtn_start_1356;
};


func void Rtn_start_1356()
{
	TA_SitCampfire(8,0,20,0,"PATH_SWAMP_HUT");
	TA_SitCampfire(20,0,8,0,"PATH_SWAMP_HUT");
};

func void Rtn_Follow_1356()
{
	TA_FollowPC(23,0,16,0,"PATH_SWAMP_HUT");
	TA_FollowPC(16,0,23,0,"PATH_SWAMP_HUT");
};

