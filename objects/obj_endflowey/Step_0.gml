if (con == 1)
{
	ossafe_ini_open("undertale.ini")
	AF = ini_read_real("Flowey", "AF", 0)
	AK = ini_read_real("Flowey", "AK", 0)
	NK = ini_read_real("Flowey", "NK", 0)
	IK = ini_read_real("Flowey", "IK", 0)
	CK = ini_read_real("Flowey", "CK", 0)
	CHANGE = ini_read_real("Flowey", "CHANGE", 0)
	EX = ini_read_real("Flowey", "EX", 0)
	truename = ini_read_real("Flowey", "truename", 0)
	ossafe_ini_close()
	if (EX == 0)
		con = 100
	if (EX == 1)
		con = 110
	if (EX == 2)
		con = 120
	if (EX == 3)
		con = 130
	if (EX >= 4)
		con = 140
	if (FL_KilledAsgore == 1)
		global.kills += 1
	if (NK > 0 || CHANGE > 0)
	{
		if (CHANGE < 2)
		{
			if (global.kills >= 1)
				con = 70
		}
	}
	if (IK > 0)
	{
		if (CHANGE == 0)
		{
			if (global.kills == 0)
				con = 60
		}
	}
	if (AK == 0)
	{
		if (IK > 0)
		{
			if (FL_KilledAsgore == 1)
			{
				if (global.kills == 1)
					con = 30
			}
		}
	}
	if (NK == 0 && IK == 0)
	{
		if (global.kills >= 1)
			con = 50
	}
	if (NK == 0 && IK == 0)
	{
		if (FL_TorielStatus != TorielStatus.Killed)
		{
			if (FL_PapyrusStatus <= PapyrusStatus.Spared)
			{
				if (FL_UndyneStatus != UndyneStatus.Killed)
				{
					if (FL_KilledMettaton == 0)
					{
						if (global.kills <= 0)
							con = 10
					}
				}
			}
		}
	}
	if (AF == 0)
	{
		if (FL_TorielStatus != TorielStatus.Killed)
		{
			if (FL_PapyrusStatus <= PapyrusStatus.Spared)
			{
				if (FL_UndyneStatus != UndyneStatus.Killed)
				{
					if (FL_KilledMettaton == 0)
					{
						if (FL_UndyneDateStatus >= UndyneDateStatus.LeftHouse)
						{
							if (FL_DatedAlphys >= 10)
							{
								if (global.kills <= 0)
									con = 20
							}
						}
					}
				}
			}
		}
	}
	if (truename == 1)
		con = 80
}
var writerx = 60
var writery = 60
if (global.language == "ja")
	writerx = 95
