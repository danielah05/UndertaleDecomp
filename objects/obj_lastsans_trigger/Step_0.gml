if (con == 1)
{
    m = instance_create(0, 0, obj_musfadeout)
    m.fadespeed = 0.03
    remx = view_xview_get(0)
    obj_mainchara.cutscene = true
    view_target_set(0, noone)
    obj_mainchara.x = 800
    con = 0.5
    ss = 0
    alarm[4] = 60
    ossafe_ini_open("undertale.ini")
    sf2 = ini_read_real("Sans", "F", 0)
    ossafe_ini_close()
    if (sf2 >= 3 && murder == 1)
    {
        with (m)
            fadespeed = 0.1
        alarm[4] = 5
    }
}
if (con == 1.5)
    con = 2
if (con == 2)
{
    view_xview_set(0, (view_xview_get(0) + 1))
    if (view_xview_get(0) >= 680 && ss == 0)
    {
        ss = 1
        sans = scr_marker(920, obj_mainchara.y, spr_sans_l_dark)
        sans.depth = 1500
    }
    if (sf2 >= 3 && murder == 1)
        view_xview_set(0, (view_xview_get(0) + 3))
    if (view_xview_get(0) >= 750)
    {
        con = 3
        view_xview_set(0, 750)
    }
}
if (con == 3)
{
    with (m)
        instance_destroy()
    con = 3.1
    alarm[4] = 40
    if (sf2 >= 3 && murder == 1)
        alarm[4] = 10
}
if (con == 4.1)
{
    if (murder == 0)
    {
        ossafe_ini_open("undertale.ini")
        endmet = ini_read_real("Sans", "EndMet", 0)
        ossafe_ini_close()
        if (endmet == 0)
        {
            ch = caster_load("music/churchbell.ogg")
            caster_play(ch, 0.8, 1)
            con = 4
            alarm[4] = 310
        }
        if (endmet == 1)
        {
            ch = caster_load("music/churchbell.ogg")
            caster_play(ch, 0.8, 1.5)
            con = 4
            alarm[4] = (620/3)
        }
    }
    else
        con = 100
}
if (con == 5)
{
    ossafe_ini_open("undertale.ini")
    endmet = ini_read_real("Sans", "EndMet", 0)
    ini_write_real("Sans", "EndMet", 1)
    ml1 = ini_read_real("Sans", "MeetLv1", 0)
    pass = ini_read_real("Sans", "Pass", 0)
    ossafe_ini_close()
    ossafe_savedata_save()
    global.typer = 10
    if (endmet == 1)
        global.typer = 100
    global.msc = 0
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_lastsans_trigger_187")
    global.msg[1] = scr_gettext("obj_lastsans_trigger_188")
    global.msg[2] = scr_gettext("obj_lastsans_trigger_189")
    global.msg[3] = scr_gettext("obj_lastsans_trigger_190")
    global.msg[4] = scr_gettext("obj_lastsans_trigger_191")
    global.msg[5] = scr_gettext("obj_lastsans_trigger_192")
    global.msg[6] = scr_gettext("obj_lastsans_trigger_193")
    global.msg[7] = scr_gettext("obj_lastsans_trigger_194")
    global.msg[8] = scr_gettext("obj_lastsans_trigger_195")
    global.msg[9] = scr_gettext("obj_lastsans_trigger_196")
    global.msg[10] = scr_gettext("obj_lastsans_trigger_197")
    global.msg[11] = scr_gettext("obj_lastsans_trigger_198")
    global.msg[12] = scr_gettext("obj_lastsans_trigger_199")
    global.msg[13] = scr_gettext("obj_lastsans_trigger_200")
    global.msg[14] = scr_gettext("obj_lastsans_trigger_201")
    global.msg[15] = scr_gettext("obj_lastsans_trigger_202")
    global.msg[16] = scr_gettext("obj_lastsans_trigger_203")
    global.msg[17] = scr_gettext("obj_lastsans_trigger_204")
    global.msg[18] = scr_gettext("obj_lastsans_trigger_205")
    global.msg[19] = scr_gettext("obj_lastsans_trigger_206")
    global.msg[20] = scr_gettext("obj_lastsans_trigger_207")
    global.msg[21] = scr_gettext("obj_lastsans_trigger_208")
    con = 6
    if (pass > 0 && global.lv == 1 && global.kills == 0)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_214")
        con = 26
    }
    instance_create(0, 0, obj_dialoguer)
    if (global.kills > 0)
        con = 5.1
}
if (con == 5.1 && instance_exists(OBJ_WRITER) == false)
{
    con = 4.2
    alarm[4] = 30
}
if (con == 5.2 && instance_exists(OBJ_WRITER) == false)
{
    global.currentsong = caster_load("music/chokedup.ogg")
    caster_loop(global.currentsong, 1, 1)
    global.typer = 10
    if (endmet == 1)
        global.typer = 100
    global.msc = 0
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_lastsans_trigger_243")
    global.msg[1] = scr_gettext("obj_lastsans_trigger_244")
    global.msg[2] = scr_gettext("obj_lastsans_trigger_245")
    global.msg[3] = scr_gettext("obj_lastsans_trigger_246")
    global.msg[4] = scr_gettext("obj_lastsans_trigger_247")
    global.msg[5] = scr_gettext("obj_lastsans_trigger_248")
    global.msg[6] = scr_gettext("obj_lastsans_trigger_249")
    instance_create(0, 0, obj_dialoguer)
    con = 10
}
if (con == 6 && instance_exists(OBJ_WRITER) == false)
{
    ossafe_ini_open("undertale.ini")
    ml1 = ini_read_real("Sans", "MeetLv1", 0)
    ini_write_real("Sans", "MeetLv1", (ml1 + 1))
    ossafe_ini_close()
    ossafe_savedata_save()
    global.currentsong = caster_load("music/chokedup.ogg")
    caster_loop(global.currentsong, 1, 1)
    global.facechoice = 3
    global.faceemotion = 3
    global.typer = 10
    global.msg[0] = scr_gettext("obj_lastsans_trigger_268")
    global.msg[1] = scr_gettext("obj_lastsans_trigger_269")
    global.msg[2] = scr_gettext("obj_lastsans_trigger_270")
    global.msg[3] = scr_gettext("obj_lastsans_trigger_271")
    global.msg[4] = scr_gettext("obj_lastsans_trigger_274")
    global.msg[5] = scr_gettext("obj_lastsans_trigger_275")
    global.msg[6] = scr_gettext("obj_lastsans_trigger_276")
    global.msg[7] = scr_gettext("obj_lastsans_trigger_277")
    global.msg[8] = scr_gettext("obj_lastsans_trigger_278")
    global.msg[9] = scr_gettext("obj_lastsans_trigger_279")
    global.msg[10] = scr_gettext("obj_lastsans_trigger_280")
    global.msg[11] = scr_gettext("obj_lastsans_trigger_283")
    global.msg[12] = scr_gettext("obj_lastsans_trigger_284")
    global.msg[13] = scr_gettext("obj_lastsans_trigger_285")
    global.msg[14] = scr_gettext("obj_lastsans_trigger_286")
    global.msg[15] = scr_gettext("obj_lastsans_trigger_287")
    global.msg[16] = scr_gettext("obj_lastsans_trigger_288")
    global.msg[17] = scr_gettext("obj_lastsans_trigger_289")
    global.msg[18] = scr_gettext("obj_lastsans_trigger_290")
    global.msg[19] = scr_gettext("obj_lastsans_trigger_291")
    global.msg[20] = scr_gettext("obj_lastsans_trigger_292")
    global.msg[21] = scr_gettext("obj_lastsans_trigger_293")
    global.msg[22] = scr_gettext("obj_lastsans_trigger_294")
    global.msg[23] = scr_gettext("obj_lastsans_trigger_295")
    global.msg[24] = scr_gettext("obj_lastsans_trigger_296")
    global.msg[25] = scr_gettext("obj_lastsans_trigger_297")
    global.msg[26] = scr_gettext("obj_lastsans_trigger_298")
    global.msg[27] = scr_gettext("obj_lastsans_trigger_299")
    global.msg[28] = scr_gettext("obj_lastsans_trigger_300")
    global.msg[29] = scr_gettext("obj_lastsans_trigger_301")
    global.msg[30] = scr_gettext("obj_lastsans_trigger_302")
    con = 7
    if (ml1 > 0)
        con = 26
    instance_create(0, 0, obj_dialoguer)
}
if (con == 7 && instance_exists(OBJ_WRITER) == false)
{
    view_xview_set(0, (view_xview_get(0) - 1))
    if (view_xview_get(0) < 681)
    {
        with (sans)
            instance_destroy()
    }
    if (view_xview_get(0) <= remx)
        con = 8
}
if (con == 8)
{
    view_target_set(0, obj_mainchara)
    obj_mainchara.cutscene = false
    con = 9
    global.plot = 201
    global.interact = 0
    instance_destroy()
}
if (con == 10 && instance_exists(OBJ_WRITER) == false)
{
    ossafe_ini_open("undertale.ini")
    ml2 = ini_read_real("Sans", "MeetLv2", 0)
    ini_write_real("Sans", "MeetLv2", (ml2 + 1))
    ossafe_ini_close()
    ossafe_savedata_save()
    global.interact = 1
    if (FL_PapyrusStatus == PapyrusStatus.Killed || ml2 == 0)
    {
        con = 11
        alarm[4] = 300
    }
    else
    {
        con = 22
        alarm[4] = 60
    }
}
if (con == 12 && instance_exists(OBJ_WRITER) == false)
{
    global.facechoice = 3
    global.faceemotion = 3
    global.typer = 10
    global.msc = 0
    global.msg[0] = scr_gettext("obj_lastsans_trigger_361")
    global.msg[1] = scr_gettext("obj_lastsans_trigger_362")
    global.msg[2] = scr_gettext("obj_lastsans_trigger_363")
    global.msg[3] = scr_gettext("obj_lastsans_trigger_364")
    global.msg[4] = scr_gettext("obj_lastsans_trigger_365")
    instance_create(0, 0, obj_dialoguer)
    con = 7
    if (FL_PapyrusStatus == PapyrusStatus.Killed)
        con = 15
}
if (con == 15 && instance_exists(OBJ_WRITER) == false)
{
    global.facechoice = 3
    global.faceemotion = 3
    global.typer = 17
    global.msc = 835
    instance_create(0, 0, obj_dialoguer)
    con = 16
}
if (con == 20 && instance_exists(OBJ_WRITER) == false)
{
    global.msc = 0
    global.faceemotion = 4
    global.facechoice = 3
    global.typer = 21
    global.msg[0] = scr_gettext("obj_lastsans_trigger_390")
    instance_create(0, 0, obj_dialoguer)
    caster_free(all)
    con = 7
}
if (con == 21 && instance_exists(OBJ_WRITER) == false)
{
    global.msc = 0
    global.faceemotion = 4
    global.facechoice = 3
    global.typer = 21
    global.msg[0] = scr_gettext("obj_lastsans_trigger_402")
    instance_create(0, 0, obj_dialoguer)
    caster_free(all)
    con = 7
}
if (con == 23 && instance_exists(OBJ_WRITER) == false)
{
    ossafe_ini_open("undertale.ini")
    ml = ini_read_real("Sans", "MeetLv", 0)
    ini_write_real("Sans", "MeetLv", global.lv)
    ossafe_ini_close()
    ossafe_savedata_save()
    global.facechoice = 3
    global.faceemotion = 1
    global.typer = 17
    global.msg[0] = scr_gettext("obj_lastsans_trigger_421")
    global.msg[1] = scr_gettext("obj_lastsans_trigger_422")
    global.msg[2] = scr_gettext("obj_lastsans_trigger_423")
    global.msg[3] = scr_gettext("obj_lastsans_trigger_424")
    if (global.lv == 2)
    {
        global.msg[3] = scr_gettext("obj_lastsans_trigger_428")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_429")
        global.msg[5] = scr_gettext("obj_lastsans_trigger_430")
        global.msg[6] = scr_gettext("obj_lastsans_trigger_431")
        global.msg[7] = scr_gettext("obj_lastsans_trigger_432")
        global.msg[8] = scr_gettext("obj_lastsans_trigger_433")
    }
    if (global.lv == 3)
    {
        global.msg[3] = scr_gettext("obj_lastsans_trigger_437")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_438")
        global.msg[5] = scr_gettext("obj_lastsans_trigger_439")
        global.msg[6] = scr_gettext("obj_lastsans_trigger_440")
    }
    if (global.lv >= 4)
    {
        global.msg[3] = scr_gettext("obj_lastsans_trigger_444")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_445")
        global.msg[5] = scr_gettext("obj_lastsans_trigger_446")
        global.msg[6] = scr_gettext("obj_lastsans_trigger_447")
        global.msg[7] = scr_gettext("obj_lastsans_trigger_448")
        global.msg[8] = scr_gettext("obj_lastsans_trigger_449")
        global.msg[9] = scr_gettext("obj_lastsans_trigger_450")
    }
    if (global.lv >= 10)
    {
        global.msg[3] = scr_gettext("obj_lastsans_trigger_454")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_455")
        global.msg[5] = scr_gettext("obj_lastsans_trigger_456")
        global.msg[6] = scr_gettext("obj_lastsans_trigger_457")
        global.msg[7] = scr_gettext("obj_lastsans_trigger_458")
        global.msg[8] = scr_gettext("obj_lastsans_trigger_459")
        global.msg[9] = scr_gettext("obj_lastsans_trigger_460")
        global.msg[10] = scr_gettext("obj_lastsans_trigger_461")
        global.msg[11] = scr_gettext("obj_lastsans_trigger_462")
    }
    if (global.lv >= 15)
    {
        global.msg[3] = scr_gettext("obj_lastsans_trigger_466")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_467")
        global.msg[5] = scr_gettext("obj_lastsans_trigger_468")
        global.msg[6] = scr_gettext("obj_lastsans_trigger_469")
        global.msg[7] = scr_gettext("obj_lastsans_trigger_470")
        global.msg[8] = scr_gettext("obj_lastsans_trigger_471")
        global.msg[9] = scr_gettext("obj_lastsans_trigger_472")
        global.msg[10] = scr_gettext("obj_lastsans_trigger_473")
        global.msg[11] = scr_gettext("obj_lastsans_trigger_474")
        global.msg[12] = scr_gettext("obj_lastsans_trigger_475")
        global.msg[13] = scr_gettext("obj_lastsans_trigger_476")
        global.msg[14] = scr_gettext("obj_lastsans_trigger_477")
        global.msg[15] = scr_gettext("obj_lastsans_trigger_478")
        global.msg[16] = scr_gettext("obj_lastsans_trigger_479")
    }
    if (global.lv == (ml + 1))
    {
        global.faceemotion = 1
        global.msg[3] = scr_gettext("obj_lastsans_trigger_485")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_486")
        global.msg[5] = scr_gettext("obj_lastsans_trigger_487")
        global.msg[6] = scr_gettext("obj_lastsans_trigger_488")
        global.msg[7] = scr_gettext("obj_lastsans_trigger_489")
        global.msg[8] = scr_gettext("obj_lastsans_trigger_490")
    }
    if (global.lv == ml)
    {
        global.msg[3] = scr_gettext("obj_lastsans_trigger_494")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_495")
    }
    instance_create(0, 0, obj_dialoguer)
    caster_free(all)
    con = 7
}
if (con == 26 && instance_exists(OBJ_WRITER) == false)
{
    ossafe_ini_open("undertale.ini")
    ml1 = ini_read_real("Sans", "MeetLv1", 0)
    ini_write_real("Sans", "MeetLv1", (ml1 + 1))
    pass = ini_read_real("Sans", "Pass", 0)
    ossafe_ini_close()
    ossafe_savedata_save()
    global.facechoice = 3
    global.faceemotion = 1
    global.typer = 17
    global.msg[0] = scr_gettext("obj_lastsans_trigger_513")
    global.msg[1] = scr_gettext("obj_lastsans_trigger_514")
    global.msg[2] = scr_gettext("obj_lastsans_trigger_515")
    global.msg[3] = scr_gettext("obj_lastsans_trigger_516")
    global.msg[4] = scr_gettext("obj_lastsans_trigger_517")
    global.msg[5] = scr_gettext("obj_lastsans_trigger_518")
    global.msg[6] = scr_gettext("obj_lastsans_trigger_519")
    global.msg[7] = scr_gettext("obj_lastsans_trigger_520")
    global.msg[8] = scr_gettext("obj_lastsans_trigger_521")
    global.msg[9] = scr_gettext("obj_lastsans_trigger_522")
    global.msg[10] = scr_gettext("obj_lastsans_trigger_523")
    global.msg[11] = scr_gettext("obj_lastsans_trigger_524")
    global.msg[12] = scr_gettext("obj_lastsans_trigger_525")
    global.msg[13] = scr_gettext("obj_lastsans_trigger_526")
    global.msg[14] = scr_gettext("obj_lastsans_trigger_527")
    global.msg[15] = scr_gettext("obj_lastsans_trigger_528")
    if (pass == 1)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_532")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_533")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_534")
        global.msg[3] = scr_gettext("obj_lastsans_trigger_535")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_536")
        global.msg[5] = scr_gettext("obj_lastsans_trigger_537")
        global.msg[6] = scr_gettext("obj_lastsans_trigger_538")
        global.msg[7] = scr_gettext("obj_lastsans_trigger_539")
        global.msg[8] = scr_gettext("obj_lastsans_trigger_540")
        global.msg[9] = scr_gettext("obj_lastsans_trigger_541")
        global.msg[10] = scr_gettext("obj_lastsans_trigger_542")
        global.msg[11] = scr_gettext("obj_lastsans_trigger_543")
        global.msg[12] = scr_gettext("obj_lastsans_trigger_544")
        global.msg[13] = scr_gettext("obj_lastsans_trigger_545")
        global.msg[14] = scr_gettext("obj_lastsans_trigger_546")
        global.msg[15] = scr_gettext("obj_lastsans_trigger_547")
    }
    if (pass == 2)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_553")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_554")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_555")
        global.msg[3] = scr_gettext("obj_lastsans_trigger_556")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_557")
        global.msg[5] = scr_gettext("obj_lastsans_trigger_558")
        global.msg[6] = scr_gettext("obj_lastsans_trigger_559")
        global.msg[7] = scr_gettext("obj_lastsans_trigger_560")
        global.msg[8] = scr_gettext("obj_lastsans_trigger_561")
        global.msg[9] = scr_gettext("obj_lastsans_trigger_562")
        global.msg[10] = scr_gettext("obj_lastsans_trigger_563")
        global.msg[11] = scr_gettext("obj_lastsans_trigger_564")
        global.msg[12] = scr_gettext("obj_lastsans_trigger_565")
        global.msg[13] = scr_gettext("obj_lastsans_trigger_566")
        global.msg[14] = scr_gettext("obj_lastsans_trigger_567")
        global.msg[15] = scr_gettext("obj_lastsans_trigger_568")
        global.msg[16] = scr_gettext("obj_lastsans_trigger_569")
        global.msg[17] = scr_gettext("obj_lastsans_trigger_570")
        global.msg[18] = scr_gettext("obj_lastsans_trigger_571")
        global.msg[19] = scr_gettext("obj_lastsans_trigger_572")
        FL_GotSansRoomKey = 1
    }
    if (pass == 3)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_578")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_579")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_580")
        global.msg[3] = scr_gettext("obj_lastsans_trigger_581")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_582")
        FL_GotSansRoomKey = 1
    }
    instance_create(0, 0, obj_dialoguer)
    con = 30
}
if (con == 30 && instance_exists(OBJ_WRITER) == true)
{
    if (OBJ_WRITER.stringno == 13 && pass == 0)
    {
        ossafe_ini_open("undertale.ini")
        ini_write_real("Sans", "Pass", 1)
        ossafe_ini_close()
        ossafe_savedata_save()
    }
    if (OBJ_WRITER.stringno == 13 && pass == 1)
    {
        ossafe_ini_open("undertale.ini")
        ini_write_real("Sans", "Pass", 2)
        ossafe_ini_close()
        ossafe_savedata_save()
    }
    if (OBJ_WRITER.stringno == 19 && pass == 2)
    {
        ossafe_ini_open("undertale.ini")
        ini_write_real("Sans", "Pass", 3)
        ossafe_ini_close()
        ossafe_savedata_save()
    }
}
if (con == 30 && instance_exists(OBJ_WRITER) == false)
    con = 7
