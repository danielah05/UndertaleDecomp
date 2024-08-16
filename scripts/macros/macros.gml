// Vultu:
// This file does exist in the actual undertale source, but we don't know
// what it looks like, so we are going to make our own

enum OSFlavors
{
	Unknown,
	PC,
	Mac,
	Console,
	Playstation,
	Switch,
	XboxOne
}

#region Deprecated Function Macros
#macro VIEW_PROP_CAM_X 0
#macro VIEW_PROP_CAM_Y 1
#macro VIEW_PROP_CAM_WIDTH 2
#macro VIEW_PROP_CAM_HEIGHT 3
#macro VIEW_PROP_CAM_ANGLE 4
#macro VIEW_PROP_CAM_X_BORDER 5
#macro VIEW_PROP_CAM_Y_BORDER 6
#macro VIEW_PROP_CAM_X_SPEED 7
#macro VIEW_PROP_CAM_Y_SPEED 8
#macro VIEW_PROP_CAM_TARGET 9
#macro VIEW_PROP_VISIBLE 10
#macro VIEW_PROP_X_PORT 11
#macro VIEW_PROP_Y_PORT 12
#macro VIEW_PROP_W_PORT 13
#macro VIEW_PROP_H_PORT 14
#macro VIEW_PROP_CAMERA 15
#macro VIEW_PROP_SURFACE_ID 16

#macro BG_PROP_VISIBLE 0
#macro BG_PROP_FOREGROUND 1
#macro BG_PROP_SPRITE 2
#macro BG_PROP_X 3
#macro BG_PROP_Y 4
#macro BG_PROP_WIDTH 5
#macro BG_PROP_HEIGHT 6
#macro BG_PROP_HTILED 7
#macro BG_PROP_VTILED 8
#macro BG_PROP_XSCALE 9
#macro BG_PROP_YSCALE 10
#macro BG_PROP_HSPEED 11
#macro BG_PROP_VSPEED 12
#macro BG_PROP_BLEND 13
#macro BG_PROP_ALPHA 14
#endregion


#macro PLOT_NewGame 0
#macro PLOT_FloweyIntroComplete 1

/* 
	VULTU WROTE THIS DOCUMENT BY HAND!
	Original flag help from https://tomat.dev/undertale/flags
	
	Most flags were documented by me, until I discovered they were already documented here:
	https://github.com/Jacky720/FloweysTimeMachine/blob/gh-pages/data.js
	HUGE THANKS THEM FOR LETTING ME COPY VALUES FOR THE WIKI AND THIS DOCUMENT!
	
	Anything not in that list was added by me or Daniela
	If any of this is wrong or misleading, please feel free to push a PR <3
*/
#region Flags

