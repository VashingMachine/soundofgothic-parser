
instance BAU_923_Bauer(Npc_Default)
{
	name[0] = NAME_Bauer;
	npcType = npctype_ambient;
	guild = GIL_BAU;
	level = 2;
	voice = 2;
	id = 923;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 11;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 76;
	attribute[ATR_HITPOINTS] = 76;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Bald",5,2,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItems(self,ItFoRice,3);
	EquipItem(self,ItMw_1H_Scythe_01);
	daily_routine = Rtn_start_923;
};


func void Rtn_start_923()
{
	TA_SitCampfire(20,5,7,5,"NC_PATH_PEASANT_OUTSIDE20");
	TA_WashSelf(7,5,7,23,"NC_PATH_PEASANT_OUTSIDE8_WASH");
	TA_PickRice(7,23,20,5,"NC_PATH83_MOVEMENT");
};

