
instance GUR_1202_CorAngar(Npc_Default)
{
	name[0] = "Cor Angar";
	npcType = npctype_friend;
	guild = GIL_TPL;
	level = 30;
	flags = NPC_FLAG_IMMORTAL;
	voice = 8;
	id = 1202;
	attribute[ATR_STRENGTH] = 85;
	attribute[ATR_DEXTERITY] = 65;
	attribute[ATR_MANA_MAX] = 50;
	attribute[ATR_MANA] = 50;
	attribute[ATR_HITPOINTS_MAX] = 400;
	attribute[ATR_HITPOINTS] = 400;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,3,"Hum_Head_Bald",11,0,tpl_armor_h);
	B_Scale(self);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,2);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,2);
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	CreateInvItem(self,ItArRuneSleep);
	CreateInvItem(self,Roter_Wind);
	daily_routine = Rtn_start_1202;
	fight_tactic = FAI_HUMAN_MAGE;
};


func void Rtn_start_1202()
{
	TA_Sleep(1,0,5,0,"PSI_17_HUT_IN");
	TA_Teaching(5,0,1,0,"PSI_TRAINING_TEACHER");
};

func void Rtn_CallSleeper_1202()
{
	TA_Stay(23,0,21,0,"PSI_TEMPLE_STAIRS_LEFT");
	TA_Stay(21,0,23,0,"PSI_TEMPLE_STAIRS_LEFT");
};

