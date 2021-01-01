
instance Org_846_Schlaeger(Npc_Default)
{
	name[0] = NAME_Schlaeger;
	npcType = npctype_main;
	guild = GIL_ORG;
	level = 4;
	voice = 7;
	id = 846;
	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 88;
	attribute[ATR_HITPOINTS] = 88;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,0,"Hum_Head_FatBald",12,2,org_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_SNEAK,1);
	EquipItem(self,ItMw_1H_Mace_01);
	CreateInvItems(self,ItKeLockpick,1);
	CreateInvItems(self,ItMiNugget,9);
	CreateInvItems(self,ItFoRice,9);
	CreateInvItems(self,ItFoBooze,3);
	CreateInvItems(self,ItLsTorch,1);
	CreateInvItems(self,ItFo_Potion_Health_01,2);
	CreateInvItem(self,ItMi_Stuff_Barbknife_01);
	CreateInvItem(self,ItMi_Stuff_Cup_01);
	CreateInvItem(self,ItFoMutton);
	CreateInvItem(self,ItAt_Teeth_01);
	daily_routine = Rtn_start_846;
};


func void Rtn_start_846()
{
	TA_SitCampfire(20,15,8,15,"NC_PATH86_MOVEMENT");
	TA_Smalltalk(8,15,20,15,"NC_PATH53");
};

