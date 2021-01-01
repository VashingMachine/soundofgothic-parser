
instance ORG_823_Organisator(Npc_Default)
{
	name[0] = NAME_Organisator;
	npcType = npctype_ambient;
	guild = GIL_ORG;
	level = 8;
	voice = 7;
	id = 823;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 30;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 136;
	attribute[ATR_HITPOINTS] = 136;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Bald",37,2,org_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItems(self,ItKeLockpick,2);
	CreateInvItems(self,ItMiNugget,12);
	CreateInvItems(self,ItFoRice,7);
	CreateInvItems(self,ItFoBooze,2);
	CreateInvItems(self,ItLsTorch,1);
	CreateInvItems(self,ItFo_Potion_Health_01,3);
	CreateInvItem(self,ItMi_Stuff_Barbknife_01);
	CreateInvItem(self,ItFoMutton);
	CreateInvItem(self,ItAt_Claws_01);
	EquipItem(self,ItMw_1H_Mace_03);
	EquipItem(self,ItRw_Bow_Long_01);
	CreateInvItems(self,ItAmArrow,20);
	daily_routine = Rtn_start_823;
};


func void Rtn_start_823()
{
	TA_Sleep(0,0,7,30,"NC_HUT21_IN");
	TA_SitAround(7,30,10,0,"NC_HUT21_OUT");
	TA_Cook(10,0,10,0,"NC_HUT21_OUT");
	TA_SitAround(20,0,0,0,"NC_HUT21_OUT");
};

