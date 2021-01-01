
instance SLD_756_Soeldner(Npc_Default)
{
	name[0] = NAME_Soeldner;
	npcType = NpcType_MINE_Guard;
	guild = GIL_SLD;
	level = 16;
	voice = 8;
	id = 756;
	attribute[ATR_STRENGTH] = 75;
	attribute[ATR_DEXTERITY] = 55;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 232;
	attribute[ATR_HITPOINTS] = 232;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Pony",47,2,sld_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	EquipItem(self,ItMw_1H_Mace_War_03);
	EquipItem(self,ItRw_Bow_Long_01);
	CreateInvItems(self,ItAmArrow,20);
	CreateInvItems(self,ItFoRice,6);
	CreateInvItems(self,ItFoLoaf,6);
	CreateInvItems(self,ItFoMutton,6);
	CreateInvItems(self,ItMiNugget,16);
	CreateInvItems(self,ItFoBooze,6);
	CreateInvItems(self,ItLsTorch,6);
	CreateInvItems(self,ItFo_Potion_Health_02,6);
	CreateInvItem(self,ItMi_Stuff_Barbknife_01);
	CreateInvItem(self,ItMi_Stuff_Mug_01);
	daily_routine = Rtn_FMCstart_756;
};


func void Rtn_FMCstart_756()
{
	TA_Guard(1,0,13,0,"FMC_PATH02");
	TA_Guard(13,0,1,0,"FMC_PATH02");
};

