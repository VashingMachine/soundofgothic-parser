
instance Bau_900_Ricelord(Npc_Default)
{
	name[0] = "Ry¿owy Ksi¹¿e";
	npcType = npctype_guard;
	guild = GIL_BAU;
	level = 10;
	voice = 12;
	id = 900;
	attribute[ATR_STRENGTH] = 50;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 170;
	attribute[ATR_HITPOINTS] = 170;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Arrogance.mds");
	Mdl_SetVisualBody(self,"Hum_Body_CookSmith",1,1,"Hum_Head_FatBald",91,0,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,2);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItems(self,ItFoRice,10);
	CreateInvItem(self,ItFoWine);
	CreateInvItems(self,ItMiNugget,40);
	EquipItem(self,Heerscherstab);
	CreateInvItem(self,ItMi_Alchemy_Moleratlubric_01);
	EquipItem(self,Ring_des_Lebens);
	daily_routine = Rtn_start_900;
};


func void Rtn_start_900()
{
	TA_Boss(7,0,20,0,"NC_RICELORD");
	TA_SitAround(20,0,24,0,"NC_RICELORD_SIT");
	TA_Sleep(24,0,7,0,"NC_RICEBUNKER_10");
};