if (con == 100)
{
    obj_mainchara.visible = false
    mc = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_maincharar)
    mc.depth = obj_mainchara.depth
    mc.image_blend = c_black
    global.msc = 0
    global.facechoice = 3
    global.faceemotion = 0
    global.typer = 17
    ossafe_ini_open("undertale.ini")
    sansf = ini_read_real("Sans", "F", 0)
    sansk = ini_read_real("Sans", "SK", 0)
    ossafe_ini_close()
    global.msg[0] = scr_gettext("obj_lastsans_trigger_634")
    global.msg[1] = scr_gettext("obj_lastsans_trigger_635")
    global.msg[2] = scr_gettext("obj_lastsans_trigger_636")
    global.msg[3] = scr_gettext("obj_lastsans_trigger_637")
    global.msg[4] = scr_gettext("obj_lastsans_trigger_638")
    global.msg[5] = scr_gettext("obj_lastsans_trigger_639")
    con = 101
    if (sansf == 1)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_643")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_644")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_645")
        con = 111
    }
    if (sansf == 2)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_650")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_651")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_652")
        global.msg[3] = scr_gettext("obj_lastsans_trigger_653")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_654")
        con = 111
    }
    if (sansf == 3)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_659")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_660")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_661")
        global.msg[3] = scr_gettext("obj_lastsans_trigger_662")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_663")
        con = 111
    }
    if (sansf == 4)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_668")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_669")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_670")
        global.msg[3] = scr_gettext("obj_lastsans_trigger_671")
        con = 111
    }
    if (sansf == 5)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_676")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_677")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_678")
        global.msg[3] = scr_gettext("obj_lastsans_trigger_679")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_680")
        con = 111
    }
    if (sansf == 6)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_685")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_686")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_687")
        global.msg[3] = scr_gettext("obj_lastsans_trigger_688")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_689")
        con = 111
    }
    if (sansf == 7)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_694")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_695")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_696")
        global.msg[3] = scr_gettext("obj_lastsans_trigger_697")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_698")
        con = 111
    }
    if (sansf == 8)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_703")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_704")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_705")
        global.msg[3] = scr_gettext("obj_lastsans_trigger_706")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_707")
        con = 111
    }
    if (sansf == 9)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_713")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_714")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_715")
        global.msg[3] = scr_gettext("obj_lastsans_trigger_716")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_717")
        con = 111
    }
    if (sansf == 10)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_723")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_724")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_725")
        global.msg[3] = scr_gettext("obj_lastsans_trigger_726")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_727")
        global.msg[5] = scr_gettext("obj_lastsans_trigger_728")
        global.msg[6] = scr_gettext("obj_lastsans_trigger_729")
        con = 111
    }
    if (sansf == 11)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_735")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_736")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_737")
        global.msg[3] = scr_gettext("obj_lastsans_trigger_738")
        global.msg[4] = scr_gettext("obj_lastsans_trigger_739")
        global.msg[5] = scr_gettext("obj_lastsans_trigger_740")
        global.msg[6] = scr_gettext("obj_lastsans_trigger_741")
        con = 111
    }
    if (sansf >= 12)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_747")
        con = 111
    }
    if (sansk > 0)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_752")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_753")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_754")
        global.msg[3] = scr_gettext("obj_lastsans_trigger_755")
    }
    if (sansk > 1)
    {
        global.msg[0] = scr_gettext("obj_lastsans_trigger_759")
        global.msg[1] = scr_gettext("obj_lastsans_trigger_760")
        global.msg[2] = scr_gettext("obj_lastsans_trigger_761")
        global.msg[3] = scr_gettext("obj_lastsans_trigger_762")
    }
    instance_create(0, 0, obj_dialoguer)
}
if (con == 101 && instance_exists(OBJ_WRITER) == false)
{
    mc.image_index = 1
    mc.hspeed = 0.5
    con = 102
    alarm[4] = 10
}
if (con == 103)
{
    mc.hspeed = 0
    mc.image_index = 0
    con = 104
    alarm[4] = 30
}
if (con == 105)
{
    global.msg[0] = scr_gettext("obj_lastsans_trigger_786")
    global.msg[1] = scr_gettext("obj_lastsans_trigger_787")
    global.msg[2] = scr_gettext("obj_lastsans_trigger_788")
    global.msg[3] = scr_gettext("obj_lastsans_trigger_789")
    global.msg[4] = scr_gettext("obj_lastsans_trigger_790")
    global.msg[5] = scr_gettext("obj_lastsans_trigger_791")
    instance_create(0, 0, obj_dialoguer)
    con = 106
}
if (con == 106 && instance_exists(OBJ_WRITER) == false)
{
    mc.image_index = 1
    mc.hspeed = 0.5
    con = 107
    alarm[4] = 10
}
if (con == 108)
{
    mc.hspeed = 0
    mc.image_index = 0
    con = 109
    alarm[4] = 30
}
if (con == 110)
{
    global.msg[0] = scr_gettext("obj_lastsans_trigger_815")
    global.msg[1] = scr_gettext("obj_lastsans_trigger_817")
    global.msg[2] = scr_gettext("obj_lastsans_trigger_818")
    instance_create(0, 0, obj_dialoguer)
    con = 111
}
if (con == 111 && instance_exists(OBJ_WRITER) == false)
{
    global.battlegroup = 95
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    con = 112
    alarm[4] = 32
}
if (con == 113)
{
    with (sans)
        instance_destroy()
    global.interact = 0
    with (obj_mainchara)
        cutscene = false
    view_target_set(0, obj_mainchara)
    with (mc)
        instance_destroy()
    obj_mainchara.visible = true
    instance_destroy()
    return;
}
