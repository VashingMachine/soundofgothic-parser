
instance NOV_1339_Novize(Npc_Default)
{
	name[0] = NAME_Novize;
	npcType = npctype_ambient;
	guild = GIL_NOV;
	level = 14;
	voice = 3;
	id = 1339;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 19;
	attribute[ATR_MANA] = 19;
	attribute[ATR_HITPOINTS_MAX] = 208;
	attribute[ATR_HITPOINTS] = 208;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_FatBald",27,1,nov_armor_h);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Mace_01);
	daily_routine = Rtn_start_1339;
};


func void Rtn_start_1339()
{
	TA_Meditate(8,0,10,0,"PSI_TEMPLE_NOVIZE_PR4_MOVEMENT");
	TA_Meditate(10,0,8,0,"PSI_TEMPLE_NOVIZE_PR4_MOVEMENT");
};

func void Rtn_Ritual_1339()
{
	TA_Stay(0,0,8,0,"PSI_TEMPLE_NOVIZE_PR");
	TA_Stay(8,0,24,0,"PSI_TEMPLE_NOVIZE_PR");
};

