
instance STT_335_Santino(Npc_Default)
{
	name[0] = "Santino";
	npcType = npctype_main;
	guild = GIL_STT;
	level = 7;
	voice = 7;
	id = 335;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 18;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 124;
	attribute[ATR_HITPOINTS] = 124;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,2,"Hum_Head_Bald",12,1,stt_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItems(self,ItFo_Potion_Water_01,5);
	CreateInvItems(self,ItKeLockpick,5);
	CreateInvItems(self,ItMiNugget,50);
	CreateInvItems(self,ItLsTorch,10);
	CreateInvItems(self,ItFoBeer,7);
	CreateInvItems(self,ItFo_Potion_Mana_01,5);
	CreateInvItems(self,ItFo_Potion_Health_01,5);
	CreateInvItems(self,ItAmArrow,100);
	CreateInvItems(self,ItAmBolt,100);
	daily_routine = Rtn_start_335;
};


func void Rtn_start_335()
{
	TA_Stay(0,0,12,0,"OM_202");
	TA_Stay(12,0,24,0,"OM_202");
};

