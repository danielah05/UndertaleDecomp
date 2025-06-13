if (t == 0 && global.interact == 0)
{
	global.typer = 5
	global.facechoice = 0
	global.faceemotion = 0
	global.msc = 0
	t = 1
	if (room == room_fire_core_branch && global.plot < 185)
	{
		global.plot = 185
		FL_GotAlphysAdvice3 = 1
		global.msg[0] = scr_gettext("obj_phonecall_room_161")
		global.msg[1] = scr_gettext("obj_phonecall_room_162")
		global.msg[2] = scr_gettext("obj_phonecall_room_163")
		global.msg[3] = scr_gettext("obj_phonecall_room_164")
		global.msg[4] = scr_gettext("obj_phonecall_room_165")
		global.msg[3] = scr_gettext("obj_phonecall_room_166")
		global.msg[4] = scr_gettext("obj_phonecall_room_167")
		global.msg[5] = scr_gettext("obj_phonecall_room_168")
		global.msg[6] = scr_gettext("obj_phonecall_room_169")
		global.msg[7] = scr_gettext("obj_phonecall_room_170")
		global.msg[8] = scr_gettext("obj_phonecall_room_171")
		if (FL_DisableAlphysCalls == 1)
			donotcall = 1
	}
	if (room == room_fire_core_laserfun && global.plot < 183)
	{
		global.plot = 183
		obj_powerlaser_event.con = 10
		if (FL_DisableAlphysCalls == 1)
			donotcall = 1
	}
	if (room == room_fire_core5 && FL_GotAlphysAdvice3 == 0 && x > 140)
	{
		FL_GotAlphysAdvice3 = 1
		global.msg[0] = scr_gettext("obj_phonecall_room_190")
		global.msg[1] = scr_gettext("obj_phonecall_room_191")
		global.msg[2] = scr_gettext("obj_phonecall_room_192")
		global.msg[3] = scr_gettext("obj_phonecall_room_193")
		global.msg[4] = scr_gettext("obj_phonecall_room_194")
		if (FL_DisableAlphysCalls == 1)
			donotcall = 1
	}
	if (room == room_fire_core5 && global.plot < 182 && x < 140)
	{
		global.plot = 182
		global.msg[0] = scr_gettext("obj_phonecall_room_202")
		global.msg[1] = scr_gettext("obj_phonecall_room_203")
		global.msg[2] = scr_gettext("obj_phonecall_room_204")
		global.msg[3] = scr_gettext("obj_phonecall_room_205")
		global.msg[4] = scr_gettext("obj_phonecall_room_206")
		global.msg[5] = scr_gettext("obj_phonecall_room_207")
		global.msg[6] = scr_gettext("obj_phonecall_room_208")
		if (FL_DisableAlphysCalls == 1)
			donotcall = 1
	}
	if (room == room_fire_core4 && global.plot < 180)
	{
		global.plot = 180
		global.msg[0] = scr_gettext("obj_phonecall_room_218")
		global.msg[1] = scr_gettext("obj_phonecall_room_219")
		global.msg[2] = scr_gettext("obj_phonecall_room_220")
		global.msg[3] = scr_gettext("obj_phonecall_room_221")
		global.msg[4] = scr_gettext("obj_phonecall_room_222")
		global.msg[5] = scr_gettext("obj_phonecall_room_223")
		global.msg[6] = scr_gettext("obj_phonecall_room_224")
		global.msg[7] = scr_gettext("obj_phonecall_room_225")
		global.msg[8] = scr_gettext("obj_phonecall_room_226")
		if (FL_DisableAlphysCalls == 1)
			donotcall = 1
	}
	if (room == room_fire_core2 && FL_GotAlphysAdvice2 == 0)
	{
		global.msg[0] = scr_gettext("obj_phonecall_room_234")
		global.msg[1] = scr_gettext("obj_phonecall_room_235")
		global.msg[2] = scr_gettext("obj_phonecall_room_236")
		global.msg[3] = scr_gettext("obj_phonecall_room_237")
		global.msg[4] = scr_gettext("obj_phonecall_room_238")
		global.msg[5] = scr_gettext("obj_phonecall_room_239")
		global.msg[6] = scr_gettext("obj_phonecall_room_240")
		global.msg[7] = scr_gettext("obj_phonecall_room_241")
		if (FL_GotAlphysAdvice1 == 0)
		{
			global.msg[0] = scr_gettext("obj_phonecall_room_245")
			global.msg[1] = scr_gettext("obj_phonecall_room_246")
			global.msg[2] = scr_gettext("obj_phonecall_room_247")
			global.msg[3] = scr_gettext("obj_phonecall_room_248")
			global.msg[4] = scr_gettext("obj_phonecall_room_249")
			global.msg[5] = scr_gettext("obj_phonecall_room_250")
			global.msg[6] = scr_gettext("obj_phonecall_room_251")
			global.msg[7] = scr_gettext("obj_phonecall_room_252")
		}
		if (global.plot > 178)
		{
			global.msg[0] = scr_gettext("obj_phonecall_room_259")
			global.msg[1] = scr_gettext("obj_phonecall_room_260")
			global.msg[2] = scr_gettext("obj_phonecall_room_261")
			global.msg[3] = scr_gettext("obj_phonecall_room_262")
			global.msg[4] = scr_gettext("obj_phonecall_room_263")
			global.msg[5] = scr_gettext("obj_phonecall_room_264")
		}
		FL_GotAlphysAdvice2 = 1
		if (FL_DisableAlphysCalls == 1)
			donotcall = 1
	}
	if (room == room_fire_core1 && global.plot < 177)
	{
		global.plot = 177
		global.msg[0] = scr_gettext("obj_phonecall_room_275")
		global.msg[1] = scr_gettext("obj_phonecall_room_276")
		global.msg[2] = scr_gettext("obj_phonecall_room_277")
		global.msg[3] = scr_gettext("obj_phonecall_room_278")
		global.msg[4] = scr_gettext("obj_phonecall_room_279")
		global.msg[5] = scr_gettext("obj_phonecall_room_280")
		if (FL_DisableAlphysCalls == 1)
			donotcall = 1
	}
	if (room == room_fire_conveyorlaser)
	{
		if (FL_AlphysStatusConvoCounter < 26)
		{
			FL_AlphysStatusConvoCounter = 26
			global.msc = 837
			global.msg[0] = scr_gettext("obj_phonecall_room_290")
			if (FL_DisableAlphysCalls == 1)
				donotcall = 1
		}
		else
			donotcall = 1
	}
	if (room == room_fire_walkandbranch2)
	{
		if (global.plot < 163)
		{
			global.plot = 163
			global.msg[0] = scr_gettext("obj_phonecall_room_302")
			global.msg[1] = scr_gettext("obj_phonecall_room_303")
			global.msg[2] = scr_gettext("obj_phonecall_room_304")
			global.msg[3] = scr_gettext("obj_phonecall_room_305")
			global.msg[4] = scr_gettext("obj_phonecall_room_306")
			global.msg[5] = scr_gettext("obj_phonecall_room_307")
			global.msg[6] = scr_gettext("obj_phonecall_room_308")
			global.msg[7] = scr_gettext("obj_phonecall_room_309")
			global.msg[8] = scr_gettext("obj_phonecall_room_310")
			global.msg[9] = scr_gettext("obj_phonecall_room_311")
			global.msg[10] = scr_gettext("obj_phonecall_room_312")
			global.msg[11] = scr_gettext("obj_phonecall_room_313")
			global.msg[12] = scr_gettext("obj_phonecall_room_314")
			global.msg[13] = scr_gettext("obj_phonecall_room_315")
			global.msg[14] = scr_gettext("obj_phonecall_room_316")
			global.msg[15] = scr_gettext("obj_phonecall_room_317")
			global.msg[16] = scr_gettext("obj_phonecall_room_318")
			global.msg[17] = scr_gettext("obj_phonecall_room_319")
			global.msg[18] = scr_gettext("obj_phonecall_room_320")
			global.msg[19] = scr_gettext("obj_phonecall_room_321")
			if (FL_DisableAlphysCalls == 1)
				donotcall = 1
		}
		else
			donotcall = 1
	}
	if (room == room_fire_coreview2)
	{
		if (global.plot < 162)
		{
			global.plot = 162
			global.msc = 684
			if (FL_DisableAlphysCalls == 1)
				donotcall = 1
		}
		else
			donotcall = 1
	}
	if (room == room_fire_rpuzzle)
	{
		if (global.plot < 143)
		{
			global.msc = 0
			global.plot = 143
			global.msg[0] = scr_gettext("obj_phonecall_room_353")
			global.msg[1] = scr_gettext("obj_phonecall_room_354")
			global.msg[2] = scr_gettext("obj_phonecall_room_355")
			global.msg[3] = scr_gettext("obj_phonecall_room_356")
			global.msg[4] = scr_gettext("obj_phonecall_room_357")
			global.msg[5] = scr_gettext("obj_phonecall_room_358")
			global.msg[6] = scr_gettext("obj_phonecall_room_359")
			if (FL_DisableAlphysCalls == 1)
				donotcall = 1
		}
		else
			donotcall = 1
	}
	if (room == room_fire_savepoint1 && global.plot < 137)
	{
		if (global.plot < 137)
		{
			global.msc = 0
			global.msg[0] = scr_gettext("obj_phonecall_room_372")
			global.msg[1] = scr_gettext("obj_phonecall_room_373")
			global.msg[2] = scr_gettext("obj_phonecall_room_374")
			global.msg[3] = scr_gettext("obj_phonecall_room_375")
			global.msg[4] = scr_gettext("obj_phonecall_room_376")
			global.msg[5] = scr_gettext("obj_phonecall_room_377")
			global.msg[6] = scr_gettext("obj_phonecall_room_378")
			global.msg[7] = scr_gettext("obj_phonecall_room_379")
			global.msg[8] = scr_gettext("obj_phonecall_room_380")
			global.msg[9] = scr_gettext("obj_phonecall_room_381")
			global.plot = 137
		}
		else
			donotcall = 1
		if (FL_DisableAlphysCalls == 1)
			donotcall = 1
	}
	if (room == room_fire_turn && global.plot < 133.5)
	{
		global.plot = 133.5
		global.msg[0] = scr_gettext("obj_phonecall_room_397")
		global.msg[1] = scr_gettext("obj_phonecall_room_398")
		global.msg[2] = scr_gettext("obj_phonecall_room_399")
		global.msg[3] = scr_gettext("obj_phonecall_room_400")
		global.msg[4] = scr_gettext("obj_phonecall_room_401")
		global.msg[5] = scr_gettext("obj_phonecall_room_402")
		global.msg[6] = scr_gettext("obj_phonecall_room_403")
		global.msg[7] = scr_gettext("obj_phonecall_room_404")
		global.msg[8] = scr_gettext("obj_phonecall_room_405")
		if (FL_DisableAlphysCalls == 1)
			donotcall = 1
	}
	if (room == room_fire8 && FL_Laser2Off == 0)
	{
		global.msg[0] = scr_gettext("obj_phonecall_room_411")
		global.msg[1] = scr_gettext("obj_phonecall_room_412")
		global.msg[2] = scr_gettext("obj_phonecall_room_413")
		global.msg[3] = scr_gettext("obj_phonecall_room_414")
		global.msg[4] = scr_gettext("obj_phonecall_room_415")
		global.msg[5] = scr_gettext("obj_phonecall_room_416")
		global.msg[6] = scr_gettext("obj_phonecall_room_417")
		global.msg[7] = scr_gettext("obj_phonecall_room_418")
		global.msg[8] = scr_gettext("obj_phonecall_room_419")
		if (FL_Laser2On == 1)
		{
			global.msg[0] = scr_gettext("obj_phonecall_room_423")
			global.msg[1] = scr_gettext("obj_phonecall_room_424")
			global.msg[2] = scr_gettext("obj_phonecall_room_425")
			global.msg[3] = scr_gettext("obj_phonecall_room_426")
			global.msg[4] = scr_gettext("obj_phonecall_room_427")
			global.msg[5] = scr_gettext("obj_phonecall_room_428")
			global.msg[6] = scr_gettext("obj_phonecall_room_429")
		}
		FL_Laser2Off = 1
		if (FL_DisableAlphysCalls == 1)
			donotcall = 1
	}
	if (room == room_fire7 && global.plot < 132)
	{
		global.msg[0] = scr_gettext("obj_phonecall_room_464")
		global.msg[1] = scr_gettext("obj_phonecall_room_465")
		global.msg[2] = scr_gettext("obj_phonecall_room_466")
		global.msg[3] = scr_gettext("obj_phonecall_room_467")
		global.msg[4] = scr_gettext("obj_phonecall_room_468")
		global.msg[5] = scr_gettext("obj_phonecall_room_469")
		global.msg[6] = scr_gettext("obj_phonecall_room_470")
		global.msg[7] = scr_gettext("obj_phonecall_room_471")
		global.plot = 132
		if (FL_DisableAlphysCalls == 1)
			donotcall = 1
	}
	if (room == room_fire_lasers1 && global.plot < 131)
	{
		global.msg[0] = scr_gettext("obj_phonecall_room_498")
		global.msg[1] = scr_gettext("obj_phonecall_room_499")
		global.msg[2] = scr_gettext("obj_phonecall_room_500")
		global.msg[3] = scr_gettext("obj_phonecall_room_501")
		global.msg[4] = scr_gettext("obj_phonecall_room_502")
		global.msg[5] = scr_gettext("obj_phonecall_room_503")
		global.msg[6] = scr_gettext("obj_phonecall_room_504")
		global.msg[7] = scr_gettext("obj_phonecall_room_505")
		global.msg[8] = scr_gettext("obj_phonecall_room_506")
		global.msg[9] = scr_gettext("obj_phonecall_room_507")
		global.msg[10] = scr_gettext("obj_phonecall_room_508")
		global.msg[11] = scr_gettext("obj_phonecall_room_509")
		global.plot = 131
		FL_PapyrusCalledAlready = 0
		if (FL_DisableAlphysCalls == 1)
			donotcall = 1
	}
	if (room == room_fire6 && global.plot < 130)
	{
		global.msg[0] = scr_gettext("obj_phonecall_room_521")
		global.msg[1] = scr_gettext("obj_phonecall_room_522")
		global.msg[2] = scr_gettext("obj_phonecall_room_523")
		global.plot = 130
		if (FL_DisableAlphysCalls == 1)
			donotcall = 1
	}
	if (room == room_water5 && global.plot < 107)
	{
		global.plot = 107
		instance_create(40, 340, obj_stalkerflowey)
		global.msc = 553
		if (FL_PapyrusStatus == PapyrusStatus.Killed)
			donotcall = 1
	}
	if (room == room_water12 && FL_PapyrusCallConvoCounter < 1)
	{
		FL_PapyrusCallConvoCounter = 1
		instance_create(380, 40, obj_stalkerflowey)
		global.msc = 632
		if (FL_PapyrusStatus == PapyrusStatus.Killed)
			donotcall = 1
	}
	if (room == room_water_undynefinal3 && FL_PapyrusCallConvoCounter < 2)
	{
		FL_PapyrusCallConvoCounter = 2
		global.msc = 633
		if (FL_PapyrusStatus == PapyrusStatus.Killed)
			donotcall = 1
		if instance_exists(obj_undynea_chaser)
			obj_undynea_chaser.con = 20
	}
	if (room == room_water_trashzone2 && FL_DatedAlphys == 10)
	{
		global.msg[0] = scr_gettext("obj_phonecall_room_569")
		scr_papface(1, 0)
		global.msg[2] = scr_gettext("obj_phonecall_room_571")
		global.msg[3] = scr_gettext("obj_phonecall_room_572")
		global.msg[4] = scr_gettext("obj_phonecall_room_573")
		global.msg[5] = scr_gettext("obj_phonecall_room_574")
		global.msg[6] = scr_gettext("obj_phonecall_room_575")
		global.msg[7] = scr_gettext("obj_phonecall_room_576")
		global.msg[8] = scr_gettext("obj_phonecall_room_577")
		global.msg[9] = scr_gettext("obj_phonecall_room_578")
		global.msg[10] = scr_gettext("obj_phonecall_room_579")
		global.msg[11] = scr_gettext("obj_phonecall_room_580")
		global.msg[12] = scr_gettext("obj_phonecall_room_581")
		global.msg[13] = scr_gettext("obj_phonecall_room_582")
		global.msg[14] = scr_gettext("obj_phonecall_room_583")
		global.msg[15] = scr_gettext("obj_phonecall_room_584")
		global.msg[16] = scr_gettext("obj_phonecall_room_585")
		if (FL_PapyrusStatus == PapyrusStatus.Killed)
			donotcall = 1
		FL_AlphysLabLocked = 0
		FL_DatedAlphys = 11
	}
	if (room == room_fire10 && global.plot < 139)
	{
		global.msg[0] = scr_gettext("obj_phonecall_room_593")
		global.msg[1] = scr_gettext("obj_phonecall_room_594")
		global.msg[2] = scr_gettext("obj_phonecall_room_595")
		global.msg[3] = scr_gettext("obj_phonecall_room_596")
		global.msg[4] = scr_gettext("obj_phonecall_room_597")
		global.msg[5] = scr_gettext("obj_phonecall_room_598")
		global.msg[6] = scr_gettext("obj_phonecall_room_599")
		global.msg[7] = scr_gettext("obj_phonecall_room_600")
		global.msg[8] = scr_gettext("obj_phonecall_room_601")
		global.plot = 139
		if (FL_DisableAlphysCalls == 1)
			donotcall = 1
	}
	if (donotcall == 0)
		snd_play(snd_phone)
	if (donotcall == 0)
	{
		instance_create(0, 0, obj_dialoguer)
		global.interact = 1
	}
}
