function scr_murderlv()
{
	mrd = 0
	if (FL_RuinsKillsCounter >= 20)
	    mrd = 1
	if (mrd == 1 && FL_TorielStatus == TorielStatus.Killed)
	    mrd = 2
	if (mrd == 2 && FL_DoggoStatus == DogStatus.Killed)
	    mrd = 3
	if (mrd == 3 && FL_DogCoupleStatus == DogStatus.Killed)
	    mrd = 4
	if (mrd == 4 && FL_GreaterDogStatus == DogStatus.Killed)
	    mrd = 5
	if (mrd == 5 && FL_SnowdrakeStatus == SnowdrakeStatus.Killed)
	    mrd = 6
	if (mrd == 6 && FL_TundraKillsCounter >= 16)
	    mrd = 7
	if (mrd == 7 && FL_PapyrusStatus == PapyrusStatus.Killed)
	    mrd = 8
	if (mrd == 8 && FL_ShyrenStatus == ShyrenStatus.Killed)
	    mrd = 9
	if (mrd == 9 && FL_KilledGladDummy == true)
	    mrd = 10
	if (mrd == 10 && FL_WaterfallKillsCounter >= 18)
	    mrd = 11
	if (mrd == 11 && FL_KilledUndyneEX == true && FL_UndyneStatus == UndyneStatus.Killed)
	    mrd = 12
	if (mrd == 12 && FL_KilledRoyalGuards == true)
	    mrd = 13
	if (mrd == 13 && FL_KilledMuffet == true)
	    mrd = 14
	if (mrd == 14 && FL_HotlandKillsCounter >= 40)
	    mrd = 15
	if (mrd == 15 && FL_KilledMettaton == true && FL_SparedSpecific == 0)
	    mrd = 16
	murderboy = mrd
	if (FL_MurderLevelOverride > 0)
	    mrd = FL_MurderLevelOverride
	return mrd;
}
