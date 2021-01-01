
instance BAU_901_Horatio(Npc_Default)
{
	name[0] = "Horacy";
	npcType = npctype_main;
	guild = GIL_BAU;
	level = 8;
	voice = 9;
	id = 901;
	attribute[ATR_STRENGTH] = 45;
	attribute[ATR_DEXTERITY] = 11;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 136;
	attribute[ATR_HITPOINTS] = 136;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_Fighter",99,2,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItems(self,ItFoRice,5);
	CreateInvItem(self,ItMi_Stuff_Plate_01);
	CreateInvItem(self,ItFoBooze);
	EquipItem(self,ItMw_1H_Scythe_01);
	daily_routine = Rtn_start_901;
};


func void Rtn_start_901()
{
	TA_SitCampfire(20,0,6,0,"NC_PATH_PEASANT_OUTSIDE10");
	TA_PickRice(6,0,20,0,"NC_PATH78_A");
};