// 0 - 3 Unused
#macro FL_UndyneTriggerOverride global.flag[4]
#macro FL_Fun global.flag[5]
#macro FL_Hardmode global.flag[6]
#macro FL_TruePacifist global.flag[7]
#macro FL_DisableRandomEncounters global.flag[8]
#macro FL_FloweyAnimationEndCount global.flag[9] // Set but never checked
#macro FL_SparedLast global.flag[10]
#macro FL_EscapedLast global.flag[11]
#macro FL_KilledLast global.flag[12]
#macro FL_BoredLast global.flag[13]
#macro FL_DummyStatus global.flag[14]
#macro FL_InBattle global.flag[15]
#macro FL_TypeHeartTransition global.flag[16]
#macro FL_MenuDisabled global.flag[17]
#macro FL_UndyneZoomCutscene global.flag[18]
// 19 Unused
#macro FL_AnimationIndex global.flag[20]
#macro FL_CookedNoodles global.flag[21]
#macro FL_NameColor global.flag[22]
#macro FL_SparedCount global.flag[23]
#macro FL_EscapedCount global.flag[24]
#macro FL_DialoguesSkipped global.flag[25]
#macro FL_MurderLevelOverride global.flag[26]
#macro FL_SparedSpecific global.flag[27]
#macro FL_FastTextSkip global.flag[28]
// 29 Unused
#macro FL_TutorialFroggitEncountered global.flag[30]
#macro FL_PushedRock1 global.flag[31]
#macro FL_PushedRock2 global.flag[32]
#macro FL_PushedRock3 global.flag[33]
#macro FL_RuinsCandyTaken global.flag[34]
#macro FL_PushedRock4 global.flag[35]
#macro FL_NapstablookStatus global.flag[36]
#macro FL_WaitedOnTorielCall global.flag[37]
// 38 - 39 Unused
#macro FL_TorielGreetedCount global.flag[40]
#macro FL_TorielFlirtedCount global.flag[41]
#macro FL_CalledTorielMom global.flag[42]
#macro FL_RuinsSwitchesPressedCount global.flag[43]
#macro FL_DisobeyedTorielCount global.flag[44]
#macro FL_TorielStatus global.flag[45]
#macro FL_ChoiceFlavor global.flag[46]
#macro FL_TundraCreepyStatus global.flag[47]
// 48 - 49 Unused
#macro FL_KnowWaterSausage global.flag[50]
#macro FL_WrongSwitchesPressedCount global.flag[51]
#macro FL_DoggoStatus global.flag[52]
#macro FL_DogCoupleStatus global.flag[53]
#macro FL_GreaterDogStatus global.flag[54]
#macro FL_LesserDogStatus global.flag[55]
#macro FL_SnowmanStatus global.flag[56]
#macro FL_SnowdrakeStatus global.flag[57]
#macro FL_HarderPuzzleChoice global.flag[58]
#macro FL_SpiderDonationTotal global.flag[59]
#macro FL_NicecreamDonationTotal global.flag[60]
// 61 Unused
#macro FL_ChoiceAteLeftSpaghetti global.flag[62]
#macro FL_XOXOResetCounter global.flag[63]
#macro FL_ToggledSnowSwitch global.flag[64]
#macro FL_GotSnowpoffGold global.flag[65]
#macro FL_PapyrusFightFlirt global.flag[66]
#macro FL_PapyrusStatus global.flag[67]
#macro FL_FoughtPapyrus global.flag[68]
#macro FL_BurgerpantsAltDialogue global.flag[69] // Unused?
#macro FL_TundraBattleProgress global.flag[70]
// 71 Unused
#macro FL_InnStatus global.flag[72]
#macro FL_StayedAtInn global.flag[73]
#macro FL_BetrayedGyftrot global.flag[74]
#macro FL_PapyrusArmorInquiry global.flag[75]
#macro FL_AgreedPapyrusArmor global.flag[76]
#macro FL_ArmorUndyneSaw global.flag[77]
#macro FL_StrongToughGlove global.flag[78]
#macro FL_NiceCreamBusiness global.flag[79]
#macro FL_PunchCardsCount global.flag[80]
#macro FL_ShyrenStatus global.flag[81]
#macro FL_PapyrusSinkEventOccured global.flag[82]
#macro FL_GotCouchGold global.flag[83]
#macro FL_WaterfallMushroomStatus global.flag[84] // This is unused
#macro FL_HaveUmbrella global.flag[85]
#macro FL_MusicStatueOn global.flag[86]
// 87 Unused
#macro FL_PapyrusDateCounter global.flag[88]
#macro FL_SansDated global.flag[89]
#macro FL_MonsterKidUmbrellaStatus global.flag[90]
#macro FL_InteractedWithGarbageSavepoint global.flag[91]
#macro FL_StableStatus global.flag[92]
#macro FL_NapstablookDateStatus global.flag[93]
#macro FL_CurrentNapstablookSong global.flag[94]
#macro FL_AaronWoshuaEvent global.flag[95]
#macro FL_GersonEmblemCounter global.flag[96]
#macro FL_SeenCreepyWaterfallFriend global.flag[97]
#macro FL_MonsterKidSavedStatus global.flag[98]
#macro FL_UndyneDifficultyCounter global.flag[99]
#macro FL_GotRibbon global.flag[100]
// 101 Unused
#macro FL_GotToyKnife global.flag[102]
#macro FL_GotBScotchPie global.flag[103]
#macro FL_GotQuiche global.flag[104]
#macro FL_GotTutu global.flag[105]
#macro FL_GotBalletShoes global.flag[106]
#macro FL_GotArtifact global.flag[107]
#macro FL_GotSpacefood global.flag[108]
#macro FL_GotInstantNoodles global.flag[109]
#macro FL_GotFryingPan global.flag[110]
#macro FL_GotApron global.flag[111]
#macro FL_GotTrashcanGlamburger global.flag[112]
#macro FL_GotTrashcanGold global.flag[113]
#macro FL_GotDagger global.flag[114]
#macro FL_GotLocket global.flag[115]
// 116 - 129 Unused
#macro FL_SparedFroggit global.flag[130]
#macro FL_SparedWhimsun global.flag[131]
#macro FL_SparedMoldsmal global.flag[132]
#macro FL_SparedLoox global.flag[133]
#macro FL_SparedVegetoid global.flag[134]
#macro FL_SparedMigosp global.flag[135]
#macro FL_SparedSnowdrake global.flag[136]
#macro FL_SparedIcecap global.flag[137]
#macro FL_SparedGyftrot global.flag[138]
#macro FL_SparedDoggo global.flag[139]
#macro FL_SparedDogCouple global.flag[140]
#macro FL_SparedLesserDog global.flag[141]
#macro FL_SparedGreaterDog global.flag[142]
#macro FL_SparedAaron global.flag[143]
#macro FL_SparedMoldsmalx global.flag[144]
#macro FL_SparedWoshua global.flag[145] 
#macro FL_SparedTemmie global.flag[146]
#macro FL_SparedMaddummy global.flag[147]
#macro FL_SparedVulkin global.flag[148]
#macro FL_SparedTsunderplane global.flag[149]
#macro FL_SparedPyrope global.flag[150]
#macro FL_SparedFinalFroggit global.flag[151]
#macro FL_SparedWhisalot global.flag[152]
#macro FL_SparedAstigmatism global.flag[153]
#macro FL_SparedMadjick global.flag[154]
#macro FL_SparedFinalKnight global.flag[155]
#macro FL_SparedEndogenny global.flag[156]
#macro FL_MadMewMewStatus global.flag[157]
#macro FL_MadMewMewImageIndex global.flag[158]
// 159 - 190 Unused
#macro FL_TorielPacifistConvoCounter global.flag[191]
#macro FL_SansPacifistConvoCounter global.flag[192]
#macro FL_UndynePacifistConvoCounter global.flag[193]
#macro FL_NapstablookPacifistUnlock global.flag[194]
#macro FL_PapyrusPacifistConvoCounter global.flag[195]
#macro FL_AlphysPacifistConvoCounter global.flag[196]
#macro FL_AsgorePacifistConvoCounter global.flag[197]
#macro FL_MettatonPacifistConvoCounter global.flag[198]
#macro FL_NapstablookPacifistConvoCounter global.flag[199]
#macro FL_AreaKillsPointer global.flag[200]
#macro FL_KillsCounter global.flag[201]
#macro FL_RuinsKillsCounter global.flag[202]
#macro FL_TundraKillsCounter global.flag[203]
#macro FL_WaterfallKillsCounter global.flag[204]
#macro FL_HotlandKillsCounter global.flag[205]
#macro FL_UnusedButChecked_206 global.flag[206]
// 207 - 220 Unused
#macro FL_RuinsGenocide global.flag[221]
#macro FL_TundraGenocide global.flag[222]
#macro FL_WaterfallGenocide global.flag[223]
#macro FL_HotlandGenocide global.flag[224]
#macro FL_CoreGenocide global.flag[225]
// 226 - 249
#macro FL_NiceCreamBusiness2 global.flag[250]
#macro FL_KilledUndyneEX global.flag[251]
#macro FL_KilledGladDummy global.flag[252]
#macro FL_SnowmanPieceCounter global.flag[253]
#macro FL_InteractedWithCrossword global.flag[254]
#macro FL_RobbedSnowdin global.flag[255]
#macro FL_RobbedCore global.flag[256]
// 257 - 259 Unused
#macro FL_UsedRecoveryItem global.flag[260]
#macro FL_InteractedWithFakedog global.flag[261]
#macro FL_DeliveredSeaTea global.flag[262]
#macro FL_DeliveredCinnabun global.flag[263]
#macro FL_GotHushPuppy global.flag[264]
#macro FL_TemSellParameter1 global.flag[265]
#macro FL_TemSellParameter2 global.flag[266]
#macro FL_HotelStatus global.flag[267]
// 269 - Unused
#macro FL_TalkedToAllergyTem global.flag[269]
#macro FL_GlowshroomsOn global.flag[270]
#macro FL_FightingSans global.flag[271]
#macro FL_GetDunkedOn global.flag[272]
// 273 - 274 Unused
#macro FL_TundraStickBroken global.flag[275]
#macro FL_TemmieCollegePaid global.flag[276]
#macro FL_FunCallOccurred global.flag[277]
#macro FL_CompletedTilePuzzle global.flag[278]
#macro FL_InteractedWithClamgirl global.flag[279]
#macro FL_ElderPuzzlesConvoCounter global.flag[280]
#macro FL_SoSorryStatus global.flag[281]
#macro FL_EncounteredGlyde global.flag[282]
#macro FL_CheckPapyrusKitchenAgain global.flag[283]
#macro FL_UndyneSpearsAnger global.flag[284]
#macro FL_UncheckedButSet_285 global.flag[285] 
#macro FL_TorielSMSConvoCounter global.flag[286]
#macro FL_SMSConvoParameters global.flag[287]
#macro FL_FailedBombDefusing global.flag[288]
#macro FL_SteppedOnGreenTile global.flag[289]
#macro FL_NeutralPapyrusSpared global.flag[290]
#macro FL_ElectricMazeSkipped global.flag[291]
#macro FL_DogShrineGDeposited global.flag[292]
#macro FL_DogShrineGoldNeeded global.flag[293]
#macro FL_DogShrineLevel global.flag[294]
#macro FL_DogShrineStateAcknowledged global.flag[295]
#macro FL_DogShrineTrashChecked global.flag[296]
#macro FL_UnkownXBOX297 global.flag[297] // Daniela: TODO: document this one
#macro FL_UnkownXBOX298 global.flag[298] // Daniela: TODO: document this one
#macro FL_UnkownXBOX299 global.flag[299] // Daniela: TODO: document this one
#macro FL_DimensionalBoxAItem1 global.flag[300]
#macro FL_DimensionalBoxAItem2 global.flag[301]
#macro FL_DimensionalBoxAItem3 global.flag[302]
#macro FL_DimensionalBoxAItem4 global.flag[303]
#macro FL_DimensionalBoxAItem5 global.flag[304]
#macro FL_DimensionalBoxAItem6 global.flag[305]
#macro FL_DimensionalBoxAItem7 global.flag[306]
#macro FL_DimensionalBoxAItem8 global.flag[307]
#macro FL_DimensionalBoxAItem9 global.flag[308]
#macro FL_DimensionalBoxAItem10 global.flag[309]
#macro FL_DimensionalBoxAItem11 global.flag[310]
#macro FL_DimensionalBoxAItem12 global.flag[311]
#macro FL_DimensionalBoxBItem1 global.flag[312]
#macro FL_DimensionalBoxBItem2 global.flag[313]
#macro FL_DimensionalBoxBItem3 global.flag[314]
#macro FL_DimensionalBoxBItem4 global.flag[315]
#macro FL_DimensionalBoxBItem5 global.flag[316]
#macro FL_DimensionalBoxBItem6 global.flag[317]
#macro FL_DimensionalBoxBItem7 global.flag[318]
#macro FL_DimensionalBoxBItem8 global.flag[319]
#macro FL_DimensionalBoxBItem9 global.flag[320]
#macro FL_DimensionalBoxBItem10 global.flag[321]
#macro FL_DimensionalBoxBItem11 global.flag[322]
#macro FL_DimensionalBoxBItem12 global.flag[323]
// 324 - 349 Unused
#macro FL_UndyneStatus global.flag[350]
#macro FL_UndyneDeathHP global.flag[351]
#macro FL_FoughtUndyne global.flag[352]
#macro FL_PouredWaterCounter global.flag[353]
#macro FL_PapyrusCallConvoCounter global.flag[354]
#macro FL_MadDummyStatus global.flag[355]
#macro FL_CompletedPianoPuzzle global.flag[356]
#macro FL_WaterfallBattleProgressCounter1 global.flag[357]
#macro FL_WaterfallBattleProgressCounter2 global.flag[358]
// 359 - Unused
#macro FL_PlayRainSound global.flag[360]
#macro FL_RainSoundVolume global.flag[361]
#macro FL_RainDeepVolume global.flag[362]
#macro FL_RainSoundHandle global.flag[363]
#macro FL_RainDeepSoundHandle global.flag[364]
// 365 - Unused
#macro FL_HaveWater global.flag[366]
#macro FL_DisableAlphysCalls global.flag[367]
#macro FL_DisableAlphysStatuses global.flag[368]
#macro FL_AlphysStatusConvoCounter global.flag[369]
#macro FL_QuickBattleType global.flag[370]
#macro FL_Laser1Off global.flag[371]
#macro FL_Laser2On global.flag[372]
#macro FL_Laser2Off global.flag[373]
#macro FL_CompletedShootPuzzle1 global.flag[374]
#macro FL_CompletedShootPuzzle2 global.flag[375]
#macro FL_ConveyorPuzzleVariable global.flag[376]
#macro FL_FailedJetpackSegment global.flag[377]
#macro FL_MoneySpentOnHotDogs global.flag[378]
#macro FL_HotDogConvoCounter global.flag[379]
#macro FL_HotDogsOnHead global.flag[380]
#macro FL_ReachedHotDogStackLimit global.flag[381]
#macro FL_MuffetBribePrice global.flag[382]
#macro FL_MuffetTotalBribes global.flag[383]
// 384 - Unused
#macro FL_YellowButtonStatus global.flag[385]
#macro FL_ResetBridgeseedPuzzle global.flag[386]
#macro FL_WonBallGame global.flag[387]
#macro FL_FallTranisition global.flag[388]
#macro FL_UndyneDateStatus global.flag[389]
#macro FL_UndyneExpression global.flag[390]
#macro FL_GrillbysMealChoice global.flag[391]
// 392 - Unused
#macro FL_UnusedMadjickSoundHandle global.flag[393] // Vultu: Apparently Madjick's orb used to have a sound?
// 394 - Unused
#macro FL_DefusedBombsCounter global.flag[395]
#macro FL_MuffetUnknown global.flag[396] // TODO: This isn't a bool look into this
#macro FL_KilledMuffet global.flag[397]
#macro FL_CurrentElevatorFloor global.flag[398]
#macro FL_CompletedShootPuzzle3 global.flag[399]
#macro FL_CompletedShootPuzzle4 global.flag[400]
#macro FL_CalledPapyrusWithRoyalGuards global.flag[401]
#macro FL_KilledRoyalGuards global.flag[402]
#macro FL_SpiderSellBigSpender global.flag[403]
#macro FL_Laser3Off global.flag[404]
#macro FL_BrattyCattyConvoCounter global.flag[405]
#macro FL_MettatonConvoCounter global.flag[406]
#macro FL_AlphysConvoCounter global.flag[407]
#macro FL_HotlandBattleProgressCounter global.flag[408]
#macro FL_GotNapstablookFriendReq global.flag[409]
// 410 - 412 Unused
#macro FL_SansDated2 global.flag[413]
#macro FL_GotAlphysAdvice1 global.flag[414] 
#macro FL_GotAlphysAdvice2 global.flag[415]
#macro FL_GotAlphysAdvice3 global.flag[416]
#macro FL_GotAlphysAdvice4 global.flag[417]
#macro FL_CompletedShootPuzzleCore global.flag[418]
#macro FL_CoreWarriorsSwitchState global.flag[419]
#macro FL_CoreForcefieldOff global.flag[420]
#macro FL_CoreWarriorsState global.flag[421]
// 422 - Unused
#macro FL_CoreBattleProgressCounter global.flag[423]
#macro FL_MettatonTurnStatus global.flag[424]
#macro FL_KilledMettaton global.flag[425]
#macro FL_CoreBattleProgressCounter2 global.flag[426]
// 427 - 429 Unused
#macro FL_AlphysExpression global.flag[430] // TODO: look into this
#macro FL_ElevatorFinalFloor global.flag[431]
#macro FL_RodeLongElevator global.flag[432]
#macro FL_UnlockedMettatonsHouse global.flag[433]
#macro FL_FlameyNameChoice global.flag[434]
#macro FL_BurgerPantsStatus global.flag[435]
#macro FL_BurgerPantsMTTConvoCounter global.flag[436]
#macro FL_BurgerPantsGirlsConvoCounter global.flag[437]
// 438 - 439 Unused
#macro FL_WaterTakenCounter global.flag[440]
#macro FL_WaterWastedCounter global.flag[441]
#macro FL_GotGun global.flag[442]
#macro FL_GotCowboyHat global.flag[443]
#macro FL_GotMysteryKey global.flag[444]
#macro FL_GotFaceSteak global.flag[445]
// 446 - 449 Unused
#macro FL_EarlyStoryProgressCounter global.flag[450]
// 451 - Unused
#macro FL_HaveCastleKey1 global.flag[452]
#macro FL_HaveCastleKey2 global.flag[453]
#macro FL_UnlockedNewHomeLatch global.flag[454]
#macro FL_EarlyStoryParam1 global.flag[455]
#macro FL_EarlyStoryParam2 global.flag[456]
#macro FL_ToldAsgoreReady global.flag[457]
#macro FL_ExperienceCosmicGarbage global.flag[458]
#macro FL_RivermanDestination global.flag[459]
#macro FL_GotTemVillageHint global.flag[460]
#macro FL_TemBoatVersion global.flag[461]
#macro FL_PapyrusCalledAlready global.flag[462]
// 463 - 464 Unused
#macro FL_IncludeUndyneInPapyrusCalls global.flag[465]
// 466 - 469 Unused
#macro FL_MadUndyneCall global.flag[470]
// 471 - 474 Unused
#macro FL_KilledFlowey global.flag[475]
#macro FL_KilledAsgore global.flag[476]
// 477 - 478 Unused
#macro FL_TrueLabBorderEnabled global.flag[479]
#macro FL_CompletedTrueLab global.flag[480]
// TODO: LOOK InTO THESE!!!!
#macro FL_MemoryHeadStatus global.flag[481]
#macro FL_SnowyAmalgamEvent global.flag[482]
#macro FL_ShowerCurtainAmalgamEvent global.flag[483]
#macro FL_BedAmalgamEvent global.flag[484]
#macro FL_PowerSwitchAmalgamEvent global.flag[485]
#macro FL_TrueLabSinkCounter global.flag[486]
#macro FL_TrueLabKeySink global.flag[487]
#macro FL_ReaperbirdEvent global.flag[488]
#macro FL_LemonBreadEvent global.flag[489]
#macro FL_EndogenyEvent global.flag[490]
#macro FL_TrueLabPowerSwitchOn global.flag[491]
#macro FL_AlphysLabLocked global.flag[492]
#macro FL_DatedAlphys global.flag[493]
#macro FL_UndynesLetterStatus global.flag[494]
#macro FL_PopatoChispsBoughtCounter global.flag[495]
#macro FL_OnionSanConvoCounter global.flag[496]
#macro FL_GotSansRoomKey global.flag[497]
// 498 - Unused
#macro FL_SeenCast global.flag[499]
#macro FL_FightingAsriel global.flag[500]
#macro FL_AsrielFightConvoCounter global.flag[501]
#macro FL_ButItRefused global.flag[502]
#macro FL_DreamedAsrielFight global.flag[503]
#macro FL_AsrielTurnCounter global.flag[504]
#macro FL_SavedUndyneLostSoul global.flag[505]
#macro FL_SavedAlphysLostSoul global.flag[506]
#macro FL_SavedPapyrusLostSoul global.flag[507]
#macro FL_SavedTorielLostSoul global.flag[508]
#macro FL_ToggleFinalBeam global.flag[509]
#macro FL_PlotOver global.flag[510] // TODO: Look into this !!!
#macro FL_AsrielConvoCounter global.flag[511]
#macro FL_FinalTorielChoice global.flag[512]
#endregion

