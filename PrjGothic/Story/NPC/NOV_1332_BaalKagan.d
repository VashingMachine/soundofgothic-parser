
instance NOV_1332_BaalKagan(Npc_Default)
{
	name[0] = "Baal Kagan";
	npcType = npctype_main;
	guild = GIL_NOV;
	level = 9;
	voice = 13;
	id = 1332;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 148;
	attribute[ATR_HITPOINTS] = 148;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Psionic",29,1,nov_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Axe_Old_01);
	CreateInvItems(self,ItMiJoint_1,10);
	CreateInvItems(self,ItMiJoint_2,20);
	CreateInvItems(self,ItMiJoint_3,20);
	daily_routine = Rtn_start_1332;
};


func void Rtn_start_1332()
{
	TA_StandAround(0,0,7,30,"NC_PATH_PEASANT_OUTSIDE11");
	TA_Smalltalk(7,30,0,0,"NC_PLACE06");
};

