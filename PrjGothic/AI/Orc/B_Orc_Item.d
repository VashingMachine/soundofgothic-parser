
func void B_Orc_ItemHorn()
{
	PrintDebugNpc(PD_TA_FRAME,"B_Orc_ItemHorn");
	if(Npc_HasItems(self,ItMiAlarmhorn))
	{
		if(Npc_HasReadiedWeapon(self))
		{
			AI_RemoveWeapon(self);
		};
		AI_SetWalkMode(self,NPC_WALK);
		if(Npc_GetBodyState(self) != BS_ITEMINTERACT)
		{
			AI_UseItemToState(self,ItMiAlarmhorn,1);
		};
		AI_UseItemToState(self,ItMiAlarmhorn,-1);
	};
};

func void B_Orc_ItemEat()
{
	PrintDebugNpc(PD_TA_FRAME,"B_Orc_ItemEat");
	if(Npc_HasReadiedWeapon(self))
	{
		AI_RemoveWeapon(self);
	};
	if(Hlp_Random(10) < 5)
	{
		if(Npc_HasItems(self,ItFoCheese) == 0)
		{
			CreateInvItem(self,ItFoCheese);
		};
		if(Npc_GetBodyState(self) != BS_ITEMINTERACT)
		{
			AI_UseItemToState(self,ItFoCheese,1);
		};
		AI_UseItemToState(self,ItFoCheese,-1);
	}
	else
	{
		if(Npc_HasItems(self,ItFoLoaf) == 0)
		{
			CreateInvItem(self,ItFoLoaf);
		};
		if(Npc_GetBodyState(self) != BS_ITEMINTERACT)
		{
			AI_UseItemToState(self,ItFoLoaf,1);
		};
		AI_UseItemToState(self,ItFoLoaf,-1);
	};
};

func void B_Orc_ItemPotion()
{
	PrintDebugNpc(PD_TA_FRAME,"B_Orc_ItemPotion");
	if(Npc_HasReadiedWeapon(self))
	{
		AI_RemoveWeapon(self);
	};
	if(!Npc_HasItems(self,ItFoWine))
	{
		CreateInvItem(self,ItFoWine);
	};
	if(Npc_GetBodyState(self) != BS_ITEMINTERACT)
	{
		EquipItem(self,ItFoBeer);
		AI_UseItemToState(self,ItFoWine,1);
	};
	AI_UseItemToState(self,ItFoWine,-1);
};

