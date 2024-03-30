if (con == 0)
{
    con = 1
    snd_play(snd_phone)
}
if (con == 1)
{
    global.faceemotion = 0
    global.typer = 5
    global.facechoice = 0
    global.msc = 0
    global.msg[0] = scr_gettext("obj_mainend_158") // * (Ring^1, ring...)
    scr_sansface(1, 0)
    global.msg[2] = scr_gettext("obj_mainend_160") // * heya.
    global.msg[3] = scr_gettext("obj_mainend_161") // * is anyone there...?
    global.msg[4] = scr_gettext("obj_mainend_162") // * well^1, i'll just leave&  a message...
    scr_itemcheck(Items.SnowmanPiece)
    if (haveit == true && FL_PapyrusStatus != PapyrusStatus.Spared)
    {
        global.msg[3] = scr_gettext("obj_mainend_169") // * is anyone there...?
        global.msg[4] = scr_gettext("obj_mainend_170") // * well..^1. just calling&  to say.
        global.msg[5] = scr_gettext("obj_mainend_171") // * you made a snowman&  really happy.
        global.msg[6] = scr_gettext("obj_mainend_172") // * ... guess i should&  say something else^1,&  too.
    }
    if (ossafe_file_exists("file0") == false && FL_PapyrusStatus != PapyrusStatus.Spared)
    {
        global.msg[2] = scr_gettext("obj_mainend_177") // * heya.
        global.msg[4] = scr_gettext("obj_mainend_178") // * well..^1. just calling&  to say.
        global.msg[5] = scr_gettext("obj_mainend_179") // * it's been a while^1.&* shouldn't you SAVE?
        global.msg[6] = scr_gettext("obj_mainend_180") // * ... guess i should&  say something else^1,&  too.
    }
    if (global.armor == Items.Bandage && FL_PapyrusStatus != PapyrusStatus.Spared)
    {
        global.msg[3] = scr_gettext("obj_mainend_186") // * is anyone there...?
        global.msg[4] = scr_gettext("obj_mainend_187") // * well..^1. just calling&  to ask.
        global.msg[5] = scr_gettext("obj_mainend_188") // * did you ever take&  off that gross&  bandage...?
        global.msg[6] = scr_gettext("obj_mainend_189") // * ... guess i should&  say something else^1,&  too.
    }
    if (FL_UsedRecoveryItem == false && FL_PapyrusStatus != PapyrusStatus.Spared)
    {
        global.msg[3] = scr_gettext("obj_mainend_195") // * is anyone there...?
        global.msg[4] = scr_gettext("obj_mainend_196") // * well..^1. just calling&  to ask.
        global.msg[5] = scr_gettext("obj_mainend_197") // * did you ever get&  something to eat?
        global.msg[6] = scr_gettext("obj_mainend_198") // * ... guess i should&  say something else^1,&  too.
    }
    if (FL_UsedRecoveryItem == false && global.lv == 1 && global.armor == Items.Bandage && FL_PapyrusStatus != PapyrusStatus.Spared)
    {
        global.msg[3] = scr_gettext("obj_mainend_204") // * is anyone there...?
        global.msg[4] = scr_gettext("obj_mainend_205") // * well..^1. just calling&  to ask.
        global.msg[5] = scr_gettext("obj_mainend_206") // * you really like to&  challenge yourself^1,&  huh...?
        global.msg[6] = scr_gettext("obj_mainend_207") // * well..^1. good job^1.
        global.msg[7] = scr_gettext("obj_mainend_208") // * just promise not to&  brag about it^1,&  okay?
        global.msg[8] = scr_gettext("obj_mainend_209") // * ... guess i should&  say something else^1,&  too.
    }
    if (q == 7)
    {
        global.msg[2] = scr_gettext("obj_mainend_214") // * ...
        global.msg[3] = scr_gettext("obj_mainend_215") // * alright^1, i've got the&  number.
    }
    instance_create(0, 0, obj_dialoguer)
    con = 2
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
    if (q != 3 && q != 7)
        caster_loop(global.currentsong, 1, 1)
    alarm[4] = 60
    if (q == 0)
        con = 3
    if (q == 1)
        con = 20
    if (q == 2)
        con = 30
    if (q == 3)
        con = 40
    if (q == 4)
        con = 50
    if (q == 5)
        con = 60
    if (q == 6)
        con = 70
    if (q == 7)
        con = 90
    if (q == 20)
        con = 80
}
if (con == 4)
{
    global.facechoice = 3
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_mainend_250")
    global.msg[1] = scr_gettext("obj_mainend_251")
    global.msg[2] = scr_gettext("obj_mainend_252")
    global.msg[3] = scr_gettext("obj_mainend_253")
    global.msg[4] = scr_gettext("obj_mainend_254")
    global.msg[5] = scr_gettext("obj_mainend_255")
    global.msg[6] = scr_gettext("obj_mainend_256")
    global.msg[7] = scr_gettext("obj_mainend_257")
    global.msg[8] = scr_gettext("obj_mainend_258")
    global.msg[9] = scr_gettext("obj_mainend_263")
    global.msg[10] = scr_gettext("obj_mainend_264")
    global.msg[11] = scr_gettext("obj_mainend_265")
    global.msg[12] = scr_gettext("obj_mainend_267")
    global.msg[13] = scr_gettext("obj_mainend_268")
    global.msg[14] = scr_gettext("obj_mainend_269")
    global.msg[15] = scr_gettext("obj_mainend_270")
    global.msg[16] = scr_gettext("obj_mainend_271")
    global.msg[17] = scr_gettext("obj_mainend_272")
    scr_papface(17, 1)
    global.msg[18] = scr_gettext("obj_mainend_274")
    scr_sansface(19, 2)
    global.msg[20] = scr_gettext("obj_mainend_276")
    scr_papface(21, 1)
    global.msg[22] = scr_gettext("obj_mainend_278")
    global.msg[23] = scr_gettext("obj_mainend_279")
    scr_sansface(24, 1)
    global.msg[25] = scr_gettext("obj_mainend_281")
    instance_create(0, 0, obj_dialoguer)
    con = 5
}
if (con == 5 && instance_exists(OBJ_WRITER) == false)
{
    con = 6
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_mainend_292")
    global.msg[1] = scr_gettext("obj_mainend_293")
    global.msg[2] = scr_gettext("obj_mainend_294")
    global.msg[3] = scr_gettext("obj_mainend_295")
    global.msg[4] = scr_gettext("obj_mainend_296")
    global.msg[5] = scr_gettext("obj_mainend_297")
    global.msg[6] = scr_gettext("obj_mainend_298")
    global.msg[7] = scr_gettext("obj_mainend_299")
    global.msg[8] = scr_gettext("obj_mainend_300")
    global.msg[9] = scr_gettext("obj_mainend_301")
    global.msg[10] = scr_gettext("obj_mainend_302")
    global.msg[11] = scr_gettext("obj_mainend_303")
    global.msg[12] = scr_gettext("obj_mainend_304")
    global.msg[13] = scr_gettext("obj_mainend_305")
    global.msg[14] = scr_gettext("obj_mainend_306")
    global.msg[15] = scr_gettext("obj_mainend_307")
    if (FL_UndyneDateStatus <= 3 || global.kills > 0)
    {
        global.msg[2] = scr_gettext("obj_mainend_311")
        global.msg[3] = scr_gettext("obj_mainend_312")
        global.msg[4] = scr_gettext("obj_mainend_313")
        global.msg[5] = scr_gettext("obj_mainend_314")
        global.msg[6] = scr_gettext("obj_mainend_315")
        global.msg[7] = scr_gettext("obj_mainend_316")
        global.msg[8] = scr_gettext("obj_mainend_317")
        global.msg[9] = scr_gettext("obj_mainend_318")
        global.msg[10] = scr_gettext("obj_mainend_319")
        global.msg[11] = scr_gettext("obj_mainend_320")
        global.msg[12] = scr_gettext("obj_mainend_321")
        global.msg[13] = scr_gettext("obj_mainend_322")
        global.msg[14] = scr_gettext("obj_mainend_323")
        global.msg[15] = scr_gettext("obj_mainend_324")
        global.msg[16] = scr_gettext("obj_mainend_325")
        global.msg[17] = scr_gettext("obj_mainend_326")
        global.msg[18] = scr_gettext("obj_mainend_327")
        global.msg[19] = scr_gettext("obj_mainend_328")
        global.msg[20] = scr_gettext("obj_mainend_329")
        global.msg[21] = scr_gettext("obj_mainend_330")
        global.msg[22] = scr_gettext("obj_mainend_331")
        global.msg[23] = scr_gettext("obj_mainend_332")
        global.msg[24] = scr_gettext("obj_mainend_333")
        global.msg[25] = scr_gettext("obj_mainend_334")
        global.msg[26] = scr_gettext("obj_mainend_335")
        if (global.kills >= 1 && FL_UndyneDateStatus > 0)
        {
            global.msg[27] = scr_gettext("obj_mainend_338")
            global.msg[28] = scr_gettext("obj_mainend_339")
            global.msg[29] = scr_gettext("obj_mainend_340")
            global.msg[30] = scr_gettext("obj_mainend_341")
            global.msg[31] = scr_gettext("obj_mainend_342")
            global.msg[32] = scr_gettext("obj_mainend_343")
            global.msg[33] = scr_gettext("obj_mainend_344")
            global.msg[34] = scr_gettext("obj_mainend_345")
            global.msg[35] = scr_gettext("obj_mainend_346")
            global.msg[36] = scr_gettext("obj_mainend_347")
            global.msg[37] = scr_gettext("obj_mainend_348")
            global.msg[38] = scr_gettext("obj_mainend_349")
            global.msg[39] = scr_gettext("obj_mainend_350")
            global.msg[40] = scr_gettext("obj_mainend_351")
            global.msg[41] = scr_gettext("obj_mainend_352")
            global.msg[42] = scr_gettext("obj_mainend_353")
            global.msg[43] = scr_gettext("obj_mainend_354")
            global.msg[44] = scr_gettext("obj_mainend_355")
            global.msg[45] = scr_gettext("obj_mainend_356")
            global.msg[46] = scr_gettext("obj_mainend_357")
            global.msg[47] = scr_gettext("obj_mainend_358")
            global.msg[48] = scr_gettext("obj_mainend_359")
            if (FL_KilledMettaton == 1)
            {
                global.msg[32] = scr_gettext("obj_mainend_364")
                global.msg[33] = scr_gettext("obj_mainend_365")
                global.msg[34] = scr_gettext("obj_mainend_366")
                global.msg[35] = scr_gettext("obj_mainend_367")
                global.msg[36] = scr_gettext("obj_mainend_368")
                global.msg[37] = scr_gettext("obj_mainend_369")
                global.msg[38] = scr_gettext("obj_mainend_370")
                global.msg[39] = scr_gettext("obj_mainend_371")
                global.msg[40] = scr_gettext("obj_mainend_372")
                global.msg[41] = scr_gettext("obj_mainend_373")
                global.msg[42] = scr_gettext("obj_mainend_374")
                global.msg[43] = scr_gettext("obj_mainend_375")
                global.msg[44] = scr_gettext("obj_mainend_376")
                global.msg[45] = scr_gettext("obj_mainend_377")
                global.msg[46] = scr_gettext("obj_mainend_378")
                global.msg[47] = scr_gettext("obj_mainend_379")
            }
        }
        else
        {
            global.msg[27] = scr_gettext("obj_mainend_385")
            global.msg[28] = scr_gettext("obj_mainend_386")
            global.msg[29] = scr_gettext("obj_mainend_387")
            global.msg[30] = scr_gettext("obj_mainend_388")
            global.msg[31] = scr_gettext("obj_mainend_389")
            global.msg[32] = scr_gettext("obj_mainend_390")
            global.msg[33] = scr_gettext("obj_mainend_391")
            global.msg[34] = scr_gettext("obj_mainend_392")
            global.msg[35] = scr_gettext("obj_mainend_393")
            global.msg[36] = scr_gettext("obj_mainend_394")
            global.msg[37] = scr_gettext("obj_mainend_395")
            global.msg[38] = scr_gettext("obj_mainend_396")
            global.msg[39] = scr_gettext("obj_mainend_397")
            global.msg[40] = scr_gettext("obj_mainend_398")
            global.msg[41] = scr_gettext("obj_mainend_399")
            global.msg[42] = scr_gettext("obj_mainend_400")
            if (FL_KilledMettaton == 1)
            {
                global.msg[29] = scr_gettext("obj_mainend_404")
                global.msg[30] = scr_gettext("obj_mainend_405")
                global.msg[31] = scr_gettext("obj_mainend_406")
                global.msg[32] = scr_gettext("obj_mainend_407")
                global.msg[33] = scr_gettext("obj_mainend_408")
                global.msg[34] = scr_gettext("obj_mainend_409")
                global.msg[35] = scr_gettext("obj_mainend_410")
                global.msg[36] = scr_gettext("obj_mainend_411")
                global.msg[37] = scr_gettext("obj_mainend_412")
                global.msg[38] = scr_gettext("obj_mainend_413")
                global.msg[39] = scr_gettext("obj_mainend_414")
                global.msg[40] = scr_gettext("obj_mainend_415")
                global.msg[41] = scr_gettext("obj_mainend_416")
                global.msg[42] = scr_gettext("obj_mainend_417")
                global.msg[43] = scr_gettext("obj_mainend_418")
            }
        }
        con = 8
    }
    instance_create(0, 0, obj_dialoguer)
}
if (con == 6 && instance_exists(OBJ_WRITER) == false)
{
    FL_AlphysExpression = 0
    con = 8
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 2
    global.msg[0] = scr_gettext("obj_mainend_434")
    global.msg[1] = scr_gettext("obj_mainend_435")
    scr_papface(2, 5)
    global.msg[3] = scr_gettext("obj_mainend_437")
    scr_undface(4, 3)
    global.msg[5] = scr_gettext("obj_mainend_439")
    scr_papface(6, 5)
    global.msg[7] = scr_gettext("obj_mainend_441")
    scr_undface(8, 6)
    global.msg[9] = scr_gettext("obj_mainend_443")
    global.msg[10] = scr_gettext("obj_mainend_444")
    global.msg[11] = scr_gettext("obj_mainend_445")
    global.msg[12] = scr_gettext("obj_mainend_446")
    global.msg[13] = scr_gettext("obj_mainend_447")
    scr_papface(14, 0)
    global.msg[15] = scr_gettext("obj_mainend_449")
    scr_undface(16, 6)
    global.msg[17] = scr_gettext("obj_mainend_451")
    scr_papface(18, 5)
    global.msg[19] = scr_gettext("obj_mainend_453")
    scr_undface(20, 9)
    global.msg[21] = scr_gettext("obj_mainend_455")
    global.msg[22] = scr_gettext("obj_mainend_456")
    global.msg[23] = scr_gettext("obj_mainend_457")
    global.msg[24] = scr_gettext("obj_mainend_458")
    global.msg[25] = scr_gettext("obj_mainend_459")
    global.msg[26] = scr_gettext("obj_mainend_460")
    global.msg[27] = scr_gettext("obj_mainend_461")
    global.msg[28] = scr_gettext("obj_mainend_462")
    global.msg[29] = scr_gettext("obj_mainend_463")
    global.msg[30] = scr_gettext("obj_mainend_464")
    global.msg[31] = scr_gettext("obj_mainend_465")
    global.msg[32] = scr_gettext("obj_mainend_466")
    global.msg[33] = scr_gettext("obj_mainend_467")
    global.msg[34] = scr_gettext("obj_mainend_469")
    global.msg[35] = scr_gettext("obj_mainend_470")
    global.msg[36] = scr_gettext("obj_mainend_471")
    global.msg[37] = scr_gettext("obj_mainend_472")
    global.msg[38] = scr_gettext("obj_mainend_473")
    global.msg[39] = scr_gettext("obj_mainend_474")
    global.msg[40] = scr_gettext("obj_mainend_475")
    global.msg[41] = scr_gettext("obj_mainend_476")
    global.msg[42] = scr_gettext("obj_mainend_477")
    global.msg[43] = scr_gettext("obj_mainend_478")
    global.msg[44] = scr_gettext("obj_mainend_479")
    global.msg[45] = scr_gettext("obj_mainend_480")
    global.msg[46] = scr_gettext("obj_mainend_481")
    global.msg[47] = scr_gettext("obj_mainend_482")
    global.msg[48] = scr_gettext("obj_mainend_483")
    global.msg[49] = scr_gettext("obj_mainend_484")
    global.msg[50] = scr_gettext("obj_mainend_485")
    global.msg[51] = scr_gettext("obj_mainend_486")
    global.msg[52] = scr_gettext("obj_mainend_487")
    global.msg[53] = scr_gettext("obj_mainend_488")
    global.msg[54] = scr_gettext("obj_mainend_489")
    global.msg[55] = scr_gettext("obj_mainend_490")
    global.msg[56] = scr_gettext("obj_mainend_491")
    scr_papface(57, 0)
    global.msg[58] = scr_gettext("obj_mainend_493")
    scr_sansface(59, 2)
    global.msg[60] = scr_gettext("obj_mainend_495")
    scr_papface(61, 0)
    global.msg[62] = scr_gettext("obj_mainend_497")
    scr_undface(63, 9)
    global.msg[64] = scr_gettext("obj_mainend_499")
    scr_sansface(65, 2)
    global.msg[66] = scr_gettext("obj_mainend_501")
    global.msg[67] = scr_gettext("obj_mainend_502")
    global.msg[68] = scr_gettext("obj_mainend_503")
    global.msg[69] = scr_gettext("obj_mainend_504")
    scr_papface(70, 0)
    global.msg[71] = scr_gettext("obj_mainend_506")
    scr_undface(72, 2)
    global.msg[73] = scr_gettext("obj_mainend_508")
    if (FL_DatedAlphys >= 10)
    {
        scr_alface(34, 3)
        global.msg[35] = scr_gettext("obj_mainend_524")
        scr_undface(36, 9)
        global.msg[37] = scr_gettext("obj_mainend_526")
        scr_alface(38, 3)
        global.msg[39] = scr_gettext("obj_mainend_528")
        con = 7
    }
    instance_create(0, 0, obj_dialoguer)
}
if (con == 7 && instance_exists(OBJ_WRITER) == false)
{
    FL_AlphysExpression = 0
    con = 8
    global.typer = 47
    global.facechoice = 6
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_mainend_541")
    global.msg[1] = scr_gettext("obj_mainend_542")
    global.msg[2] = scr_gettext("obj_mainend_543")
    global.msg[3] = scr_gettext("obj_mainend_544")
    global.msg[4] = scr_gettext("obj_mainend_545")
    global.msg[5] = scr_gettext("obj_mainend_546")
    global.msg[6] = scr_gettext("obj_mainend_547")
    global.msg[7] = scr_gettext("obj_mainend_548")
    global.msg[8] = scr_gettext("obj_mainend_549")
    global.msg[9] = scr_gettext("obj_mainend_550")
    global.msg[10] = scr_gettext("obj_mainend_551")
    global.msg[11] = scr_gettext("obj_mainend_552")
    global.msg[12] = scr_gettext("obj_mainend_553")
    global.msg[13] = scr_gettext("obj_mainend_554")
    global.msg[14] = scr_gettext("obj_mainend_555")
    global.msg[15] = scr_gettext("obj_mainend_556")
    global.msg[16] = scr_gettext("obj_mainend_557")
    global.msg[17] = scr_gettext("obj_mainend_558")
    global.msg[18] = scr_gettext("obj_mainend_559")
    global.msg[19] = scr_gettext("obj_mainend_560")
    global.msg[20] = scr_gettext("obj_mainend_561")
    global.msg[21] = scr_gettext("obj_mainend_562")
    scr_undface(22, 6)
    global.msg[23] = scr_gettext("obj_mainend_564")
    scr_papface(24, 0)
    global.msg[25] = scr_gettext("obj_mainend_566")
    scr_sansface(26, 2)
    global.msg[27] = scr_gettext("obj_mainend_568")
    scr_papface(28, 0)
    global.msg[29] = scr_gettext("obj_mainend_570")
    scr_alface(30, 3)
    global.msg[31] = scr_gettext("obj_mainend_572")
    scr_undface(32, 9)
    global.msg[33] = scr_gettext("obj_mainend_574")
    scr_sansface(34, 2)
    global.msg[35] = scr_gettext("obj_mainend_576")
    global.msg[36] = scr_gettext("obj_mainend_577")
    global.msg[37] = scr_gettext("obj_mainend_578")
    global.msg[38] = scr_gettext("obj_mainend_579")
    scr_papface(39, 0)
    global.msg[40] = scr_gettext("obj_mainend_581")
    scr_undface(41, 9)
    global.msg[42] = scr_gettext("obj_mainend_583")
    scr_alface(43, 3)
    global.msg[44] = scr_gettext("obj_mainend_585")
    global.msg[45] = scr_gettext("obj_mainend_586")
    global.msg[46] = scr_gettext("obj_mainend_587")
    global.msg[47] = scr_gettext("obj_mainend_588")
    instance_create(0, 0, obj_dialoguer)
}
if (con == 8 && instance_exists(OBJ_WRITER) == false)
{
    con = 9
    mf = instance_create(0, 0, obj_musfadeout)
    mf.fadespeed = 0.02
    global.typer = 5
    global.faceemotion = 0
    global.facechoice = 0
    global.msg[0] = scr_gettext("obj_mainend_612")
    instance_create(0, 0, obj_dialoguer)
}
if (con == 9 && instance_exists(OBJ_WRITER) == false)
{
    con = 10
    alarm[4] = 150
}
if (con == 11)
{
    ossafe_ini_open("undertale.ini")
    K = ini_read_real("Flowey", "K", 0)
    SPECIALK = ini_read_real("Flowey", "SPECIALK", 0)
    ossafe_ini_close()
    if (K > 0 || SPECIALK > 0)
        FL_KilledFlowey = 1
    if (FL_KilledFlowey == 0)
    {
        instance_create(0, 0, obj_endflowey)
        con = 14
        instance_destroy()
    }
    else if (global.savedata_async_id == -1)
        game_restart()
}
if (con == 21 && instance_exists(OBJ_WRITER) == false)
{
    global.facechoice = 3
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_mainend_650")
    global.msg[1] = scr_gettext("obj_mainend_651")
    global.msg[2] = scr_gettext("obj_mainend_652")
    global.msg[3] = scr_gettext("obj_mainend_653")
    global.msg[4] = scr_gettext("obj_mainend_654")
    global.msg[5] = scr_gettext("obj_mainend_655")
    global.msg[6] = scr_gettext("obj_mainend_656")
    global.msg[7] = scr_gettext("obj_mainend_665")
    global.msg[8] = scr_gettext("obj_mainend_666")
    global.msg[9] = scr_gettext("obj_mainend_667")
    if (FL_PapyrusStatus == PapyrusStatus.Killed)
        global.msg[9] = scr_gettext("obj_mainend_669")
    if (FL_UndyneStatus == UndyneStatus.Killed)
        global.msg[9] = scr_gettext("obj_mainend_671")
    if (global.kills >= 10)
        global.msg[9] = scr_gettext("obj_mainend_673")
    global.msg[10] = scr_gettext("obj_mainend_674")
    global.msg[11] = scr_gettext("obj_mainend_675")
    global.msg[12] = scr_gettext("obj_mainend_676")
    global.msg[13] = scr_gettext("obj_mainend_677")
    global.msg[14] = scr_gettext("obj_mainend_678")
    global.msg[15] = scr_gettext("obj_mainend_679")
    global.msg[16] = scr_gettext("obj_mainend_680")
    global.msg[17] = scr_gettext("obj_mainend_681")
    global.msg[18] = scr_gettext("obj_mainend_682")
    if (FL_UndyneStatus != UndyneStatus.Killed)
    {
        global.msg[12] = scr_gettext("obj_mainend_688")
        if (FL_KilledMettaton == 0)
            global.msg[13] = scr_gettext("obj_mainend_691")
        else
            global.msg[13] = scr_gettext("obj_mainend_695")
        global.msg[14] = scr_gettext("obj_mainend_697")
        global.msg[15] = scr_gettext("obj_mainend_698")
        global.msg[16] = scr_gettext("obj_mainend_699")
        global.msg[17] = scr_gettext("obj_mainend_700")
        global.msg[18] = scr_gettext("obj_mainend_701")
        global.msg[19] = scr_gettext("obj_mainend_702")
    }
    instance_create(0, 0, obj_dialoguer)
    con = 22
}
if (con == 22 && instance_exists(OBJ_WRITER) == false)
{
    if (FL_PapyrusStatus != PapyrusStatus.Killed)
    {
        con = 8
        global.msg[0] = scr_gettext("obj_mainend_716")
        global.msg[1] = scr_gettext("obj_mainend_717")
        global.msg[2] = scr_gettext("obj_mainend_718")
        global.msg[3] = scr_gettext("obj_mainend_719")
        global.msg[4] = scr_gettext("obj_mainend_720")
        global.msg[5] = scr_gettext("obj_mainend_721")
        global.msg[6] = scr_gettext("obj_mainend_722")
        scr_papface(7, 0)
        global.msg[8] = scr_gettext("obj_mainend_724")
        global.msg[9] = scr_gettext("obj_mainend_725")
        global.msg[10] = scr_gettext("obj_mainend_726")
        global.msg[11] = scr_gettext("obj_mainend_727")
        scr_sansface(12, 2)
        global.msg[13] = scr_gettext("obj_mainend_729")
        scr_papface(14, 0)
        global.msg[15] = scr_gettext("obj_mainend_731")
        scr_sansface(16, 1)
        global.msg[17] = scr_gettext("obj_mainend_733")
        global.msg[18] = scr_gettext("obj_mainend_734")
        global.msg[19] = scr_gettext("obj_mainend_735")
    }
    else
    {
        con = 23
        global.msg[0] = scr_gettext("obj_mainend_740")
        global.msg[1] = scr_gettext("obj_mainend_741")
        global.msg[2] = scr_gettext("obj_mainend_742")
        global.msg[3] = scr_gettext("obj_mainend_743")
        global.msg[4] = scr_gettext("obj_mainend_744")
        global.msg[5] = scr_gettext("obj_mainend_745")
        global.msg[6] = scr_gettext("obj_mainend_746")
        global.msg[7] = scr_gettext("obj_mainend_747")
        global.msg[8] = scr_gettext("obj_mainend_748")
        global.msg[9] = scr_gettext("obj_mainend_749")
        global.msg[10] = scr_gettext("obj_mainend_750")
        global.msg[11] = scr_gettext("obj_mainend_751")
        global.msg[12] = scr_gettext("obj_mainend_752")
        global.msg[13] = scr_gettext("obj_mainend_753")
        global.msg[14] = scr_gettext("obj_mainend_754")
        global.msg[15] = scr_gettext("obj_mainend_755")
        global.msg[16] = scr_gettext("obj_mainend_756")
        global.msg[17] = scr_gettext("obj_mainend_757")
        global.msg[18] = scr_gettext("obj_mainend_758")
        global.msg[19] = scr_gettext("obj_mainend_759")
    }
    instance_create(0, 0, obj_dialoguer)
}
if (con == 23 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 14)
        caster_stop(global.currentsong)
}
if (con == 23 && instance_exists(OBJ_WRITER) == false)
    con = 8
