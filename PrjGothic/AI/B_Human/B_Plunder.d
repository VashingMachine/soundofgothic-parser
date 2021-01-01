
func void B_TransferItems(var int amount)
{
	var int transferItem;
	PrintDebugNpc(PD_ZS_Check,"...B_TransferItem");
	transferItem = Hlp_GetInstanceID(item);
	B_GiveInvItems(other,self,transferItem,amount);
	if(item.munition == ItAmArrow)
	{
		CreateInvItems(self,ItAmArrow,20);
	};
	if(item.munition == ItAmBolt)
	{
		CreateInvItems(self,ItAmBolt,20);
	};
};

func int B_CheckItem(var int category,var int slot)
{
	var string printText;
	var int count;
	PrintDebugNpc(PD_ZS_Check,"B_CheckItem");
	printText = IntToString(slot);
	if(category == INV_WEAPON)
	{
		printText = ConcatStrings("...found INV_WEAPON_",printText);
	}
	else if(category == INV_ARMOR)
	{
		printText = ConcatStrings("...found INV_ARMOR_",printText);
	}
	else if(category == INV_RUNE)
	{
		printText = ConcatStrings("...found INV_RUNE_",printText);
	}
	else if(category == INV_FOOD)
	{
		printText = ConcatStrings("...found INV_FOOD_",printText);
	}
	else if(category == INV_DOC)
	{
		printText = ConcatStrings("...found INV_DOC_",printText);
	}
	else if(category == INV_MISC)
	{
		printText = ConcatStrings("...found INV_MISC_",printText);
	}
	else
	{
		printText = ConcatStrings("...found unknown category #",printText);
	};
	count = Npc_GetInvItemBySlot(other,category,slot);
	PrintDebugNpc(PD_ZS_DETAIL,IntToString(count));
	if(count > 0)
	{
		PrintDebugNpc(PD_ZS_Check,printText);
		if(Hlp_IsItem(item,ItMiNugget))
		{
			B_TransferItems(count / 2);
			return TRUE;
		};
		if(Npc_OwnedByNpc(item,self))
		{
			B_TransferItems(1);
			return TRUE;
		};
	};
	return FALSE;
};

func int B_Plunder()
{
	var int amountPlundered;
	PrintDebugNpc(PD_ZS_Check,"B_Plunder");
	amountPlundered = 0;
	B_CheckItem(INV_WEAPON,1);
	B_CheckItem(INV_WEAPON,2);
	B_CheckItem(INV_WEAPON,3);
	B_CheckItem(INV_WEAPON,4);
	B_CheckItem(INV_WEAPON,5);
	B_CheckItem(INV_WEAPON,6);
	if(B_CheckItem(INV_MISC,1))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,2))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,3))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,4))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,5))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,6))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,7))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,8))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,9))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,10))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,11))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,12))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,13))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,14))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,15))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,16))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,17))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,18))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,19))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,20))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,21))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,22))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,23))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,24))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,25))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,26))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,27))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,28))
	{
		amountPlundered = amountPlundered + 1;
	};
	if(B_CheckItem(INV_MISC,29))
	{
		amountPlundered = amountPlundered + 1;
	};
	PrintDebugInt(PD_ZS_Check,"...Anzahl geplünderter Items: ",amountPlundered);
	return amountPlundered;
};

