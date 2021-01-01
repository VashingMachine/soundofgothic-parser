
instance GUR_1208_BaalCadar(Npc_Default)
{
	name[0] = "Baal Cadar";
	npcType = npctype_main;
	guild = GIL_GUR;
	level = 28;
	voice = 2;
	id = 1208;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 55;
	attribute[ATR_MANA_MAX] = 50;
	attribute[ATR_MANA] = 50;
	attribute[ATR_HITPOINTS_MAX] = 376;
	attribute[ATR_HITPOINTS] = 376;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Psionic",20,1,gur_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	CreateInvItem(self,ItArRuneWindfist);
	B_Give_BaalCadarChapter1Runes();
	fight_tactic = FAI_HUMAN_MAGE;
	daily_routine = Rtn_start_1208;
};


func void Rtn_start_1208()
{
	TA_Sleep(2,0,8,0,"PSI_23_HUT_IN");
	TA_Teaching(8,0,2,0,"PSI_TEACH_CADAR");
};

