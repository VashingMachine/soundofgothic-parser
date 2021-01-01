
instance TPL_1453_Templer(Npc_Default)
{
	name[0] = NAME_MadTemplar2;
	npcType = npctype_guard;
	guild = GIL_GUR;
	level = 100;
	voice = 8;
	id = 1453;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 65;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 250;
	attribute[ATR_HITPOINTS] = 250;
	protection[PROT_BLUNT] = 1000;
	protection[PROT_EDGE] = 1000;
	protection[PROT_POINT] = 1000;
	protection[PROT_FIRE] = 80;
	protection[PROT_FLY] = 80;
	protection[PROT_MAGIC] = 70;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Bald",117,2,tpl_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	CreateInvItem(self,ItMw_2H_Sword_Light_02);
	CreateInvItem(self,ItFoSoup);
	CreateInvItem(self,ItMiJoint_1);
	CreateInvItem(self,ItFo_Potion_Health_02);
	daily_routine = Rtn_OT_1453;
};


func void Rtn_start_1453()
{
	TA_HostileGuard(9,0,21,0,"TPL_408");
	TA_HostileGuard(21,0,9,0,"TPL_408");
};

func void Rtn_OT_1453()
{
	TA_HostileGuard(9,0,21,0,"TPL_355");
	TA_HostileGuard(21,0,9,0,"TPL_355");
};

