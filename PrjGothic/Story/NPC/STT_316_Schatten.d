
instance STT_316_Schatten(Npc_Default)
{
	name[0] = NAME_Schatten;
	npcType = npctype_ambient;
	guild = GIL_STT;
	level = 5;
	voice = 10;
	id = 316;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 18;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Pony",56,1,stt_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_Short_01);
	EquipItem(self,ItRw_Bow_Small_05);
	CreateInvItems(self,ItAmArrow,15);
	CreateInvItem(self,ItFo_Potion_Water_01);
	CreateInvItems(self,ItFoBeer,2);
	daily_routine = Rtn_start_316;
};


func void Rtn_start_316()
{
	TA_Sleep(23,0,8,0,"OCR_HUT_18");
	TA_Smalltalk(8,0,19,0,"OCR_OUTSIDE_HUT_18");
	TA_ArenaSpectator(19,0,23,0,"OCR_ARENA_09");
};

