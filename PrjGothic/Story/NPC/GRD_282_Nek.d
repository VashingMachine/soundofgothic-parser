
instance GRD_282_Nek(Npc_Default)
{
	name[0] = "Martwy Stra¿nik";
	npcType = npctype_main;
	guild = GIL_GRD;
	level = 10;
	voice = 7;
	id = 282;
	attribute[ATR_STRENGTH] = 40;
	attribute[ATR_DEXTERITY] = 20;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 160;
	attribute[ATR_HITPOINTS] = 160;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_FatBald",2,1,grd_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItem(self,Neks_Amulett);
	CreateInvItems(self,ItMiNugget,10);
	daily_routine = Rtn_start_282;
};


func void Rtn_start_282()
{
	TA_Stand(8,0,20,0,"LOCATION_15_IN_2");
	TA_Stand(20,0,8,0,"LOCATION_15_IN_2");
};

