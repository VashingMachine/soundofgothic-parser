
func int C_WantItem()
{
	var int itemvalue;
	var int levelbewertung;
	var int selfGuild;
	var int bodyGuild;
	var int itemGuild;
	PrintDebugNpc(PD_ZS_DETAIL,"C_WantItem");
	itemvalue = item.value;
	levelbewertung = self.level * 10;
	selfGuild = Npc_GetTrueGuild(self);
	bodyGuild = Npc_GetTrueGuild(other);
	itemGuild = item.ownerGuild;
	if(Hlp_IsValidItem(item))
	{
		PrintDebugString(PD_ZS_DETAIL,"...'item': ",item.name);
		if(Npc_OwnedByNpc(item,self) || Npc_OwnedByGuild(item,selfGuild))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...'item' gehört NSC oder seiner Gilde -> JA!");
			return TRUE;
		};
		if(item.flags == ITEM_MISSION)
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...'item' ist Missionsgegenstand -> NEIN!");
			return FALSE;
		}
		else if((item.mainflag == ITEM_KAT_ARMOR) && ((bodyGuild == itemGuild) || (selfGuild != itemGuild)))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...'item' ist Rüstung und geht micht nichts an -> NEIN!");
			return FALSE;
		}
		else if((item.mainflag == ITEM_KAT_RUNE) && !C_NpcIsMage(self))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...'item' ist eine Rune/Scroll und Nsc ist kein Magier -> NEIN!");
			return FALSE;
		}
		else if(Hlp_IsItem(item,ItMiNugget))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...'item' ist Erz -> JA!");
			return TRUE;
		}
		else
		{
			PrintDebugInt(PD_ZS_DETAIL,"...itemvalue: ",itemvalue);
			PrintDebugInt(PD_ZS_DETAIL,"...levelbewertung: ",levelbewertung);
			if(itemvalue > levelbewertung)
			{
				PrintDebugNpc(PD_ZS_DETAIL,"...'item' ist wertvoll genug um interessant zu sein -> JA!");
				return TRUE;
			}
			else
			{
				PrintDebugNpc(PD_ZS_DETAIL,"...'item' ist zu billig -> NEIN!");
				return FALSE;
			};
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...'item' ist ungültig -> NEIN!");
		return FALSE;
	};
};

