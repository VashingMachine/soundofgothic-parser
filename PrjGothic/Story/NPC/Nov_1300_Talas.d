
instance Nov_1300_Talas(Npc_Default)
{
	name[0] = "Talas";
	npcType = npctype_friend;
	guild = GIL_NOV;
	level = 4;
	flags = NPC_FLAG_IMMORTAL;
	voice = 2;
	id = 1300;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 78;
	attribute[ATR_HITPOINTS] = 78;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_FatBald",27,1,nov_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Mace_01);
	CreateInvItems(self,ItMiNugget,9);
	CreateInvItems(self,ItFoRice,5);
	CreateInvItems(self,ItFoBooze,5);
	CreateInvItems(self,ItLsTorch,2);
	daily_routine = Rtn_start_1300;
};


func void Rtn_start_1300()
{
	TA_Smoke(24,0,6,0,"PSI_PATH_TEMPLE_4_MOVEMENT");
	TA_Smoke(6,0,24,0,"PSI_PATH_TEMPLE_4_MOVEMENT");
};

func void Rtn_GobboCave_1300()
{
	TA_GuidePC(24,0,6,0,"LOCATION_29_02");
	TA_GuidePC(6,0,24,0,"LOCATION_29_02");
};

func void Rtn_ReturnToCamp_1300()
{
	TA_GuidePC(24,0,6,0,"PSI_START");
	TA_GuidePC(6,0,24,0,"PSI_START");
};

func void Rtn_BackInCamp_1300()
{
	TA_Smoke(24,0,6,0,"PSI_PATH_TEMPLE_4_MOVEMENT");
	TA_Smoke(6,0,24,0,"PSI_PATH_TEMPLE_4_MOVEMENT");
};

func void Rtn_Ogy_1300()
{
	TA_GuidePC(24,0,6,0,"OW_PATH_011");
	TA_GuidePC(6,0,24,0,"OW_PATH_011");
};

func void Rtn_ReturnToCampAgain_1300()
{
	TA_Smoke(24,0,6,0,"PSI_PATH_TEMPLE_4_MOVEMENT");
	TA_Smoke(6,0,24,0,"PSI_PATH_TEMPLE_4_MOVEMENT");
};

