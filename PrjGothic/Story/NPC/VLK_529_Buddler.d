
instance VLK_529_Buddler(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 2;
	voice = 2;
	id = 529;
	attribute[ATR_STRENGTH] = 13;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 64;
	attribute[ATR_HITPOINTS] = 64;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Psionic",71,1,vlk_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItMwPickaxe);
	daily_routine = Rtn_start_529;
};


func void Rtn_start_529()
{
	TA_Sleep(22,0,6,0,"OCR_HUT_69");
	TA_Boss(6,0,6,30,"OCR_OUTSIDE_HUT_69");
	TA_Smalltalk(6,30,12,0,"OCR_OUTSIDE_HUT_69");
	TA_Stand(12,0,13,0,"OCR_OUTSIDE_HUT_69");
	TA_Smalltalk(13,0,16,0,"OCR_OUTSIDE_HUT_69");
	TA_StandAround(16,0,22,0,"OCR_OUTSIDE_HUT_69");
};

