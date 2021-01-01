
instance ORG_843_Sharky(Npc_Default)
{
	name[0] = "Sharky";
	npcType = npctype_main;
	guild = GIL_ORG;
	level = 8;
	voice = 10;
	id = 843;
	attribute[ATR_STRENGTH] = 40;
	attribute[ATR_DEXTERITY] = 30;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 136;
	attribute[ATR_HITPOINTS] = 136;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,3,"Hum_Head_FatBald",6,1,org_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	B_Give_SharkyChapter1Weapons();
	CreateInvItems(self,ItKeLockpick,15);
	CreateInvItems(self,ItMiNugget,50);
	CreateInvItems(self,ItFoRice,10);
	CreateInvItems(self,ItFoBooze,5);
	CreateInvItems(self,ItLsTorch,5);
	CreateInvItems(self,ItFo_Potion_Health_01,5);
	daily_routine = Rtn_start_843;
};


func void Rtn_start_843()
{
	TA_Sleep(3,0,8,0,"NC_HUT25_IN");
	TA_SitAround(8,0,0,0,"NC_HUT25_OUT");
	TA_StandAround(0,0,3,0,"NC_TAVERN_BAR");
};

