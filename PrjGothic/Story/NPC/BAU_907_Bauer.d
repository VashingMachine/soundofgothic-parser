
instance BAU_907_Bauer(Npc_Default)
{
	name[0] = NAME_Bauer;
	npcType = npctype_ambient;
	guild = GIL_BAU;
	level = 2;
	voice = 9;
	id = 907;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 88;
	attribute[ATR_HITPOINTS] = 88;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_Bald",4,1,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItems(self,ItFoRice,4);
	CreateInvItem(self,ItMi_Stuff_Plate_01);
	CreateInvItem(self,ItFoBooze);
	EquipItem(self,ItMw_1H_Scythe_01);
	daily_routine = Rtn_start_907;
};


func void Rtn_start_907()
{
	TA_Sleep(20,10,7,10,"NC_PATH_PEASANT3");
	TA_PickRice(7,10,20,10,"NC_PATH82");
};

