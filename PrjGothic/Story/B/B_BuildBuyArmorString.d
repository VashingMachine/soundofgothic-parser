
func string B_BuildBuyArmorString(var string text,var int price)
{
	var string msg;
	msg = ConcatStrings(text,NAME_BuyArmorPrefix);
	msg = ConcatStrings(msg,IntToString(price));
	msg = ConcatStrings(msg,NAME_BuyArmorPostfix);
	return msg;
};

