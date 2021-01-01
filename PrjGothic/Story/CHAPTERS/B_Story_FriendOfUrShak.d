
func void B_Story_FriendOfUrShak()
{
	var C_Npc urshak;
	CreateInvItem(hero,ItMi_OrcTalisman);
	urshak = Hlp_GetNpc(ORC_2200_Shaman);
	urshak.name[0] = "Ur-Shak";
	FriendOfUrShak = TRUE;
};

