
instance BAU_912_Jeremiah(Npc_Default)
{
	name[0] = "Jeremiasz";
	npcType = npctype_main;
	guild = GIL_BAU;
	level = 7;
	voice = 4;
	id = 912;
	attribute[ATR_STRENGTH] = 35;
	attribute[ATR_DEXTERITY] = 13;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 124;
	attribute[ATR_HITPOINTS] = 124;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Bald",80,2,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItems(self,ItFoRice,7);
	CreateInvItem(self,ItMi_Alchemy_Alcohol_01);
	CreateInvItem(self,ItMi_Stuff_Cup_01);
	EquipItem(self,ItMw_1H_Sword_Short_01);
	CreateInvItems(self,ItMiNugget,15);
	CreateInvItems(self,ItFoBooze,5);
	daily_routine = Rtn_start_912;
};


func void Rtn_start_912()
{
	TA_Sleep(22,0,8,0,"NC_TAVERN_BACKROOM05");
	TA_PotionAlchemy(8,0,22,0,"NC_TAVERN_BACKROOM01");
};

