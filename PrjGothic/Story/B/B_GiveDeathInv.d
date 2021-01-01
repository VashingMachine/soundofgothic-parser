
func void B_GiveDeathInv()
{
	if(self.aivar[AIV_MISSION1])
	{
		return;
	};
	if(Knows_GetTeeth == TRUE)
	{
		if(self.aivar[AIV_IMPORTANT] == ID_WOLF)
		{
			CreateInvItems(self,ItAt_Teeth_01,2);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_BLACKWOLF)
		{
			CreateInvItems(self,ItAt_Teeth_01,2);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_SNAPPER)
		{
			CreateInvItems(self,ItAt_Teeth_01,4);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_ORCBITER)
		{
			CreateInvItems(self,ItAt_Teeth_01,2);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_SHADOWBEAST)
		{
			CreateInvItems(self,ItAt_Teeth_01,4);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_BLOODHOUND)
		{
			CreateInvItems(self,ItAt_Teeth_01,4);
		};
	};
	if(Knows_GetClaws == TRUE)
	{
		if(self.aivar[AIV_IMPORTANT] == ID_WARAN)
		{
			CreateInvItems(self,ItAt_Claws_01,4);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_FIREWARAN)
		{
			CreateInvItems(self,ItAt_Claws_01,4);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_SNAPPER)
		{
			CreateInvItems(self,ItAt_Claws_01,1);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_RAZOR)
		{
			CreateInvItems(self,ItAt_Claws_01,3);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_ORCBITER)
		{
			CreateInvItems(self,ItAt_Claws_01,2);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_LURKER)
		{
			CreateInvItems(self,ItAt_Lurker_01,2);
		};
	};
	if(Knows_GetFur == TRUE)
	{
		if(self.aivar[AIV_IMPORTANT] == ID_WOLF)
		{
			CreateInvItems(self,ItAt_Wolf_01,1);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_BLACKWOLF)
		{
			CreateInvItems(self,ItAt_Wolf_02,1);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_SHADOWBEAST)
		{
			CreateInvItems(self,ItAt_Shadow_01,1);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_TROLL)
		{
			CreateInvItems(self,ItAt_Troll_01,1);
		};
	};
	if(Knows_GetHide == TRUE)
	{
		if(self.aivar[AIV_IMPORTANT] == ID_LURKER)
		{
			CreateInvItems(self,ItAt_Lurker_02,1);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_SWAMPSHARK)
		{
			CreateInvItems(self,ItAt_Swampshark_01,1);
		};
	};
	if(Knows_GetMCMandibles == TRUE)
	{
		if(self.aivar[AIV_IMPORTANT] == ID_MINECRAWLER)
		{
			CreateInvItems(self,ItAt_Crawler_01,1);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_MINECRAWLERWARRIOR)
		{
			CreateInvItems(self,ItAt_Crawler_01,1);
		};
	};
	if(Knows_GetMCPlates == TRUE)
	{
		if(self.aivar[AIV_IMPORTANT] == ID_MINECRAWLERWARRIOR)
		{
			CreateInvItems(self,ItAt_Crawler_02,2);
		};
	};
	if(Knows_GetBFSting == TRUE)
	{
		if(self.aivar[AIV_IMPORTANT] == ID_BLOODFLY)
		{
			CreateInvItems(self,ItAt_Bloodfly_02,1);
		};
	};
	if(Knows_GetUluMulu == TRUE)
	{
		if(self.aivar[AIV_IMPORTANT] == ID_FIREWARAN)
		{
			CreateInvItems(self,ItAt_Waran_01,1);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_SHADOWBEAST)
		{
			CreateInvItems(self,ItAt_Shadow_02,1);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_SWAMPSHARK)
		{
			CreateInvItems(self,ItAt_Swampshark_02,3);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_TROLL)
		{
			CreateInvItems(self,ItAt_Troll_02,2);
		};
	};
	self.aivar[AIV_MISSION1] = TRUE;
};