if (con == 10)
{
	ossafe_ini_open("undertale.ini")
	ini_write_real("Flowey", "NK", 1)
	ossafe_ini_close()
	ossafe_savedata_save()
	global.msc = 0
	global.typer = 120
	global.msg[0] = scr_gettext("obj_endflowey_188")
	global.msg[1] = scr_gettext("obj_endflowey_189")
	global.msg[2] = scr_gettext("obj_endflowey_190")
	global.msg[3] = scr_gettext("obj_endflowey_191")
	global.msg[4] = scr_gettext("obj_endflowey_192")
	global.msg[5] = scr_gettext("obj_endflowey_193")
	global.msg[6] = scr_gettext("obj_endflowey_194")
	global.msg[7] = scr_gettext("obj_endflowey_195")
	global.msg[8] = scr_gettext("obj_endflowey_196")
	global.msg[9] = scr_gettext("obj_endflowey_197")
	global.msg[10] = scr_gettext("obj_endflowey_198")
	global.msg[11] = scr_gettext("obj_endflowey_199")
	global.msg[12] = scr_gettext("obj_endflowey_200")
	global.msg[13] = scr_gettext("obj_endflowey_201")
	global.msg[14] = scr_gettext("obj_endflowey_202")
	global.msg[15] = scr_gettext("obj_endflowey_203")
	global.msg[16] = scr_gettext("obj_endflowey_204")
	global.msg[17] = scr_gettext("obj_endflowey_205")
	global.msg[18] = scr_gettext("obj_endflowey_206")
	global.msg[19] = scr_gettext("obj_endflowey_207")
	global.msg[20] = scr_gettext("obj_endflowey_208")
	if (ossafe_file_exists("file0") == false)
		global.msg[20] = scr_gettext("obj_endflowey_211")
	if (FL_UndyneDateStatus >= UndyneDateStatus.LeftHouse)
		global.msg[21] = scr_gettext("obj_endflowey_216")
	else
		global.msg[21] = scr_gettext("obj_endflowey_219")
	if (FL_PapyrusDateCounter < 4)
		global.msg[21] = scr_gettext("obj_endflowey_223")
	global.msg[22] = scr_gettext("obj_endflowey_226")
	global.msg[23] = scr_gettext("obj_endflowey_227")
	global.msg[24] = scr_gettext("obj_endflowey_228")
	instance_create(writerx, writery, OBJ_WRITER)
	con = 2
}
if (con == 20)
{
	ossafe_ini_open("undertale.ini")
	ini_write_real("Flowey", "AF", 1)
	ossafe_ini_close()
	ossafe_savedata_save()
	global.msc = 0
	global.typer = 120
	global.msg[0] = scr_gettext("obj_endflowey_242")
	global.msg[1] = scr_gettext("obj_endflowey_243")
	global.msg[2] = scr_gettext("obj_endflowey_244")
	global.msg[3] = scr_gettext("obj_endflowey_245")
	global.msg[4] = scr_gettext("obj_endflowey_246")
	instance_create(writerx, writery, OBJ_WRITER)
	con = 2
}
if (con == 30)
{
	ossafe_ini_open("undertale.ini")
	ini_write_real("Flowey", "AK", 1)
	ossafe_ini_close()
	ossafe_savedata_save()
	global.msc = 0
	global.typer = 120
	global.msg[0] = scr_gettext("obj_endflowey_259")
	global.msg[1] = scr_gettext("obj_endflowey_260")
	global.msg[2] = scr_gettext("obj_endflowey_261")
	global.msg[3] = scr_gettext("obj_endflowey_262")
	global.msg[4] = scr_gettext("obj_endflowey_263")
	global.msg[5] = scr_gettext("obj_endflowey_264")
	global.msg[6] = scr_gettext("obj_endflowey_265")
	global.msg[7] = scr_gettext("obj_endflowey_266")
	global.msg[8] = scr_gettext("obj_endflowey_267")
	global.msg[9] = scr_gettext("obj_endflowey_268")
	global.msg[10] = scr_gettext("obj_endflowey_269")
	global.msg[11] = scr_gettext("obj_endflowey_270")
	instance_create(writerx, writery, OBJ_WRITER)
	con = 2
}
if (con == 50)
{
	facetype = 1
	ossafe_ini_open("undertale.ini")
	ini_write_real("Flowey", "IK", 1)
	ossafe_ini_close()
	ossafe_savedata_save()
	global.msc = 0
	global.typer = 120
	global.msg[0] = scr_gettext("obj_endflowey_284")
	global.msg[1] = scr_gettext("obj_endflowey_285")
	global.msg[2] = scr_gettext("obj_endflowey_286")
	global.msg[3] = scr_gettext("obj_endflowey_287")
	global.msg[4] = scr_gettext("obj_endflowey_288")
	global.msg[5] = scr_gettext("obj_endflowey_289")
	global.msg[6] = scr_gettext("obj_endflowey_290")
	global.msg[7] = scr_gettext("obj_endflowey_291")
	global.msg[8] = scr_gettext("obj_endflowey_292")
	global.msg[9] = scr_gettext("obj_endflowey_293")
	global.msg[10] = scr_gettext("obj_endflowey_294")
	if (FL_KilledAsgore == 0)
		global.msg[11] = scr_gettext("obj_endflowey_296")
	else
		global.msg[11] = scr_gettext("obj_endflowey_298")
	global.msg[12] = scr_gettext("obj_endflowey_299")
	global.msg[13] = scr_gettext("obj_endflowey_300")
	global.msg[14] = scr_gettext("obj_endflowey_301")
	global.msg[15] = scr_gettext("obj_endflowey_302")
	global.msg[16] = scr_gettext("obj_endflowey_303")
	global.msg[17] = scr_gettext("obj_endflowey_304")
	instance_create(writerx, writery, OBJ_WRITER)
	con = 2
}
if (con == 60)
{
	facetype = 1
	ossafe_ini_open("undertale.ini")
	ini_write_real("Flowey", "CHANGE", 1)
	ossafe_ini_close()
	ossafe_savedata_save()
	global.msc = 0
	global.typer = 120
	global.msg[0] = scr_gettext("obj_endflowey_319")
	global.msg[1] = scr_gettext("obj_endflowey_320")
	global.msg[2] = scr_gettext("obj_endflowey_321")
	global.msg[3] = scr_gettext("obj_endflowey_322")
	global.msg[4] = scr_gettext("obj_endflowey_323")
	global.msg[5] = scr_gettext("obj_endflowey_324")
	global.msg[6] = scr_gettext("obj_endflowey_325")
	global.msg[7] = scr_gettext("obj_endflowey_326")
	global.msg[8] = scr_gettext("obj_endflowey_327")
	global.msg[9] = scr_gettext("obj_endflowey_328")
	global.msg[10] = scr_gettext("obj_endflowey_329")
	global.msg[11] = scr_gettext("obj_endflowey_330")
	global.msg[12] = scr_gettext("obj_endflowey_331")
	global.msg[13] = scr_gettext("obj_endflowey_332")
	global.msg[14] = scr_gettext("obj_endflowey_333")
	global.msg[15] = scr_gettext("obj_endflowey_334")
	instance_create(writerx, writery, OBJ_WRITER)
	con = 2
}
if (con == 70)
{
	facetype = 1
	ossafe_ini_open("undertale.ini")
	ini_write_real("Flowey", "CHANGE", 2)
	ossafe_ini_close()
	ossafe_savedata_save()
	global.msc = 0
	global.typer = 120
	global.msg[0] = scr_gettext("obj_endflowey_349")
	global.msg[1] = scr_gettext("obj_endflowey_350")
	global.msg[2] = scr_gettext("obj_endflowey_351")
	global.msg[3] = scr_gettext("obj_endflowey_352")
	global.msg[4] = scr_gettext("obj_endflowey_353")
	global.msg[5] = scr_gettext("obj_endflowey_354")
	global.msg[6] = scr_gettext("obj_endflowey_355")
	global.msg[7] = scr_gettext("obj_endflowey_356")
	global.msg[8] = scr_gettext("obj_endflowey_357")
	instance_create(writerx, writery, OBJ_WRITER)
	con = 2
}
if (con == 80)
{
	facetype = 1
	ossafe_ini_open("undertale.ini")
	ini_write_real("Flowey", "SPECIALK", 1)
	ossafe_ini_close()
	ossafe_savedata_save()
	global.msc = 0
	global.typer = 120
	global.msg[0] = scr_gettext("obj_endflowey_372")
	global.msg[1] = scr_gettext("obj_endflowey_373")
	global.msg[2] = scr_gettext("obj_endflowey_374")
	global.msg[3] = scr_gettext("obj_endflowey_375")
	global.msg[4] = scr_gettext("obj_endflowey_376")
	global.msg[5] = scr_gettext("obj_endflowey_377")
	global.msg[6] = scr_gettext("obj_endflowey_378")
	global.msg[7] = scr_gettext("obj_endflowey_379")
	if (global.kills <= 3)
		global.msg[8] = scr_gettext("obj_endflowey_382")
	else
		global.msg[8] = scr_gettext("obj_endflowey_386")
	global.msg[9] = scr_gettext("obj_endflowey_389")
	global.msg[10] = scr_gettext("obj_endflowey_390")
	global.msg[11] = scr_gettext("obj_endflowey_391")
	global.msg[12] = scr_gettext("obj_endflowey_392")
	global.msg[13] = scr_gettext("obj_endflowey_393")
	global.msg[14] = scr_gettext("obj_endflowey_394")
	global.msg[15] = scr_gettext("obj_endflowey_395")
	global.msg[16] = scr_gettext("obj_endflowey_396")
	global.msg[17] = scr_gettext("obj_endflowey_397")
	global.msg[18] = scr_gettext("obj_endflowey_398")
	global.msg[19] = scr_gettext("obj_endflowey_399")
	global.msg[20] = scr_gettext("obj_endflowey_400")
	global.msg[21] = scr_gettext("obj_endflowey_401")
	instance_create(writerx, writery, OBJ_WRITER)
	con = 2
}
if (con == 100)
{
	facetype = 1
	ossafe_ini_open("undertale.ini")
	ini_write_real("Flowey", "EX", 1)
	ossafe_ini_close()
	ossafe_savedata_save()
	global.msc = 0
	global.typer = 120
	global.msg[0] = scr_gettext("obj_endflowey_415")
	global.msg[1] = scr_gettext("obj_endflowey_416")
	global.msg[2] = scr_gettext("obj_endflowey_417")
	global.msg[3] = scr_gettext("obj_endflowey_418")
	global.msg[4] = scr_gettext("obj_endflowey_419")
	global.msg[5] = scr_gettext("obj_endflowey_420")
	global.msg[6] = scr_gettext("obj_endflowey_421")
	global.msg[7] = scr_gettext("obj_endflowey_422")
	global.msg[8] = scr_gettext("obj_endflowey_423")
	global.msg[9] = scr_gettext("obj_endflowey_424")
	global.msg[10] = scr_gettext("obj_endflowey_425")
	global.msg[11] = scr_gettext("obj_endflowey_426")
	global.msg[12] = scr_gettext("obj_endflowey_427")
	global.msg[13] = scr_gettext("obj_endflowey_428")
	global.msg[14] = scr_gettext("obj_endflowey_429")
	instance_create(writerx, writery, OBJ_WRITER)
	con = 2
}
if (con == 110)
{
	facetype = 1
	ossafe_ini_open("undertale.ini")
	ini_write_real("Flowey", "EX", 2)
	ossafe_ini_close()
	ossafe_savedata_save()
	global.msc = 0
	global.typer = 120
	global.msg[0] = scr_gettext("obj_endflowey_443")
	global.msg[1] = scr_gettext("obj_endflowey_444")
	global.msg[2] = scr_gettext("obj_endflowey_445")
	global.msg[3] = scr_gettext("obj_endflowey_446")
	global.msg[4] = scr_gettext("obj_endflowey_447")
	global.msg[5] = scr_gettext("obj_endflowey_448")
	global.msg[6] = scr_gettext("obj_endflowey_449")
	global.msg[7] = scr_gettext("obj_endflowey_450")
	global.msg[8] = scr_gettext("obj_endflowey_451")
	global.msg[9] = scr_gettext("obj_endflowey_452")
	global.msg[10] = scr_gettext("obj_endflowey_453")
	global.msg[11] = scr_gettext("obj_endflowey_454")
	instance_create(writerx, writery, OBJ_WRITER)
	con = 2
}
if (con == 120)
{
	facetype = 1
	ossafe_ini_open("undertale.ini")
	ini_write_real("Flowey", "EX", 3)
	ossafe_ini_close()
	ossafe_savedata_save()
	global.msc = 0
	global.typer = 120
	global.msg[0] = scr_gettext("obj_endflowey_468")
	global.msg[1] = scr_gettext("obj_endflowey_469")
	global.msg[2] = scr_gettext("obj_endflowey_470")
	global.msg[3] = scr_gettext("obj_endflowey_471")
	global.msg[4] = scr_gettext("obj_endflowey_472")
	global.msg[5] = scr_gettext("obj_endflowey_473")
	global.msg[6] = scr_gettext("obj_endflowey_474")
	global.msg[7] = scr_gettext("obj_endflowey_475")
	global.msg[8] = scr_gettext("obj_endflowey_476")
	global.msg[9] = scr_gettext("obj_endflowey_477")
	global.msg[10] = scr_gettext("obj_endflowey_478")
	global.msg[11] = scr_gettext("obj_endflowey_479")
	global.msg[12] = scr_gettext("obj_endflowey_480")
	global.msg[13] = scr_gettext("obj_endflowey_481")
	global.msg[14] = scr_gettext("obj_endflowey_482")
	global.msg[15] = scr_gettext("obj_endflowey_483")
	global.msg[16] = scr_gettext("obj_endflowey_484")
	instance_create(writerx, writery, OBJ_WRITER)
	con = 2
}
if (con == 130)
{
	facetype = 1
	ossafe_ini_open("undertale.ini")
	ini_write_real("Flowey", "EX", 4)
	ossafe_ini_close()
	ossafe_savedata_save()
	global.msc = 0
	global.typer = 120
	global.msg[0] = scr_gettext("obj_endflowey_498")
	global.msg[1] = scr_gettext("obj_endflowey_499")
	global.msg[2] = scr_gettext("obj_endflowey_500")
	global.msg[3] = scr_gettext("obj_endflowey_501")
	global.msg[4] = scr_gettext("obj_endflowey_502")
	global.msg[5] = scr_gettext("obj_endflowey_503")
	global.msg[6] = scr_gettext("obj_endflowey_504")
	global.msg[7] = scr_gettext("obj_endflowey_505")
	global.msg[8] = scr_gettext("obj_endflowey_506")
	global.msg[9] = scr_gettext("obj_endflowey_507")
	global.msg[10] = scr_gettext("obj_endflowey_508")
	global.msg[11] = scr_gettext("obj_endflowey_509")
	global.msg[12] = scr_gettext("obj_endflowey_510")
	instance_create(writerx, writery, OBJ_WRITER)
	con = 2
}
if (con == 140)
{
	facetype = 1
	ossafe_ini_open("undertale.ini")
	ini_write_real("Flowey", "EX", 5)
	ossafe_ini_close()
	ossafe_savedata_save()
	global.typer = 120
	global.msc = 0
	global.msg[0] = scr_gettext("obj_endflowey_524")
	global.msg[1] = scr_gettext("obj_endflowey_525")
	instance_create(writerx, writery, OBJ_WRITER)
	con = 2
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
	flowey = 3
	con = 3
	alarm[4] = 100
}
if (con == 4)
	room_goto(room_emptyblack)
