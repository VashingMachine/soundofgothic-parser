
instance SLD_753_Baloro(Npc_Default)
{
	name[0] = "Baloro";
	npcType = npctype_main;
	guild = GIL_SLD;
	level = 16;
	voice = 8;
	id = 753;
	attribute[ATR_STRENGTH] = 75;
	attribute[ATR_DEXTERITY] = 55;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 232;
	attribute[ATR_HITPOINTS] = 232;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Fighter",51,2,sld_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_MASTER;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	EquipItem(self,ItMw_1H_Mace_War_03);
	CreateInvItems(self,ItFoRice,8);
	CreateInvItems(self,ItFoLoaf,8);
	CreateInvItems(self,ItFoMutton,6);
	CreateInvItems(self,ItMiNugget,15);
	CreateInvItems(self,ItFoBooze,6);
	CreateInvItems(self,ItLsTorch,5);
	CreateInvItems(self,ItFo_Potion_Health_02,7);
	CreateInvItem(self,ItMi_Stuff_Barbknife_01);
	CreateInvItem(self,ItMi_Stuff_Amphore_01);
	CreateInvItem(self,ItMi_Stuff_OldCoin_02);
	daily_routine = Rtn_FMCstart_753;
};


func void Rtn_FMCstart_753()
{
	TA_GuardPalisade(1,0,13,0,"FMC_HUT07_OUT");
	TA_GuardPalisade(13,0,1,0,"FMC_HUT07_OUT");
};