if (con == 31 && instance_exists(OBJ_WRITER) == false)
{
    global.facechoice = 3
    global.faceemotion = 1
    con = 8
    global.msg[0] = scr_gettext("obj_mainend_784")
    global.msg[1] = scr_gettext("obj_mainend_785")
    global.msg[2] = scr_gettext("obj_mainend_786")
    global.msg[3] = scr_gettext("obj_mainend_787")
    global.msg[4] = scr_gettext("obj_mainend_788")
    global.msg[5] = scr_gettext("obj_mainend_789")
    global.msg[6] = scr_gettext("obj_mainend_790")
    global.msg[7] = scr_gettext("obj_mainend_791")
    global.msg[8] = scr_gettext("obj_mainend_792")
    global.msg[9] = scr_gettext("obj_mainend_793")
    global.msg[10] = scr_gettext("obj_mainend_794")
    global.msg[11] = scr_gettext("obj_mainend_795")
    global.msg[12] = scr_gettext("obj_mainend_796")
    global.msg[13] = scr_gettext("obj_mainend_797")
    if (FL_PapyrusStatus == PapyrusStatus.Killed)
    {
        global.msg[14] = scr_gettext("obj_mainend_801")
        global.msg[15] = scr_gettext("obj_mainend_802")
        global.msg[16] = scr_gettext("obj_mainend_803")
        global.msg[17] = scr_gettext("obj_mainend_804")
        global.msg[18] = scr_gettext("obj_mainend_805")
        global.msg[19] = scr_gettext("obj_mainend_806")
        global.msg[20] = scr_gettext("obj_mainend_807")
        global.msg[21] = scr_gettext("obj_mainend_808")
        con = 32
    }
    else
    {
        global.msg[14] = scr_gettext("obj_mainend_813")
        global.msg[15] = scr_gettext("obj_mainend_814")
        global.msg[16] = scr_gettext("obj_mainend_815")
        global.msg[17] = scr_gettext("obj_mainend_816")
        scr_papface(18, 3)
        global.msg[19] = scr_gettext("obj_mainend_818")
        scr_sansface(20, 2)
        global.msg[21] = scr_gettext("obj_mainend_820")
        scr_papface(22, 2)
        global.msg[23] = scr_gettext("obj_mainend_822")
        global.msg[24] = scr_gettext("obj_mainend_823")
        global.msg[25] = scr_gettext("obj_mainend_824")
        global.msg[26] = scr_gettext("obj_mainend_825")
        scr_sansface(27, 1)
        global.msg[28] = scr_gettext("obj_mainend_827")
        scr_papface(29, 0)
        global.msg[30] = scr_gettext("obj_mainend_829")
        global.msg[31] = scr_gettext("obj_mainend_830")
        global.msg[32] = scr_gettext("obj_mainend_831")
        global.msg[33] = scr_gettext("obj_mainend_832")
        global.msg[34] = scr_gettext("obj_mainend_833")
        global.msg[35] = scr_gettext("obj_mainend_834")
        global.msg[36] = scr_gettext("obj_mainend_835")
        global.msg[37] = scr_gettext("obj_mainend_836")
        global.msg[38] = scr_gettext("obj_mainend_837")
        global.msg[39] = scr_gettext("obj_mainend_838")
        global.msg[40] = scr_gettext("obj_mainend_839")
        global.msg[41] = scr_gettext("obj_mainend_840")
        global.msg[42] = scr_gettext("obj_mainend_841")
        global.msg[43] = scr_gettext("obj_mainend_842")
        global.msg[44] = scr_gettext("obj_mainend_843")
        global.msg[45] = scr_gettext("obj_mainend_844")
        global.msg[46] = scr_gettext("obj_mainend_845")
        global.msg[47] = scr_gettext("obj_mainend_846")
        global.msg[48] = scr_gettext("obj_mainend_847")
        global.msg[49] = scr_gettext("obj_mainend_848")
        global.msg[50] = scr_gettext("obj_mainend_849")
    }
    instance_create(0, 0, obj_dialoguer)
}
if (con == 32 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 18)
        caster_stop(global.currentsong)
}
if (con == 32 && instance_exists(OBJ_WRITER) == false)
    con = 8
