
instance STT_330_Schatten(Npc_Default)
{
	name[0] = NAME_Schatten;
	npcType = npctype_ambient;
	guild = GIL_STT;
	level = 7;
	voice = 10;
	id = 330;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 18;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 124;
	attribute[ATR_HITPOINTS] = 124;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_FatBald",2,1,stt_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_Short_04);
	EquipItem(self,ItRw_Bow_Small_02);
	CreateInvItems(self,ItAmArrow,10);
	CreateInvItem(self,ItKeLockpick);
	CreateInvItems(self,ItFoBeer,2);
	daily_routine = Rtn_PreStart_330;
};


func void Rtn_PreStart_330()
{
	TA_Smalltalk(8,0,20,0,"OCR_OUTSIDE_HUT_44");
	TA_Smalltalk(20,0,8,0,"OCR_OUTSIDE_HUT_44");
};

func void Rtn_start_330()
{
	TA_Sleep(23,0,7,30,"OCR_HUT_44");
	TA_SitAround(7,30,10,0,"OCR_OUTSIDE_HUT_44");
	TA_CookForMe(10,0,17,0,"OCR_OUTSIDE_HUT_44");
	TA_SitAround(17,0,23,0,"OCR_OUTSIDE_HUT_44");
};

