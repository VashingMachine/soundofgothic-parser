
instance TPL_1435_Templer(Npc_Default)
{
	name[0] = NAME_Templer;
	npcType = npctype_guard;
	level = 17;
	voice = 13;
	id = 1435;
	attribute[ATR_STRENGTH] = 85;
	attribute[ATR_DEXTERITY] = 65;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 244;
	attribute[ATR_HITPOINTS] = 244;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",60,1,tpl_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	EquipItem(self,ItMw_2H_Sword_Light_01);
	CreateInvItem(self,ItFoSoup);
	CreateInvItem(self,ItMiJoint_1);
	daily_routine = Rtn_start_1435;
};


func void Rtn_start_1435()
{
	TA_MCHunting(0,0,12,0,"OM_031");
	TA_MCHunting(12,0,24,0,"OM_031");
};

func void Rtn_PrepareRitual_1435()
{
	TA_MCHunting(0,0,12,0,"OM_031");
	TA_MCHunting(12,0,24,0,"OM_031");
};

