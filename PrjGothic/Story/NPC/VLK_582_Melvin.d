
instance VLK_582_Melvin(Npc_Default)
{
	name[0] = "Melvin";
	npcType = npctype_main;
	guild = GIL_NOV;
	level = 5;
	voice = 3;
	id = 582;
	attribute[ATR_STRENGTH] = 25;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_Fighter",74,3,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Club_01);
	CreateInvItem(self,ItFoApple);
	daily_routine = Rtn_start_582;
};


func void Rtn_start_582()
{
	TA_Sleep(0,0,8,0,"PSI_12_HUT_IN_BED");
	TA_Listen(8,0,0,0,"PSI_12_HUT_EX_TEACH");
};

