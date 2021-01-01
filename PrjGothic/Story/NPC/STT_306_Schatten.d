
instance STT_306_Schatten(Npc_Default)
{
	name[0] = NAME_Schatten;
	npcType = npctype_ambient;
	guild = GIL_STT;
	level = 7;
	voice = 12;
	id = 306;
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
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_Short_04);
	EquipItem(self,ItRw_Bow_Small_02);
	CreateInvItems(self,ItAmArrow,10);
	CreateInvItem(self,ItFo_Potion_Water_01);
	CreateInvItem(self,ItFoApple);
	CreateInvItem(self,ItKeLockpick);
	daily_routine = Rtn_start_306;
};


func void Rtn_start_306()
{
	TA_Sleep(23,0,8,5,"OCR_HUT_27");
	TA_Smalltalk(8,5,17,0,"OCR_OUTSIDE_HUT_27_MOVEMENT");
	TA_SitAround(17,0,19,5,"OCR_OUTSIDE_ARENA_HANGAROUND");
	TA_ArenaSpectator(19,5,23,0,"OCR_ARENA_07");
};

