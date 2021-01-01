
instance GUR_1209_BaalOrun(Npc_Default)
{
	name[0] = "Baal Orun";
	npcType = npctype_main;
	guild = GIL_GUR;
	level = 28;
	voice = 12;
	id = 1209;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 60;
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
	EquipItem(self,Oruns_Keule);
	daily_routine = Rtn_start_1209;
	fight_tactic = FAI_HUMAN_MAGE;
};


func void Rtn_start_1209()
{
	TA_Boss(7,0,0,0,"PSI_PATH_2_6");
	TA_Sleep(0,0,7,0,"PSI_TREE_IN");
};

