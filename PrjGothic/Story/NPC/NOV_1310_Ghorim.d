
instance NOV_1310_Ghorim(Npc_Default)
{
	name[0] = "Ghorim";
	npcType = npctype_main;
	guild = GIL_NOV;
	level = 9;
	voice = 2;
	id = 1310;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 148;
	attribute[ATR_HITPOINTS] = 148;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Psionic",29,1,nov_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Axe_Old_01);
	daily_routine = Rtn_PreStart_1310;
};


func void Rtn_PreStart_1310()
{
	TA_HerbAlchemy(6,55,23,55,"PSI_HERB_PLACE_1");
	TA_Sleep(23,55,6,55,"PSI_6_HUT_IN_BED3");
};

func void Rtn_start_1310()
{
	TA_Sleep(6,55,23,55,"PSI_6_HUT_IN_BED3");
	TA_Sleep(23,55,6,55,"PSI_6_HUT_IN_BED3");
};