#region Macros
#macro DimensionBoxAItemStart 300
#macro DimensionBoxBItemStart 312
#macro DimensionalBoxSize 11
#macro InventorySize 8

#macro InteractButton 0
#macro CancelButton 1
#macro MenuButton 2

#macro KillsPointer_Invalid 0
#macro KillsPointer_Ruins 202
#macro KillsPointer_Tundra 204
#macro KillsPointer_Hotland 205

#macro c_soulblue 0xFFA914
#macro c_altblue 0xFDC00E
#macro c_pink 0xD4BBFF

#endregion

#region Enums
enum Choices
{
	NotSet = 0,
	
	Cinnamon = 0,
	Butterscotch = 1,
	
	JuniorJumble = 0,
	WordSearch = 1,
	
	AteSpaghetti = 1,
	LeftSpaghetti = 2,
	
	Fries = 1,
	Burger = 2,
	
	RememberedName = 1,
	DidntRememberName = 2,
	
	Stayed = 0,
	Left = 1,
}

enum Direction
{
	Down,
	Right,
	Up,
	Left
}

enum RiverManDestinations
{
	Invalid,
	Snowdin,
	Waterfall,
	Hotland
}
// Undyne Spear Directions
enum SpearDir
{
	Left,
	Right,
	Down,
	Up,
	Random
}