if (con == 41)
{
    global.facechoice = 3
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_mainend_875")
    global.msg[1] = scr_gettext("obj_mainend_876")
    global.msg[2] = scr_gettext("obj_mainend_877")
    global.msg[3] = scr_gettext("obj_mainend_878")
    global.msg[4] = scr_gettext("obj_mainend_879")
    global.msg[5] = scr_gettext("obj_mainend_880")
    global.msg[6] = scr_gettext("obj_mainend_881")
    global.msg[7] = scr_gettext("obj_mainend_882")
    global.msg[8] = scr_gettext("obj_mainend_883")
    global.msg[9] = scr_gettext("obj_mainend_884")
    instance_create(0, 0, obj_dialoguer)
    con = 42
}
if (con == 42 && instance_exists(OBJ_WRITER) == false)
{
    caster_play(global.currentsong, 0.7, 0.95)
    global.typer = 27
    global.facechoice = 8
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_mainend_896")
    global.msg[1] = scr_gettext("obj_mainend_897")
    global.msg[2] = scr_gettext("obj_mainend_898")
    global.msg[3] = scr_gettext("obj_mainend_899")
    global.msg[4] = scr_gettext("obj_mainend_900")
    global.msg[5] = scr_gettext("obj_mainend_901")
    global.msg[6] = scr_gettext("obj_mainend_902")
    global.msg[7] = scr_gettext("obj_mainend_903")
    global.msg[8] = scr_gettext("obj_mainend_904")
    global.msg[9] = scr_gettext("obj_mainend_905")
    global.msg[10] = scr_gettext("obj_mainend_906")
    global.msg[11] = scr_gettext("obj_mainend_907")
    global.msg[12] = scr_gettext("obj_mainend_908")
    global.msg[13] = scr_gettext("obj_mainend_909")
    global.msg[14] = scr_gettext("obj_mainend_910")
    global.msg[15] = scr_gettext("obj_mainend_911")
    global.msg[16] = scr_gettext("obj_mainend_912")
    global.msg[17] = scr_gettext("obj_mainend_913")
    global.msg[18] = scr_gettext("obj_mainend_914")
    global.msg[19] = scr_gettext("obj_mainend_915")
    global.msg[20] = scr_gettext("obj_mainend_916")
    global.msg[21] = scr_gettext("obj_mainend_917")
    global.msg[22] = scr_gettext("obj_mainend_918")
    global.msg[23] = scr_gettext("obj_mainend_919")
    global.msg[24] = scr_gettext("obj_mainend_920")
    global.msg[25] = scr_gettext("obj_mainend_921")
    global.msg[26] = scr_gettext("obj_mainend_922")
    global.msg[27] = scr_gettext("obj_mainend_923")
    global.msg[28] = scr_gettext("obj_mainend_924")
    global.msg[29] = scr_gettext("obj_mainend_925")
    global.msg[30] = scr_gettext("obj_mainend_926")
    global.msg[31] = scr_gettext("obj_mainend_927")
    global.msg[32] = scr_gettext("obj_mainend_928")
    global.msg[33] = scr_gettext("obj_mainend_929")
    if (FL_PapyrusStatus == PapyrusStatus.Killed)
        global.msg[33] = scr_gettext("obj_mainend_933")
    else
    {
        global.msg[34] = scr_gettext("obj_mainend_937")
        scr_papface(35, 0)
        global.msg[36] = scr_gettext("obj_mainend_939")
        global.msg[37] = scr_gettext("obj_mainend_940")
        global.msg[38] = scr_gettext("obj_mainend_941")
        global.msg[39] = scr_gettext("obj_mainend_942")
        global.msg[40] = scr_gettext("obj_mainend_943")
        global.msg[41] = scr_gettext("obj_mainend_944")
        global.msg[42] = scr_gettext("obj_mainend_945")
        global.msg[43] = scr_gettext("obj_mainend_946")
        global.msg[44] = scr_gettext("obj_mainend_947")
        global.msg[45] = scr_gettext("obj_mainend_948")
        global.msg[46] = scr_gettext("obj_mainend_949")
        global.msg[47] = scr_gettext("obj_mainend_950")
        global.msg[48] = scr_gettext("obj_mainend_951")
        global.msg[49] = scr_gettext("obj_mainend_952")
        global.msg[50] = scr_gettext("obj_mainend_953")
    }
    instance_create(0, 0, obj_dialoguer)
    con = 43
}
if (con == 43 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 20)
        caster_pause(global.currentsong)
    if (OBJ_WRITER.stringno == 27)
        caster_resume(global.currentsong)
}
if (con == 43 && instance_exists(OBJ_WRITER) == false)
    con = 8
