
instance Stt_311_Fisk(Npc_Default)
{
	name[0] = "Fisk";
	npcType = npctype_main;
	guild = GIL_STT;
	level = 7;
	voice = 12;
	id = 311;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 18;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 124;
	attribute[ATR_HITPOINTS] = 124;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,3,"Hum_Head_Bald",10,2,stt_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	B_Give_FiskChapter1Weapons();
	CreateInvItems(self,ItKeLockpick,10);
	daily_routine = Rtn_start_311;
};


func void Rtn_start_311()
{
	TA_Sleep(22,30,7,30,"OCR_HUT_49");
	TA_SitAround(7,30,22,30,"OCR_OUTSIDE_HUT_49");
};

