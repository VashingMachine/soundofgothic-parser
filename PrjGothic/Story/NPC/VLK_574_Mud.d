
instance VLK_574_Mud(Npc_Default)
{
	name[0] = "Wrzód";
	npcType = npctype_main;
	guild = GIL_None;
	level = 0;
	voice = 7;
	id = 574;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 88;
	attribute[ATR_HITPOINTS] = 88;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Pony",109,1,vlk_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
	EquipItem(self,ItMw_1H_Club_01);
	CreateInvItems(self,ItMiNugget,5);
	CreateInvItem(self,ItFo_Potion_Water_01);
	daily_routine = Rtn_start_574;
};


func void Rtn_start_574()
{
	TA_Sleep(23,0,6,0,"OCR_HUT_13");
	TA_SitAround(23,0,6,0,"OCR_OUTSIDE_HUT_13");
};

func void Rtn_Follow_574()
{
	TA_FollowPC(23,0,16,0,"OCR_HUT_13");
	TA_FollowPC(16,0,23,0,"OCR_HUT_13");
};

