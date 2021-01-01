
instance Non_1504_Wegelagerer(Npc_Default)
{
	name[0] = "W³óczêga";
	npcType = npctype_ambient;
	guild = GIL_None;
	level = 9;
	voice = 6;
	id = 1504;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 166;
	attribute[ATR_HITPOINTS] = 166;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,0,"Hum_Head_Bald",10,3,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Axe_Old_01);
	CreateInvItems(self,ItMiNugget,54);
	CreateInvItems(self,ItFo_Potion_Health_01,2);
	CreateInvItem(self,ItFoBeer);
	daily_routine = Rtn_start_1504;
};


func void Rtn_start_1504()
{
	Npc_SetPermAttitude(self,ATT_HOSTILE);
	TA_StandAround(22,0,6,0,"OW_PATH_BANDITOS01");
	TA_StandAround(6,0,22,0,"OW_PATH_BANDITOS01");
};

