
func void B_Story_FoundOrcSlave()
{
	B_LogEntry(CH4_UluMulu,"Znalaz³em przyjaciela Ur-Shaka w jednym z dolnych korytarzy Wolnej Kopalni. Nazywa siê Tarrok. Jeœli szybko nie dostarczê mu jego lekarstwa, umrze w wyniku zatrucia. Orkowe lekarstwo ma siê znajdowaæ na którymœ z ni¿szych poziomów. Muszê siê spieszyæ!");
	B_GiveXP(XP_FoundOrcSlave);
	FreemineOrc_SuchePotion = LOG_RUNNING;
};

