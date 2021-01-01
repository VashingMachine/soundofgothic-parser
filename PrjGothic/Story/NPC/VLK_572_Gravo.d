
instance VLK_572_Gravo(Npc_Default)
{
	name[0] = "Gravo";
	npcType = npctype_main;
	guild = GIL_VLK;
	level = 4;
	voice = 4;
	id = 572;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 88;
	attribute[ATR_HITPOINTS] = 88;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,0,"Hum_Head_Psionic",0,1,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Hatchet_01);
	CreateInvItem(self,ItFo_Potion_Water_01);
	CreateInvItems(self,ItMiNugget,5);
	daily_routine = Rtn_start_572;
};


func void Rtn_start_572()
{
	TA_Sleep(22,30,6,0,"OCR_HUT_4");
	TA_SitAround(6,0,11,0,"OCR_AUDIENCE_01");
	TA_CookForMe(11,0,15,0,"OCR_OUTSIDE_HUT_4_INSERT");
	TA_StandAround(15,0,17,0,"OCR_OUTSIDE_HUT_4_INSERT");
	TA_SitAround(17,0,22,30,"OCR_AUDIENCE_01");
};

