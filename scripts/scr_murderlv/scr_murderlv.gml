/// @func		scr_murderlv()
/// @desc		Keeps track of murder level progress (Used for Genocide)
/// @returns	{real}
function scr_murderlv()
{
	mrd = MurderLevel.Lv0
	if (FL_RuinsKillsCounter >= 20)
		mrd = MurderLevel.Lv1RuinsKills
	if (mrd == MurderLevel.Lv1RuinsKills && FL_TorielStatus == TorielStatus.Killed)
		mrd = MurderLevel.Lv2TorielKilled
	if (mrd == MurderLevel.Lv2TorielKilled && FL_DoggoStatus == DogStatus.Killed)
		mrd = MurderLevel.Lv3DoggoKilled
	if (mrd == MurderLevel.Lv3DoggoKilled && FL_DogCoupleStatus == DogStatus.Killed)
		mrd = MurderLevel.Lv4DogiKilled
	if (mrd == MurderLevel.Lv4DogiKilled && FL_GreaterDogStatus == DogStatus.Killed)
		mrd = MurderLevel.Lv5GreaterDogKilled
	if (mrd == MurderLevel.Lv5GreaterDogKilled && FL_SnowdrakeStatus == SnowdrakeStatus.Killed)
		mrd = MurderLevel.Lv6SnowdrakeKilled
	if (mrd == MurderLevel.Lv6SnowdrakeKilled && FL_TundraKillsCounter >= 16)
		mrd = MurderLevel.Lv7TundraKills
	if (mrd == MurderLevel.Lv7TundraKills && FL_PapyrusStatus == PapyrusStatus.Killed)
		mrd = MurderLevel.Lv8PapyrusKilled
	if (mrd == MurderLevel.Lv8PapyrusKilled && FL_ShyrenStatus == ShyrenStatus.Killed)
		mrd = MurderLevel.Lv9ShyrenKilled
	if (mrd == MurderLevel.Lv9ShyrenKilled && FL_KilledGladDummy == true)
		mrd = MurderLevel.Lv10GladDummyKilled
	if (mrd == MurderLevel.Lv10GladDummyKilled && FL_WaterfallKillsCounter >= 18)
		mrd = MurderLevel.Lv11WaterfallKills
	if (mrd == MurderLevel.Lv11WaterfallKills && FL_KilledUndyneEX == true && FL_UndyneStatus == UndyneStatus.Killed)
		mrd = MurderLevel.Lv12UndyneEXKilled
	if (mrd == MurderLevel.Lv12UndyneEXKilled && FL_KilledRoyalGuards == true)
		mrd = MurderLevel.Lv13RoyalGuardsKilled
	if (mrd == MurderLevel.Lv13RoyalGuardsKilled && FL_KilledMuffet == true)
		mrd = MurderLevel.Lv14MuffetKilled
	if (mrd == MurderLevel.Lv14MuffetKilled && FL_HotlandKillsCounter >= 40)
		mrd = MurderLevel.Lv15HotlandCoreKills
	if (mrd == MurderLevel.Lv15HotlandCoreKills && FL_KilledMettaton == true && FL_SparedSpecific == 0)
		mrd = MurderLevel.Lv16MettatonKilled
	murderboy = mrd
	if (FL_MurderLevelOverride > 0)
		mrd = FL_MurderLevelOverride
	return mrd;
}