// Undyne Spear types
enum SpearType
{
	Normal,
	Reverse,
	Random
}

// Muffet Bullet Types
enum SpBulletType
{
	Normal,
	Donut,
	Croissant,
	TwoSpiders
}

// MewMew Bullet Types
enum MewMewBulletType
{
	White,
	Blue,
	Red
}

enum BulletType
{
	Normal,
	Blue,
	Orange,
	OneOff
}

enum Items
{
	// 00 - 09
	Null,
	MonsterCandy,
	CroquetRoll,
	Stick,
	Bandage,
	RockCandy,
	PumpkinRings,
	SpiderDonut,
	StoicOnion,
	GhostFruit,
	// 10 - 19
	SpiderCider,
	ButterscotchPie,
	FadedRibbon,
	ToyKnife,
	ToughGlove,
	ManlyBandanna,
	SnowmanPiece,
	NiceCream,
	PuppydoughIceCream,
	Bisicle,
	// 20 - 29
	Unisicle,
	CinnamonBun,
	TemmieFlakes,
	AbandonedQuiche,
	OldTutu,
	BalletShoes,
	PunchCard,
	AnnoyingDog,
	DogSalad,
	DogResidue29,
	// 30 - 39
	DogResidue30,
	DogResidue31,
	DogResidue32,
	DogResidue33,
	DogResidue34,
	AstronautFood,
	InstantNoodles,
	CrabApple,
	HotDog,
	HotCat,
	// 40 - 49
	Glamburger,
	SeaTea,
	Starfait,
	LegendaryHero,
	ButtyGlasses,
	TornNotebook,
	StainedApron,
	BurntPan,
	CowboyHat,
	EmptyGun,
	// 50 - 59
	HeartLocket,
	WornDagger,
	RealKnife,
	TheLocket,
	BadMemory,
	Dream,
	UndynesLetter,
	UndynesLetterEX,
	PopatoChisps,
	JunkFood,
	// 60 - 69
	MysteryKey, // Probably to somebody's house LOL
	FaceSteak,
	HushPuppy,
	SnailPie,
	TemyArmor
}

