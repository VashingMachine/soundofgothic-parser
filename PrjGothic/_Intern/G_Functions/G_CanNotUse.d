
func void G_CanNotUse(var int bIsPlayer,var int nAttribute,var int nValue)
{
	var int nAttributeValue;
	var string strAttribute;
	var int nDifference;
	var string strDifference;
	var string strMessage;
	if(nAttribute == ATR_HITPOINTS)
	{
		strAttribute = _STR_ATTRIBUTE_HITPOINTS;
		nAttributeValue = self.attribute[ATR_HITPOINTS];
	}
	else if(nAttribute == ATR_HITPOINTS_MAX)
	{
		strAttribute = _STR_ATTRIBUTE_HITPOINTS_MAX;
		nAttributeValue = self.attribute[ATR_HITPOINTS_MAX];
	}
	else if(nAttribute == ATR_MANA)
	{
		strAttribute = _STR_ATTRIBUTE_MANA;
		nAttributeValue = self.attribute[ATR_MANA];
	}
	else if(nAttribute == ATR_MANA_MAX)
	{
		strAttribute = _STR_ATTRIBUTE_MANA_MAX;
		nAttributeValue = self.attribute[ATR_MANA_MAX];
	}
	else if(nAttribute == ATR_STRENGTH)
	{
		strAttribute = _STR_ATTRIBUTE_STRENGTH;
		nAttributeValue = self.attribute[ATR_STRENGTH];
	}
	else if(nAttribute == ATR_DEXTERITY)
	{
		strAttribute = _STR_ATTRIBUTE_DEXTERITY;
		nAttributeValue = self.attribute[ATR_DEXTERITY];
	}
	else
	{
		strAttribute = _STR_INVALID;
		nAttributeValue = 0;
	};
	nDifference = nValue - nAttributeValue;
	strDifference = IntToString(nDifference);
	if(bIsPlayer)
	{
		strMessage = _STR_CANNOTUSE_PRE_PLAYER;
	}
	else
	{
		return;
	};
	strMessage = ConcatStrings(self.name,_STR_CANNOTUSE_PRE_NPC);
	strMessage = ConcatStrings(strMessage,IntToString(self.id));
	strMessage = ConcatStrings(strMessage,_STR_CANNOTUSE_POST_NPC);
	strMessage = ConcatStrings(strMessage,strDifference);
	strMessage = ConcatStrings(strMessage," ");
	strMessage = ConcatStrings(strMessage,strAttribute);
	strMessage = ConcatStrings(strMessage,_STR_CANNOTUSE_POST);
	if(bIsPlayer)
	{
		G_PrintScreen(strMessage);
	};
};

