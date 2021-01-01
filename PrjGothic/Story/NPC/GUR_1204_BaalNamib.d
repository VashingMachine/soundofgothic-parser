
instance GUR_1204_BaalNamib(Npc_Default)
{
	name[0] = "Baal Namib";
	npcType = npctype_main;
	guild = GIL_GUR;
	level = 29;
	flags = NPC_FLAG_IMMORTAL;
	voice = 2;
	id = 1204;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 55;
	attribute[ATR_MANA_MAX] = 50;
	attribute[ATR_MANA] = 50;
	attribute[ATR_HITPOINTS_MAX] = 388;
	attribute[ATR_HITPOINTS] = 388;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Psionic",20,1,gur_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	CreateInvItem(self,ItArRuneSleep);
	EquipItem(self,Namibs_Keule);
	daily_routine = Rtn_Start_1204;
	fight_tactic = FAI_HUMAN_MAGE;
};


func void Rtn_Start_1204()
{
	TA_Smalltalk(8,0,20,0,"PSI_PATH_1");
	TA_Smalltalk(20,0,8,0,"PSI_PATH_1");
};