enum NapstablookStatus
{
    NotSet,
    Spared,
    Killed
}

enum DummyStatus 
{
	Run,
	Kill,
	Talk,
	Bore
}

enum NameColors
{
	Yellow,
	White,
	Pink
}

enum TorielStatus
{
	FirstTimeInHouse,
	RuinsLeaveAttempt,
	Fight = 3,
	Killed = 4,
	Spared = 5
}

enum DogStatus
{
	Spared = 0,
	Killed = 1,
	SparedWithStick = 2,
	MaxNeckSize = 2,
	Ignored = 3
}

enum SnowmanStatus
{
	Untouched,
	TookPiece,
	TookPieceAfterDispose,
	// 3 isn't used
	WitnessedPlayerUse = 4,
	TalkedToAfterWitness = 5
}

enum SnowdrakeStatus
{
	Spared,
	LaughedAtJoke,
	Killed
}

enum PapyrusStatus
{
	DefeatedThrice = -3,
	DefeatedTwice = -2,
	DefeatedOnce = -1,
	Spared = 0,
	Killed = 1
}

enum InnStatus
{
	NotSet,
	Stayed,
	StayedWithLessThan80Gold,
}

enum ShyrenStatus
{
	Spared,
	Killed,
	Encouraged
}

enum MonsterKidUmbrellaStatus
{
	Unset,
	MeetWithoutUmbrella,
	TalkGotUmbrella,
	TalkDisposedOfUmbrella
}

