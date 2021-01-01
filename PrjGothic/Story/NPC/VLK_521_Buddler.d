
instance VLK_521_Buddler(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 2;
	voice = 2;
	id = 521;
	attribute[ATR_STRENGTH] = 13;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 64;
	attribute[ATR_HITPOINTS] = 64;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_Thief",67,1,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Club_01);
	CreateInvItem(self,ItFoApple);
	daily_routine = Rtn_start_521;
};


func void Rtn_start_521()
{
	TA_Sleep(22,30,7,0,"OCR_HUT_45");
	TA_Smalltalk(7,0,11,0,"OCR_OUTSIDE_HUT_47_SMALT2");
	TA_RepairHut(11,0,13,0,"OCR_OUTSIDE_HUT_45");
	TA_Smalltalk(13,0,16,0,"OCR_OUTSIDE_HUT_47_SMALT2");
	TA_PlayTune(16,0,22,30,"OCR_OUTSIDE_HUT_48");
};

