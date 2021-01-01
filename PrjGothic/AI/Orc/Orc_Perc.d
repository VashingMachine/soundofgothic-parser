
func void OrcSlavePerc()
{
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_OrcSlave_AssessDamage);
	Npc_PercEnable(self,PERC_OBSERVEINTRUDER,B_OrcSlave_Quicklook);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_OrcSlave_Quicklook);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,B_OrcSlave_Quicklook);
};

func void OrcDefaultPerc()
{
	if(self.guild == GIL_ORCSLAVE)
	{
		OrcSlavePerc();
		return;
	}
	else
	{
		ObservingPerception();
	};
};

func void OrcDefaultPercDoing()
{
	if(self.guild == GIL_ORCSLAVE)
	{
		OrcSlavePerc();
		return;
	}
	else
	{
		OccupiedPerception();
	};
};

func void OrcDeepSleepPerc()
{
	if(self.guild == GIL_ORCSLAVE)
	{
		OrcSlavePerc();
		return;
	}
	else
	{
		DeepSleepPerception();
	};
};

func void OrcLightSleepPerc()
{
	if(self.guild == GIL_ORCSLAVE)
	{
		OrcSlavePerc();
		return;
	}
	else
	{
		LightSleepPerception();
	};
};