enum NapstablookDateStatus
{
	Unset,
	TalkedInHouse,
	LayedDown = 3,
	RefusedToLayDown = 9
}

enum NapstablookSong
{
	None,
	GlobalSong,
	Napstachords,
	Spoopy,
	SpoopyWave,
	SpoopyHoliday
}

enum MonsterKidSavedStatus
{
	RoomExit,
	SavedByUndyne,
	SavedByPlayer
}

enum HotelStatus
{
	NotStayed,
	StayedOnce,
	StayedMultiple
}

enum SoSorryStatus
{
	NotInteracted,
	Killed,
	Spared
}

enum UndyneStatus
{
	Spared,
	Killed,
	SparedWithoutWater
}

enum MadDummyStatus
{
	Ignored,
	Punched,
	NotPunched
}

enum MadMewMewStatus 
{
	NotStarted,
	DoorOpened,
	Spared,
	Killed
}

enum YellowButtonStatus
{
	Inactive,
	Available,
	Pressed
}

enum MettatonTurnStatus
{
	CantTurn,
	CanTurn,
	Turned
}

enum BurgerPantsStatus
{
	CantTalk,
	CanTalk,
	Talked
}

enum BombType
{
	NotSet,
	Dog,
	ExtremelyAgileGlassOfWater,
	Script,
	Basketball,
	Present,
	Game
}