if (con == 51)
{
    global.facechoice = 3
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_mainend_984")
    global.msg[1] = scr_gettext("obj_mainend_985")
    global.msg[2] = scr_gettext("obj_mainend_986")
    global.msg[3] = scr_gettext("obj_mainend_987")
    global.msg[4] = scr_gettext("obj_mainend_988")
    global.msg[5] = scr_gettext("obj_mainend_989")
    global.msg[6] = scr_gettext("obj_mainend_990")
    global.msg[7] = scr_gettext("obj_mainend_991")
    global.msg[8] = scr_gettext("obj_mainend_992")
    global.msg[9] = scr_gettext("obj_mainend_993")
    global.msg[10] = scr_gettext("obj_mainend_994")
    scr_papface(11, 0)
    global.msg[12] = scr_gettext("obj_mainend_996")
    global.msg[13] = scr_gettext("obj_mainend_997")
    global.msg[14] = scr_gettext("obj_mainend_998")
    global.msg[15] = scr_gettext("obj_mainend_999")
    global.msg[16] = scr_gettext("obj_mainend_1000")
    global.msg[17] = scr_gettext("obj_mainend_1001")
    global.msg[18] = scr_gettext("obj_mainend_1002")
    global.msg[19] = scr_gettext("obj_mainend_1003")
    global.msg[20] = scr_gettext("obj_mainend_1004")
    global.msg[21] = scr_gettext("obj_mainend_1005")
    global.msg[22] = scr_gettext("obj_mainend_1006")
    global.msg[23] = scr_gettext("obj_mainend_1007")
    global.msg[24] = scr_gettext("obj_mainend_1008")
    global.msg[25] = scr_gettext("obj_mainend_1009")
    global.msg[26] = scr_gettext("obj_mainend_1010")
    global.msg[27] = scr_gettext("obj_mainend_1011")
    global.msg[28] = scr_gettext("obj_mainend_1012")
    global.msg[29] = scr_gettext("obj_mainend_1013")
    global.msg[30] = scr_gettext("obj_mainend_1014")
    global.msg[31] = scr_gettext("obj_mainend_1015")
    scr_sansface(32, 2)
    global.msg[33] = scr_gettext("obj_mainend_1017")
    scr_papface(34, 0)
    global.msg[35] = scr_gettext("obj_mainend_1019")
    global.msg[36] = scr_gettext("obj_mainend_1020")
    global.msg[37] = scr_gettext("obj_mainend_1021")
    global.msg[38] = scr_gettext("obj_mainend_1022")
    global.msg[39] = scr_gettext("obj_mainend_1023")
    global.msg[40] = scr_gettext("obj_mainend_1024")
    global.msg[41] = scr_gettext("obj_mainend_1025")
    global.msg[42] = scr_gettext("obj_mainend_1026")
    global.msg[43] = scr_gettext("obj_mainend_1027")
    global.msg[44] = scr_gettext("obj_mainend_1028")
    global.msg[45] = scr_gettext("obj_mainend_1029")
    global.msg[46] = scr_gettext("obj_mainend_1030")
    global.msg[47] = scr_gettext("obj_mainend_1031")
    global.msg[48] = scr_gettext("obj_mainend_1032")
    global.msg[49] = scr_gettext("obj_mainend_1033")
    global.msg[50] = scr_gettext("obj_mainend_1034")
    global.msg[51] = scr_gettext("obj_mainend_1035")
    global.msg[52] = scr_gettext("obj_mainend_1036")
    global.msg[53] = scr_gettext("obj_mainend_1037")
    global.msg[54] = scr_gettext("obj_mainend_1038")
    global.msg[55] = scr_gettext("obj_mainend_1039")
    global.msg[56] = scr_gettext("obj_mainend_1040")
    global.msg[57] = scr_gettext("obj_mainend_1041")
    global.msg[58] = scr_gettext("obj_mainend_1042")
    global.msg[59] = scr_gettext("obj_mainend_1043")
    global.msg[60] = scr_gettext("obj_mainend_1044")
    global.msg[61] = scr_gettext("obj_mainend_1045")
    instance_create(0, 0, obj_dialoguer)
    con = 8
}
if (con == 61)
{
    global.facechoice = 3
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_mainend_1055")
    global.msg[1] = scr_gettext("obj_mainend_1056")
    global.msg[2] = scr_gettext("obj_mainend_1057")
    global.msg[3] = scr_gettext("obj_mainend_1058")
    global.msg[4] = scr_gettext("obj_mainend_1059")
    global.msg[5] = scr_gettext("obj_mainend_1060")
    global.msg[6] = scr_gettext("obj_mainend_1061")
    global.msg[7] = scr_gettext("obj_mainend_1062")
    global.msg[8] = scr_gettext("obj_mainend_1063")
    global.msg[9] = scr_gettext("obj_mainend_1064")
    global.msg[10] = scr_gettext("obj_mainend_1065")
    global.msg[11] = scr_gettext("obj_mainend_1066")
    global.msg[12] = scr_gettext("obj_mainend_1067")
    global.msg[13] = scr_gettext("obj_mainend_1068")
    global.msg[14] = scr_gettext("obj_mainend_1069")
    global.msg[15] = scr_gettext("obj_mainend_1070")
    if (global.kills >= 20)
    {
        global.msg[15] = scr_gettext("obj_mainend_1074")
        global.msg[16] = scr_gettext("obj_mainend_1075")
        global.msg[17] = scr_gettext("obj_mainend_1076")
        global.msg[18] = scr_gettext("obj_mainend_1077")
        global.msg[19] = scr_gettext("obj_mainend_1078")
        global.msg[20] = scr_gettext("obj_mainend_1079")
    }
    instance_create(0, 0, obj_dialoguer)
    con = 8
}
if (con == 71)
{
    global.facechoice = 3
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_mainend_1092")
    global.msg[1] = scr_gettext("obj_mainend_1093")
    global.msg[2] = scr_gettext("obj_mainend_1094")
    global.msg[3] = scr_gettext("obj_mainend_1095")
    global.msg[4] = scr_gettext("obj_mainend_1096")
    global.msg[5] = scr_gettext("obj_mainend_1097")
    global.msg[6] = scr_gettext("obj_mainend_1098")
    global.msg[7] = scr_gettext("obj_mainend_1099")
    global.msg[8] = scr_gettext("obj_mainend_1100")
    global.msg[9] = scr_gettext("obj_mainend_1101")
    instance_create(0, 0, obj_dialoguer)
    con = 8
}
if (con == 81)
{
    global.facechoice = 3
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_mainend_1112")
    global.msg[1] = scr_gettext("obj_mainend_1113")
    global.msg[2] = scr_gettext("obj_mainend_1114")
    global.msg[3] = scr_gettext("obj_mainend_1115")
    global.msg[4] = scr_gettext("obj_mainend_1116")
    global.msg[5] = scr_gettext("obj_mainend_1117")
    global.msg[6] = scr_gettext("obj_mainend_1118")
    global.msg[7] = scr_gettext("obj_mainend_1119")
    global.msg[8] = scr_gettext("obj_mainend_1120")
    global.msg[9] = scr_gettext("obj_mainend_1121")
    global.msg[10] = scr_gettext("obj_mainend_1122")
    global.msg[11] = scr_gettext("obj_mainend_1123")
    instance_create(0, 0, obj_dialoguer)
    con = 8
}
if (con == 91)
{
    global.typer = 47
    FL_AlphysExpression = 4
    global.facechoice = 6
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_mainend_1136")
    global.msg[1] = scr_gettext("obj_mainend_1137")
    global.msg[2] = scr_gettext("obj_mainend_1139")
    global.msg[3] = scr_gettext("obj_mainend_1141")
    global.msg[4] = scr_gettext("obj_mainend_1143")
    global.msg[5] = scr_gettext("obj_mainend_1145")
    global.msg[6] = scr_gettext("obj_mainend_1147")
    global.msg[7] = scr_gettext("obj_mainend_1148")
    global.msg[8] = scr_gettext("obj_mainend_1149")
    global.msg[9] = scr_gettext("obj_mainend_1150")
    global.msg[10] = scr_gettext("obj_mainend_1151")
    global.msg[11] = scr_gettext("obj_mainend_1152")
    global.msg[12] = scr_gettext("obj_mainend_1153")
    global.msg[13] = scr_gettext("obj_mainend_1154")
    global.msg[14] = scr_gettext("obj_mainend_1155")
    global.msg[15] = scr_gettext("obj_mainend_1156")
    global.msg[16] = scr_gettext("obj_mainend_1157")
    global.msg[17] = scr_gettext("obj_mainend_1158")
    global.msg[18] = scr_gettext("obj_mainend_1159")
    global.msg[19] = scr_gettext("obj_mainend_1160")
    global.msg[20] = scr_gettext("obj_mainend_1161")
    global.msg[21] = scr_gettext("obj_mainend_1162")
    global.msg[22] = scr_gettext("obj_mainend_1163")
    global.msg[23] = scr_gettext("obj_mainend_1164")
    global.msg[24] = scr_gettext("obj_mainend_1165")
    global.msg[25] = scr_gettext("obj_mainend_1166")
    global.msg[26] = scr_gettext("obj_mainend_1167")
    global.msg[27] = scr_gettext("obj_mainend_1168")
    global.msg[28] = scr_gettext("obj_mainend_1169")
    global.msg[29] = scr_gettext("obj_mainend_1170")
    global.msg[30] = scr_gettext("obj_mainend_1171")
    global.msg[31] = scr_gettext("obj_mainend_1172")
    global.msg[32] = scr_gettext("obj_mainend_1173")
    global.msg[33] = scr_gettext("obj_mainend_1174")
    global.msg[34] = scr_gettext("obj_mainend_1175")
    global.msg[35] = scr_gettext("obj_mainend_1176")
    instance_create(0, 0, obj_dialoguer)
    con = 8
}
