
instance NOV_1349_Novize(Npc_Default)
{
	name[0] = NAME_Novize;
	npcType = npctype_ambient;
	guild = GIL_NOV;
	level = 3;
	voice = 3;
	id = 1349;
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 76;
	attribute[ATR_HITPOINTS] = 76;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Psionic",26,2,nov_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Hatchet_01);
	EquipItem(self,ItMiLute);
	daily_routine = Rtn_start_1349;
};


func void Rtn_start_1349()
{
	TA_Smalltalk(8,0,23,0,"PSI_TEMPLE_STAIRS_3");
	TA_Smalltalk(23,0,8,0,"PSI_TEMPLE_STAIRS_3");
};

func void Rtn_Ritual_1349()
{
	TA_Stay(0,0,8,0,"PSI_TEMPLE_NOVIZE_PR3");
	TA_Stay(8,0,24,0,"PSI_TEMPLE_NOVIZE_PR3");
};