enum MonsterType
{
	NotSet,
	TestFroggit,
	Dummy,
	Tutorial_Froggit,
	Froggit,
	Whimsun,
	Moldsmal_1,
	Migosp,
	Vegetoid,
	Loox,
	// 10 - 19
	Toriel,
	Napstablook,
	Moldsmal_2,
	Doggo,
	LesserDog,
	Dogamy,
	Dogaressa,
	GreaterDog,
	Snowdrake,
	IceCap,
	// 20 - 29
	Ice,
	Jerry,
	Gyftrot,
	Aaron,
	Temmie,
	Papyrus,
	Moldbygg,
	// 27 Unused
	Woshua = 28,
	Shyren,
	// 30 - 39
	Agent,
	MadDummy,
	Undyne,
	Mettaton_Quiz,
	RG_01,
	RG_02,
	Tsunderplane,
	Vulkin,
	Pyrope,
	Muffet,
	// 40 - 49
	Mettaton_TilePuzzle,
	Undyne_Date,
	Madjick,
	KnightKnight,
	FinalFroggit,
	Astigmatism,
	Whimsalot,
	Bomb,
	RG_03,
	RG_04,
	// 50 - 59
	Mettaton_3,
	MettatonEX,
	Asgore,
	LemonBread,
	ReaperBird,
	Amalgamate,
	Memoryhead,
	Endogeny,
	LostSoul_Undyne,
	LostSoul_Alphys,
	// 60 - 68
	LostSoul_Papyrus,
	LostSoul_Sans,
	LostSoul_Toriel,
	LostSoul_Asgore,
	MonsterKid,
	UndyneTheUndying,
	GladDummy,
	MettatonNEO,
	Sans,
	// 70 - 77
	FinalFroggit_Hardmode = 70,
	Astigmatism_Hardmode,
	Whimsalot_Hardmode,
	Migospel,
	Moldessa,
	Parsnik,
	Glyde,
	MadMewMew,
	// 80 - 81
	SoSorry = 80,
	Doodlebog,
	// 99 - 100 (and 666)
	AsrielDreemurr = 99,
	Asriel,
	Gaster = 666
}

