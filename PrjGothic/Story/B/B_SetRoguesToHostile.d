
func void B_SetRoguesToHostile()
{
	var C_Npc Quentin;
	var C_Npc Rog863;
	var C_Npc Rog864;
	var C_Npc Rog865;
	var C_Npc Rog866;
	var C_Npc Rog867;
	var C_Npc Rog868;
	var C_Npc Rog869;
	var C_Npc Rog870;
	var C_Npc Rog871;
	var C_Npc Rog874;
	var C_Npc Renyu;
	var C_Npc Killian;
	var C_Npc Jacko;
	Quentin = Hlp_GetNpc(Org_858_Quentin);
	Npc_SetTempAttitude(Quentin,ATT_HOSTILE);
	Npc_SetAttitude(Quentin,ATT_HOSTILE);
	Rog863 = Hlp_GetNpc(Org_863_Raeuber);
	Npc_SetTempAttitude(Rog863,ATT_HOSTILE);
	Npc_SetAttitude(Rog863,ATT_HOSTILE);
	Rog864 = Hlp_GetNpc(Org_864_Raeuber);
	Npc_SetTempAttitude(Rog864,ATT_HOSTILE);
	Npc_SetAttitude(Rog864,ATT_HOSTILE);
	Rog865 = Hlp_GetNpc(Org_865_Raeuber);
	Npc_SetTempAttitude(Rog865,ATT_HOSTILE);
	Npc_SetAttitude(Rog865,ATT_HOSTILE);
	Rog866 = Hlp_GetNpc(Org_866_Raeuber);
	Npc_SetTempAttitude(Rog866,ATT_HOSTILE);
	Npc_SetAttitude(Rog866,ATT_HOSTILE);
	Rog867 = Hlp_GetNpc(Org_867_Raeuber);
	Npc_SetTempAttitude(Rog867,ATT_HOSTILE);
	Npc_SetAttitude(Rog867,ATT_HOSTILE);
	Rog868 = Hlp_GetNpc(Org_868_Raeuber);
	Npc_SetTempAttitude(Rog868,ATT_HOSTILE);
	Npc_SetAttitude(Rog868,ATT_HOSTILE);
	Rog869 = Hlp_GetNpc(Org_869_Raeuber);
	Npc_SetTempAttitude(Rog869,ATT_HOSTILE);
	Npc_SetAttitude(Rog869,ATT_HOSTILE);
	Rog870 = Hlp_GetNpc(Org_870_Raeuber);
	Npc_SetTempAttitude(Rog870,ATT_HOSTILE);
	Npc_SetAttitude(Rog870,ATT_HOSTILE);
	Rog871 = Hlp_GetNpc(Org_871_Raeuber);
	Npc_SetTempAttitude(Rog871,ATT_HOSTILE);
	Npc_SetAttitude(Rog871,ATT_HOSTILE);
	Rog874 = Hlp_GetNpc(Org_874_Raeuber);
	Npc_SetTempAttitude(Rog874,ATT_HOSTILE);
	Npc_SetAttitude(Rog874,ATT_HOSTILE);
	if(Stooges_Fled == TRUE)
	{
		Renyu = Hlp_GetNpc(Org_860_Renyu);
		if(Hlp_IsValidNpc(Renyu))
		{
			Npc_SetTempAttitude(Renyu,ATT_HOSTILE);
			Npc_SetAttitude(Renyu,ATT_HOSTILE);
		};
		Killian = Hlp_GetNpc(Org_861_Killian);
		if(Hlp_IsValidNpc(Killian))
		{
			Npc_SetTempAttitude(Killian,ATT_HOSTILE);
			Npc_SetAttitude(Killian,ATT_HOSTILE);
		};
		Jacko = Hlp_GetNpc(Org_862_Jacko);
		if(Hlp_IsValidNpc(Jacko))
		{
			Npc_SetTempAttitude(Jacko,ATT_HOSTILE);
			Npc_SetAttitude(Jacko,ATT_HOSTILE);
		};
	};
};

