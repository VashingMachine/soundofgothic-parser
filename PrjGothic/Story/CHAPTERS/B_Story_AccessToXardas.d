
func void B_Story_AccessToXardas()
{
	CreateInvItem(hero,ItArRuneTeleport3);
	B_LogEntry(CH4_FindXardas,"Przekaza³em trzy serca golemów demonowi, który w zamian podarowa³ mi magiczn¹ runê teleportacji. Ciekawe, dok¹d mnie przeniesie?");
	B_GiveXP(XP_DeliveredGolemhearts);
	FindGolemHearts = 4;
};