enum HeartTransitionType
{
	Normal,
	QuickBattle
}
enum QuickBattleType
{
	None,
	UndyneSpear,
	Laser1,
	Laser2
}
enum CurrentElevatorFloor
{
	L1,
	R1,
	R2,
	L2,
	L3,
	R3
}
enum PhoneName
{
	// 0
	Null,
	// 201 - 206
	SayHello = 201,
	PuzzleHelp,
	AboutYourself,
	CallHerMom,
	Flirt,
	TorielsPhone,
	// 210
	PapyrusPhone = 210,
	// 220 - 221
	DimensionalBoxA = 220,
	DimensionalBoxB
}
enum UndynesLetterStatus
{
	// 0 - 3
	None,
	Dropped,
	Unused, // game checks if the letter status is ever set to 2, this never actually happens
	EXLetter
}
enum UndyneDateStatus
{
	// 0
	None,
	// 2 - 5
	Unused = 2, // never gets set to 2 but gets referenced in an if check
	LeftHouse,
	UndyneLeft,
	DateFinished
}
enum UndyneExpression
{
	DefaultFace, // gets set many times but never actually gets checked for, technically unused?
	SweatingFace,
	TomatoFace
}
enum SansDated2
{
	None,
	InDate,
	DateFinished
}
enum BattleGroup
{
	// 1 - 9
	TestFroggits = 1,
	RuinsDummy,
	TorielFroggit,
	Froggit,
	Whimsun,
	FroggitWhimsun,
	Moldsmal,
	TripleMoldsmal,
	DoubleFroggit,
	// 10 - 19
	DoubleMoldsmal,
	MoldsmalMigosp,
	MigospVegetoid,
	Loox,
	LooxVegetoid, // UNUSED
	LooxVegetoidMigosp,
	DoubleVegetoid,
	DoubleLoox,
	Vegetoid,
	ButNobodyCame,
	// 20 - 28
	Napstablook,
	LooxUnused, // UNUSED
	Toriel,
	Doggo,
	LesserDog,
	Dogi,
	GreaterDog,
	Papyrus,
	Gyftrot,
	// Case 29 missing!
	// 30 - 36
	Snowdrake = 30,
	DoubleSnowdrake,
	Icecap,
	IcecapSnowdrake, // UNUSED
	Jerry, // UNUSED
	IcecapJerry,
	IcecapJerrySnowdrake,
	// 40 - 49
	Aaron = 40,
	Temmie,
	MoldsmalMoldbygg,
	Woshua,
	Shyren,
	MadDummy,
	AaronWoshuaCutscene, // Spooky music cutscene
	Undyne,
	MettatonQuiz,
	RoyalGuards,
	// 50 - 59
	Tsunderplane,
	Vulkin,
	Pyrope,
	DoubleMoldsmal2,
	WoshuaAaron,
	WoshuaMoldbygg,
	Muffet,
	MettatonSecond,
	UndyneFakeFight,
	Madjick,
	// 60 - 69
	KnightKnight,
	FinalFroggit, // UNUSED
	Astigmatism,
	Whimsalot, // UNUSED
	WhimsalotFinalFroggit,
	WhimsalotAstigmatism,
	FinalFroggitAstigmatism,
	FinalFroggitAstigmatismWhimsalot,
	KnightKnightMadjick,
	Bomb, // UNUSED
	// 70 - 79
	DogBomb,
	WaterGlassBomb,
	ScriptBomb,
	BasketballBomb,
	PresentBomb,
	GameBomb,
	RoyaleGuards, // UNUSED
	TsunderplaneVulkin,
	DoublePyrope,
	DoubleVulkin, // UNUSED
	// 80 - 89
	Mettaton,
	MettatonEX,
	LemonBread,
	ReaperBird,
	SnowdrakesMother,
	TripleMemoryhead,
	Endogeny,
	LostSoulUndyne,
	LostSoulSansPapyrus,
	LostSoulAlphys,
	// 90 - 95
	LostSoulTorielAsgore,
	MonsterKid,
	UndyneTheUndying,
	GladDummy,
	MettatonNEO,
	Sans,
	// 100, 101
	AsgoreIntro = 100,
	Asgore,
	// 120 - 129
	HardModeFinalFroggitAstigmatism = 120,
	HardModeFinalFroggitMigospel,
	HardModeParsnik,
	HardModeDoubleMoldessa,
	HardModeTripleMoldessa,
	HardModeFinalFroggitWhimsalot,
	HardModeFinalFroggit,
	HardModeWhimsalotParsnik,
	HardModeMoldessaMigospel,
	HardModeParsnikMigospel,
	// 130 - 134
	HardModeDoubleParsnik,
	HardModeParsnikAstigmatism, // UNUSED
	HardModeDoubleAstigmatism,
	HardModeAstigmatismMigospelMoldessa,
	HardModeWhimsalotParsnikMoldessa, // UNUSED
	// 135
	Glyde = 135,
	// 140, 141
	SoSorry = 140,
	MadMewMew,
	// 255, 256
	Asriel = 255,
	AsrielFinal
}
#endregion