
instance Bau_940_Riddler(Npc_Default)
{
	name[0] = "Zw³oki";
	npcType = npctype_main;
	guild = GIL_BAU;
	level = 10;
	voice = 7;
	id = 940;
	attribute[ATR_STRENGTH] = 13;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 64;
	attribute[ATR_HITPOINTS] = 64;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",3,1,"Hum_Head_Pony",110,1,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItems(self,ItMiNugget,302);
	CreateInvItems(self,ItFoRice,6);
	CreateInvItem(self,ItFoBooze);
	CreateInvItem(self,theriddle6);
	CreateInvItems(self,ItArScrollTrfBloodfly,2);
	CreateInvItem(self,Lebensamulett);
	daily_routine = Rtn_start_940;
};


func void Rtn_start_940()
{
	TA_Stand(8,0,20,0,"OW_FOGDUNGEON_36_MOVEMENT");
	TA_Stand(20,0,8,0,"OW_FOGDUNGEON_36_MOVEMENT");
};

