
instance ORC_Priest_1(Npc_Default)
{
	name[0] = "Varrag-Hashor";
	npcType = npctype_main;
	guild = GIL_ORCSHAMAN;
	level = 800;
	voice = 17;
	id = 2995;
	Mdl_SetVisual(self,"Orc.mds");
	Mdl_SetVisualBody(self,"UOS_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 100;
	attribute[ATR_MANA] = 100;
	attribute[ATR_HITPOINTS_MAX] = 1000;
	attribute[ATR_HITPOINTS] = 1000;
	protection[PROT_BLUNT] = 50;
	protection[PROT_EDGE] = 50;
	protection[PROT_POINT] = 25;
	protection[PROT_FIRE] = 25;
	protection[PROT_FLY] = 50;
	protection[PROT_MAGIC] = 0;
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	CreateInvItem(self,ItRwOrcstaff);
	CreateInvItem(self,Weltenspalter);
	CreateInvItem(self,ItArRunePyrokinesis);
	daily_routine = Rtn_PreStart_2995;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
	fight_tactic = FAI_HUMAN_MAGE;
	aivar[AIV_TALKBEFOREATTACK] = TRUE;
};


func void Rtn_PreStart_2995()
{
	TA_Intercept(7,0,12,0,"TPL_058");
	TA_Intercept(12,0,7,0,"TPL_058");
};


instance ORC_Priest_2(Npc_Default)
{
	name[0] = "Varrag-Kasorg";
	npcType = npctype_main;
	guild = GIL_ORCSHAMAN;
	level = 800;
	voice = 17;
	id = 2996;
	Mdl_SetVisual(self,"Orc.mds");
	Mdl_SetVisualBody(self,"UOS_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 100;
	attribute[ATR_MANA] = 100;
	attribute[ATR_HITPOINTS_MAX] = 1000;
	attribute[ATR_HITPOINTS] = 1000;
	protection[PROT_BLUNT] = 50;
	protection[PROT_EDGE] = 50;
	protection[PROT_POINT] = 25;
	protection[PROT_FIRE] = 25;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 1000;
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	CreateInvItem(self,ItRwUdOrcstaff);
	CreateInvItem(self,Lichtbringer);
	CreateInvItem(self,ItArRuneThunderball);
	daily_routine = Rtn_PreStart_2996;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
	fight_tactic = FAI_HUMAN_MAGE;
	aivar[AIV_TALKBEFOREATTACK] = TRUE;
};


func void Rtn_PreStart_2996()
{
	TA_Intercept(7,0,12,0,"TPL_096");
	TA_Intercept(12,0,7,0,"TPL_096");
};


instance ORC_Priest_3(Npc_Default)
{
	name[0] = "Varrag-Unhilqt";
	npcType = npctype_main;
	guild = GIL_ORCSHAMAN;
	level = 800;
	voice = 17;
	id = 2997;
	Mdl_SetVisual(self,"Orc.mds");
	Mdl_SetVisualBody(self,"UOS_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 100;
	attribute[ATR_MANA] = 100;
	attribute[ATR_HITPOINTS_MAX] = 1000;
	attribute[ATR_HITPOINTS] = 1000;
	protection[PROT_BLUNT] = 50;
	protection[PROT_EDGE] = 50;
	protection[PROT_POINT] = 25;
	protection[PROT_FIRE] = 25;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 1000;
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	CreateInvItem(self,ItRwUdOrcstaff);
	CreateInvItem(self,Zeitenklinge);
	CreateInvItem(self,ItArRuneChainLightning);
	daily_routine = Rtn_PreStart_2997;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
	fight_tactic = FAI_HUMAN_MAGE;
	aivar[AIV_TALKBEFOREATTACK] = TRUE;
};


func void Rtn_PreStart_2997()
{
	TA_Intercept(7,0,12,0,"TPL_124");
	TA_Intercept(12,0,7,0,"TPL_124");
};


instance ORC_Priest_4(Npc_Default)
{
	name[0] = "Varrag-Ruuushk";
	npcType = npctype_main;
	guild = GIL_ORCSHAMAN;
	level = 800;
	voice = 17;
	id = 2998;
	Mdl_SetVisual(self,"Orc.mds");
	Mdl_SetVisualBody(self,"UOS_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 100;
	attribute[ATR_MANA] = 100;
	attribute[ATR_HITPOINTS_MAX] = 1000;
	attribute[ATR_HITPOINTS] = 1000;
	protection[PROT_BLUNT] = 50;
	protection[PROT_EDGE] = 50;
	protection[PROT_POINT] = 25;
	protection[PROT_FIRE] = 1000;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 0;
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	CreateInvItem(self,ItRwUdOrcstaff);
	CreateInvItem(self,Daemonenstreich);
	CreateInvItem(self,ItArRuneFirestorm);
	daily_routine = Rtn_PreStart_2998;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
	senses_range = 1000;
	fight_tactic = FAI_HUMAN_MAGE;
	aivar[AIV_TALKBEFOREATTACK] = TRUE;
};


func void Rtn_PreStart_2998()
{
	TA_Intercept(7,0,12,0,"TPL_193");
	TA_Intercept(12,0,7,0,"TPL_193");
};


instance ORC_Priest_5(Npc_Default)
{
	name[0] = "Grash-Varrag-Arushat";
	npcType = npctype_friend;
	guild = GIL_ORCSHAMAN;
	level = 1000;
	voice = 17;
	id = 2999;
	Mdl_SetVisual(self,"Orc.mds");
	Mdl_SetVisualBody(self,"UOS_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 500;
	attribute[ATR_MANA] = 500;
	attribute[ATR_HITPOINTS_MAX] = 300;
	attribute[ATR_HITPOINTS] = 300;
	protection[PROT_BLUNT] = 1000;
	protection[PROT_EDGE] = 1000;
	protection[PROT_POINT] = 1000;
	protection[PROT_FIRE] = 1000;
	protection[PROT_FLY] = 1000;
	protection[PROT_MAGIC] = 100;
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	CreateInvItem(self,ItRwUdOrcstaff);
	CreateInvItem(self,Bannklinge);
	CreateInvItem(self,ItArRuneBreathOfDeath);
	daily_routine = Rtn_PreStart_2999;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
	fight_tactic = FAI_HUMAN_MAGE;
	aivar[AIV_SPECIALCOMBATDAMAGEREACTION] = TRUE;
	aivar[AIV_TALKBEFOREATTACK] = TRUE;
};


func void Rtn_PreStart_2999()
{
	TA_Intercept(7,0,12,0,"TPL_300");
	TA_Intercept(12,0,7,0,"TPL_300");
};

