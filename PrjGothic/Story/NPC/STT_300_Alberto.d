
instance STT_300_Alberto(Npc_Default)
{
	name[0] = "Alberto";
	npcType = npctype_main;
	guild = GIL_STT;
	level = 13;
	voice = 12;
	id = 300;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 40;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 196;
	attribute[ATR_HITPOINTS] = 196;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Pony",55,1,stt_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_SNEAK,1);
	Npc_SetTalentSkill(self,NPC_TALENT_PICKPOCKET,1);
	Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,60);
	Npc_SetTalentSkill(self,NPC_TALENT_PICKLOCK,1);
	Npc_SetTalentValue(self,NPC_TALENT_PICKLOCK,60);
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	CreateInvItems(self,ItFoApple,5);
	CreateInvItems(self,ItFoBeer,3);
	CreateInvItems(self,ItFo_Potion_Health_01,5);
	CreateInvItems(self,ItMiNugget,50);
	CreateInvItem(self,ItMw_1H_Sword_01);
	CreateInvItem(self,ItRw_Bow_Small_04);
	CreateInvItems(self,ItAmArrow,100);
	daily_routine = Rtn_Start_300;
};


func void Rtn_Start_300()
{
	TA_Stay(0,0,18,0,"OM_203");
	TA_Stay(18,3,0,0,"OM_203");
};

