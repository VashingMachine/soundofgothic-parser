
func void B_GreetUpcoming()
{
	var int greet;
	PrintDebugNpc(PD_ZS_FRAME,"B_GreetUpcoming");
	if(Npc_CanSeeNpc(self,other))
	{
		PrintDebugNpc(PD_ZS_Check,"B_GreetUpcoming see // First");
		if(Npc_CanSeeNpc(other,self))
		{
			PrintDebugNpc(PD_ZS_Check,"B_GreetUpcoming see // Second");
			if(Npc_GetDistToNpc(self,other) < PERC_DIST_DIALOG)
			{
				PrintDebugNpc(PD_ZS_Check,"B_GreetUpcoming see Dialog");
				B_AssessSC();
				B_GuildGreetings();
				return;
			};
		};
	};
};

