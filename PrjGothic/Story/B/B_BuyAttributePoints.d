
func void B_BuyAttributePoints(var C_Npc typ,var int atr,var int AtrPlus)
{
	var int Typ_Atr;
	var string AtrPlusSTRING;
	var string PrintSTRING;
	if(atr == ATR_STRENGTH)
	{
		Typ_Atr = typ.attribute[ATR_STRENGTH];
	}
	else if(atr == ATR_DEXTERITY)
	{
		Typ_Atr = typ.attribute[ATR_DEXTERITY];
	}
	else if(atr == ATR_MANA_MAX)
	{
		Typ_Atr = typ.attribute[ATR_MANA_MAX];
	};
	AtrPlusSTRING = IntToString(AtrPlus);
	if(!(typ.lp < AtrPlus))
	{
		if((Typ_Atr + AtrPlus) <= 100)
		{
			typ.lp = typ.lp - AtrPlus;
			if(atr == ATR_STRENGTH)
			{
				typ.attribute[ATR_STRENGTH] = typ.attribute[ATR_STRENGTH] + AtrPlus;
				PrintSTRING = ConcatStrings(NAME_BuyAttributeSTR,AtrPlusSTRING);
				PrintScreen(PrintSTRING,-1,-1,"FONT_OLD_20_WHITE.TGA",1);
			}
			else if(atr == ATR_DEXTERITY)
			{
				typ.attribute[ATR_DEXTERITY] = typ.attribute[ATR_DEXTERITY] + AtrPlus;
				PrintSTRING = ConcatStrings(NAME_BuyAttributeDEX,AtrPlusSTRING);
				PrintScreen(PrintSTRING,-1,-1,"FONT_OLD_20_WHITE.TGA",1);
			}
			else if(atr == ATR_MANA_MAX)
			{
				typ.attribute[ATR_MANA_MAX] = typ.attribute[ATR_MANA_MAX] + AtrPlus;
				PrintSTRING = ConcatStrings(NAME_BuyAttributeMAN,AtrPlusSTRING);
				PrintScreen(PrintSTRING,-1,-1,"FONT_OLD_20_WHITE.TGA",1);
			};
		}
		else
		{
			PrintScreen("100 punktów to wartoœæ maksymalna!",-1,-1,"FONT_OLD_20_WHITE.TGA",1);
			B_Say(self,other,"$NOLEARNOVERMAX");
		};
	}
	else
	{
		PrintScreen("Za ma³o punktów umiejêtnoœci!",-1,-1,"FONT_OLD_20_WHITE.TGA",1);
		B_Say(self,other,"$NOLEARNNOPOINTS");
	};
};

