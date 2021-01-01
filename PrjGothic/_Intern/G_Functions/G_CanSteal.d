
func int G_CanSteal()
{
	if((other.npcType != npctype_friend) && (other.npcType != npctype_main))
	{
		return TRUE;
	}
	else
	{
		PrintScreen(_STR_MESSAGE_CANNOTSTEAL,-1,_YPOS_MESSAGE_CANNOTSTEAL,_STR_FONT_ONSCREEN,_TIME_MESSAGE_CANNOTSTEAL);
		return FALSE;
	};
};

