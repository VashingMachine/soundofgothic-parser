
instance BAU_919_Bauer(Npc_Default)
{
	name[0] = NAME_Bauer;
	npcType = npctype_ambient;
	guild = GIL_BAU;
	level = 2;
	voice = 4;
	id = 919;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 11;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 76;
	attribute[ATR_HITPOINTS] = 76;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Pony",78,1,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItems(self,ItFoRice,4);
	CreateInvItem(self,ItMi_Stuff_Plate_01);
	EquipItem(self,ItMw_1H_Scythe_01);
	daily_routine = Rtn_start_919;
};


func void Rtn_start_919()
{
	TA_Sleep(20,40,7,40,"NC_PATH_PEASANT");
	TA_PickRice(7,40,20,40,"NC_PATH54");
};

