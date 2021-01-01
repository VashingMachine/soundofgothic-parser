
instance GRD_254_Orry(Npc_Default)
{
	name[0] = "Orry";
	npcType = npctype_main;
	guild = GIL_GRD;
	level = 10;
	voice = 6;
	id = 254;
	attribute[ATR_STRENGTH] = 35;
	attribute[ATR_DEXTERITY] = 35;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 160;
	attribute[ATR_HITPOINTS] = 160;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Psionic",14,1,grd_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_01);
	EquipItem(self,ItRw_Crossbow_01);
	CreateInvItems(self,ItAmBolt,30);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	daily_routine = Rtn_start_254;
};


func void Rtn_start_254()
{
	TA_GuardPalisade(0,0,23,0,"OW_PATH_1_16_B");
	TA_GuardPalisade(23,0,24,0,"OW_PATH_1_16_B");
};

func void Rtn_OMFull_254()
{
};

func void Rtn_FMTaken_254()
{
};

func void Rtn_OrcAssault_254()
{
};

