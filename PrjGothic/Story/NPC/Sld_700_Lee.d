
instance Sld_700_Lee(Npc_Default)
{
	name[0] = "Lee";
	npcType = npctype_main;
	guild = GIL_SLD;
	level = 19;
	voice = 8;
	id = 700;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 75;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 268;
	attribute[ATR_HITPOINTS] = 268;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Pony",88,0,sld_armor_h);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	EquipItem(self,Lees_Axt);
	EquipItem(self,ItRw_Bow_Long_01);
	CreateInvItems(self,ItAmArrow,20);
	CreateInvItems(self,ItFoRice,8);
	CreateInvItems(self,ItFoLoaf,5);
	CreateInvItems(self,ItFoMutton,4);
	CreateInvItems(self,ItMiNugget,25);
	CreateInvItems(self,ItFoBooze,5);
	CreateInvItems(self,ItLsTorch,5);
	CreateInvItems(self,ItFo_Potion_Health_02,10);
	daily_routine = Rtn_start_700;
	fight_tactic = FAI_HUMAN_MASTER;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
};


func void Rtn_start_700()
{
	TA_Sleep(1,0,7,0,"NC_SMALL_CAVE_CENTER");
	TA_Smalltalk(7,0,19,0,"NC_SMALL_CAVE_CENTER");
	TA_ReadBook(19,0,1,0,"NC_SMALL_CAVE_READBOOK");
};

func void Rtn_damnpast_700()
{
	TA_Boss(23,0,6,0,"NC_DAM2");
	TA_Boss(6,0,23,0,"NC_DAM2");
};

func void Rtn_PCSLD_700()
{
	TA_GuidePC(23,0,6,0,"NC_DAM");
	TA_GuidePC(6,0,23,0,"NC_DAM");
};

