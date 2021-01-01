
func string B_BuildLearnString(var string text,var int lp,var int ore)
{
	var string msg;
	msg = ConcatStrings(text,NAME_LearnPrefix);
	if(ore > 0)
	{
		msg = ConcatStrings(msg,IntToString(ore));
		msg = ConcatStrings(msg,NAME_LearnMidfix);
	};
	msg = ConcatStrings(msg,IntToString(lp));
	if(lp == 1)
	{
		msg = ConcatStrings(msg,NAME_LearnPostfixS);
	}
	else
	{
		msg = ConcatStrings(msg,NAME_LearnPostfixP);
	};
	return msg;
};

