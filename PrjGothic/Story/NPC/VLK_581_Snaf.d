
instance VLK_581_Snaf(Npc_Default)
{
	name[0] = "Snaf";
	npcType = npctype_main;
	guild = GIL_VLK;
	level = 5;
	voice = 1;
	id = 581;
	attribute[ATR_STRENGTH] = 25;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"Hum_Body_CookSmith",0,1,"Hum_Head_Fighter",81,1,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,2);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_SNEAK,1);
	EquipItem(self,ItMw_1H_Mace_Light_01);
	CreateInvItem(self,ItMi_Stuff_Cup_01);
	daily_routine = Rtn_start_581;
};


func void Rtn_start_581()
{
	TA_Cook(8,0,22,0,"OCR_CAULDRON_2");
	TA_Sleep(22,0,8,0,"OCR_HUT_14");
};

