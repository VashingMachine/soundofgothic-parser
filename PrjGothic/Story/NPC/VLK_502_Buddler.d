
instance VLK_502_Buddler(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 2;
	voice = 4;
	id = 502;
	attribute[ATR_STRENGTH] = 13;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 64;
	attribute[ATR_HITPOINTS] = 64;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Pony",68,4,vlk_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Club_01);
	CreateInvItem(self,ItMiLute);
	CreateInvItem(self,ItFo_Potion_Water_01);
	daily_routine = Rtn_start_502;
};


func void Rtn_start_502()
{
	TA_Sleep(22,0,7,0,"OCR_HUT_10");
	TA_Cook(7,0,17,0,"OCR_COOK_AT_HUT_10");
	TA_PlayTune(17,0,22,0,"OCR_OUTSIDE_HUT_10");
};

