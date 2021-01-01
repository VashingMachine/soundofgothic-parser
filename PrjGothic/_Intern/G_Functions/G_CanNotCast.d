
func void G_CanNotCast(var int bIsPlayer,var int nCircleNeeded,var int nCirclePossessed)
{
	var int nDifference;
	var string strDifference;
	var string strMessage;
	nDifference = nCircleNeeded - nCirclePossessed;
	strDifference = IntToString(nDifference);
	if(bIsPlayer)
	{
		strMessage = _STR_CANNOTUSE_PRE_PLAYER;
	}
	else
	{
		strMessage = ConcatStrings(self.name,_STR_CANNOTUSE_PRE_NPC);
		strMessage = ConcatStrings(strMessage,IntToString(self.id));
		strMessage = ConcatStrings(strMessage,_STR_CANNOTUSE_POST_NPC);
	};
	strMessage = ConcatStrings(strMessage,strDifference);
	strMessage = ConcatStrings(strMessage," ");
	strMessage = ConcatStrings(strMessage,_STR_ATTRIBUTE_MAGIC_CIRCLE);
	strMessage = ConcatStrings(strMessage,_STR_CANNOTUSE_LEVELS);
	strMessage = ConcatStrings(strMessage,_STR_CANNOTUSE_POST);
	G_PrintScreen(strMessage);
};

