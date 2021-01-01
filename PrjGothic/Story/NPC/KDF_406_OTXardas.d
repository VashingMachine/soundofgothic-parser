
instance KDF_406_OTXardas(Npc_Default)
{
	name[0] = "Xardas";
	npcType = npctype_main;
	guild = GIL_None;
	level = 30;
	voice = 14;
	id = 406;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 55;
	attribute[ATR_DEXTERITY] = 65;
	attribute[ATR_MANA_MAX] = 100;
	attribute[ATR_MANA] = 100;
	attribute[ATR_HITPOINTS_MAX] = 400;
	attribute[ATR_HITPOINTS] = 400;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Bald",82,1,dmb_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_MAGE;
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	CreateInvItems(self,ItArScrollSummonDemon,20);
	CreateInvItem(self,ItArRuneFireball);
	CreateInvItems(self,ItFo_Potion_Health_03,3);
	CreateInvItems(self,ItFo_Potion_Mana_03,3);
	EquipItem(self,Amulett_der_Erleuchtung);
	EquipItem(self,Ring_der_Magie);
	EquipItem(self,Ring_der_Erleuchtung);
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSFIGHTER,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_AssessSC);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	daily_routine = Rtn_start_406;
};


func void Rtn_start_406()
{
	TA_Intercept(15,0,22,0,"TPL_331");
	TA_Intercept(22,0,15,0,"TPL_331");
};

func void Rtn_Drained_406()
{
	TA_Drained_YBerion(23,0,7,0,"TPL_331");
	TA_Drained_YBerion(7,0,23,0,"TPL_331");
};

