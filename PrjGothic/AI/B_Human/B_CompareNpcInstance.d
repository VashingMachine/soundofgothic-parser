
func int B_CompareNpcInstance(var C_Npc first,var C_Npc second)
{
	var int first_id;
	var int second_id;
	PrintDebugNpc(PD_ZS_FRAME,"B_CompareNpcInstance");
	first_id = Hlp_GetInstanceID(first);
	second_id = Hlp_GetInstanceID(second);
	if(first_id == second_id)
	{
		PrintDebugNpc(PD_ZS_Check,"B_CompareNpcInstance True");
		return 1;
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"B_CompareNpcInstance False");
		return 0;
	};
};

