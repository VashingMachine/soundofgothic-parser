
instance VLK_517_Buddler(Npc_Default)
{
	name[0] = NAME_Buddler;
	npcType = npctype_ambient;
	guild = GIL_VLK;
	level = 2;
	voice = 1;
	id = 517;
	attribute[ATR_STRENGTH] = 13;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 64;
	attribute[ATR_HITPOINTS] = 64;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_Pony",0,1,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Club_01);
	CreateInvItem(self,ItFo_Potion_Water_01);
	CreateInvItem(self,ItMi_Stuff_Barbknife_01);
	daily_routine = Rtn_start_517;
};


func void Rtn_start_517()
{
	TA_Sleep(23,30,7,0,"OCR_HUT_46");
	TA_Smalltalk(7,0,11,0,"OCR_OUTSIDE_HUT_47_SMALT2");
	TA_SitAround(11,0,13,0,"OCR_OUTSIDE_MCAMP_01");
	TA_Smalltalk(13,0,16,0,"OCR_OUTSIDE_HUT_47_SMALT2");
	TA_SitAround(16,0,23,30,"OCR_OUTSIDE_MCAMP_01");
};

