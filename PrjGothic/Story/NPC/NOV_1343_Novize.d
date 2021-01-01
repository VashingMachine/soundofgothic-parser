
instance NOV_1343_Novize(Npc_Default)
{
	name[0] = NAME_Novize;
	npcType = npctype_ambient;
	guild = GIL_NOV;
	level = 9;
	voice = 5;
	id = 1343;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 148;
	attribute[ATR_HITPOINTS] = 148;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_FatBald",22,1,nov_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Axe_Old_01);
	daily_routine = Rtn_start_1343;
};


func void Rtn_start_1343()
{
	TA_Meditate(8,0,10,0,"PSI_TEMPLE_COURT_3_MOVEMENT");
	TA_Meditate(10,0,8,0,"PSI_TEMPLE_COURT_3_MOVEMENT");
};

func void Rtn_Ritual_1343()
{
	TA_Stay(0,0,8,0,"PSI_TEMPLE_NOVIZE_PR");
	TA_Stay(8,0,24,0,"PSI_TEMPLE_NOVIZE_PR");
};

