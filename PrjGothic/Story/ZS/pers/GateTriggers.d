
func int On_OCC_GATE_Trigger()
{
	var C_Npc wache;
	PrintDebugNpc(PD_TA_CHECK,"On_OCC_GATE_Trigger");
	wache = Hlp_GetNpc(Grd_213_Torwache);
	wache.aivar[AIV_Trigger3] = 1;
	wache = Hlp_GetNpc(Grd_212_Torwache);
	wache.aivar[AIV_Trigger3] = 1;
};

func int On_OCR_NORTHGATE_Trigger()
{
	var C_Npc wache;
	PrintDebugNpc(PD_TA_CHECK,"On_OCR_NORTHGATE_Trigger");
	wache = Hlp_GetNpc(GRD_216_Torwache);
	wache.aivar[AIV_Trigger3] = 1;
	wache = Hlp_GetNpc(GRD_217_Torwache);
	wache.aivar[AIV_Trigger3] = 1;
};

func int On_OCR_MAINGATE_Trigger()
{
	var C_Npc wache;
	PrintDebugNpc(PD_TA_CHECK,"On_OCR_MAINGATE_Trigger");
	wache = Hlp_GetNpc(GRD_215_Torwache);
	wache.aivar[AIV_Trigger3] = 1;
	wache = Hlp_GetNpc(GRD_214_Torwache);
	wache.aivar[AIV_Trigger3] = 1;
};

func int On_OCC_BARONSDOOR_Trigger()
{
	var C_Npc wache;
	PrintDebugNpc(PD_TA_CHECK,"On_OCC_BARONSDOOR_Trigger");
	wache = Hlp_GetNpc(Grd_218_Gardist);
	wache.aivar[AIV_Trigger3] = 1;
	wache = Hlp_GetNpc(GRD_245_Gardist);
	wache.aivar[AIV_Trigger3] = 1;
};

func int on_psi_labdoor_trigger()
{
	var C_Npc wache;
	PrintDebugNpc(PD_TA_CHECK,"ON_PSI_LABDOOR_TRIGGER");
	wache = Hlp_GetNpc(TPL_1406_Templer);
	wache.aivar[AIV_Trigger3] = 1;
};

func int on_psi_temple_gate_trigger()
{
	var C_Npc wache;
	PrintDebugNpc(PD_TA_CHECK,"ON_PSI_TEMPLE_GATE_TRIGGER");
	wache = Hlp_GetNpc(TPL_1413_Templer);
	wache.aivar[AIV_Trigger3] = 1;
	wache = Hlp_GetNpc(TPL_1430_Templer);
	wache.aivar[AIV_Trigger3] = 1;
	wache = Hlp_GetNpc(TPL_1431_Templer);
	wache.aivar[AIV_Trigger3] = 1;
	wache = Hlp_GetNpc(TPL_1432_Templer);
	wache.aivar[AIV_Trigger3] = 1;
};

func int on_nc_mageramp_trigger()
{
	var C_Npc wache;
	PrintDebugNpc(PD_TA_CHECK,"ON_NC_MAGERAMP_TRIGGER");
	wache = Hlp_GetNpc(SLD_702_Soeldner);
	wache.aivar[AIV_Trigger3] = 1;
	wache = Hlp_GetNpc(SLD_731_Soeldner);
	wache.aivar[AIV_Trigger3] = 1;
};

func int on_nc_magecave_trigger()
{
	var C_Npc wache;
	PrintDebugNpc(PD_TA_CHECK,"ON_NC_MAGECAVE_TRIGGER");
	wache = Hlp_GetNpc(SLD_725_Soeldner);
	wache.aivar[AIV_Trigger3] = 1;
	wache = Hlp_GetNpc(SLD_726_Soeldner);
	wache.aivar[AIV_Trigger3] = 1;
};

func int on_nc_gate_trigger()
{
	PrintDebugNpc(PD_TA_CHECK,"ON_NC_GATE_TRIGGER");
};

