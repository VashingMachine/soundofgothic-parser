
instance ORG_857_Calash(Npc_Default)
{
	name[0] = "Calash";
	npcType = npctype_main;
	guild = GIL_ORG;
	level = 11;
	voice = 2;
	id = 857;
	attribute[ATR_STRENGTH] = 50;
	attribute[ATR_DEXTERITY] = 30;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 172;
	attribute[ATR_HITPOINTS] = 172;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,2,"Hum_Head_Pony",8,1,org_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItem(self,ItFoRice);
	CreateInvItem(self,ItFoLoaf);
	CreateInvItems(self,ItMiNugget,5);
	CreateInvItem(self,ItFoBooze);
	CreateInvItem(self,ItKeLockpick);
	EquipItem(self,ItMw_1H_Mace_War_01);
	EquipItem(self,ItRw_Bow_Long_01);
	CreateInvItems(self,ItAmArrow,10);
	daily_routine = Rtn_prestart_857;
};


func void Rtn_prestart_857()
{
	TA_Position(0,0,12,0,"OM_85");
	TA_Position(12,0,24,0,"OM_85");
};

func void Rtn_start_857()
{
	TA_Position(0,0,12,0,"OM_85");
	TA_Position(12,0,24,0,"OM_85");
};

func void Rtn_OMFull_857()
{
	TA_Position(0,0,12,0,"OM_85");
	TA_Position(12,0,24,0,"OM_85");
};

