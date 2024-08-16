if (conversation == 1)
{
    fade = instance_create(0, 0, obj_musfadeout)
    fade.fadespeed = 0.5
    myinteract = 3
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 0
    global.interact = 1
    global.msg[0] = scr_gettext("obj_papyrus1_407")
    if (murder == 1)
    {
        global.faceemotion = 2
        global.msg[0] = scr_gettext("obj_papyrus1_411")
        global.msg[1] = scr_gettext("obj_papyrus1_412")
        global.msg[2] = scr_gettext("obj_papyrus1_413")
        scr_sansface(3, 1)
        global.msg[4] = scr_gettext("obj_papyrus1_415")
        scr_papface(5, 2)
        global.msg[6] = scr_gettext("obj_papyrus1_417")
        scr_sansface(7, 0)
        global.msg[8] = scr_gettext("obj_papyrus1_419")
        global.msg[9] = scr_gettext("obj_papyrus1_420")
    }
    global.currentsong = caster_load("music/papyrus.ogg")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 2
}
if (conversation == 2 && instance_exists(OBJ_WRITER) == false)
{
    caster_loop(global.currentsong, 0.6, 1)
    conversation = 3
    papyrus.sprite_index = papyrus.lsprite
    xxblcon = instance_create((papyrus.x + 3), (papyrus.y - 12), obj_cosmeticblcon)
    alarm[0] = 50
}
if (conversation == 5)
{
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 0
    global.interact = 1
    global.msg[0] = scr_gettext("obj_papyrus1_443")
    global.msg[1] = scr_gettext("obj_papyrus1_444")
    ossafe_ini_open("undertale.ini")
    M1 = ini_read_real("Papyrus", "M1", 0)
    ini_write_real("Papyrus", "M1", (M1 + 1))
    ossafe_ini_close()
    ossafe_savedata_save()
    if (M1 > 0)
    {
        global.msg[0] = scr_gettext("obj_papyrus1_453")
        global.msg[1] = scr_gettext("obj_papyrus1_454")
        global.msg[2] = scr_gettext("obj_papyrus1_455")
    }
    if (murder == 1)
    {
        global.msg[0] = scr_gettext("obj_papyrus1_459")
        global.msg[1] = scr_gettext("obj_papyrus1_460")
        scr_sansface(2, 1)
        global.msg[3] = scr_gettext("obj_papyrus1_462")
    }
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 6
}
if (conversation == 6 && instance_exists(OBJ_WRITER) == false)
{
    papyrus.sprite_index = papyrus.lsprite
    sans.sprite_index = sans.lsprite
    obj_mainchara.cutscene = true
    view_target_set(0, noone)
    alarm[3] = 30
    conversation = 7
}
if (conversation == 8)
{
    view_xview_set(0, (view_xview_get(0) - 1))
    if (view_xview_get(0) <= -40)
    {
        view_xview_set(0, -40)
        conversation = 9
        alarm[3] = 30
    }
}
if (conversation == 10)
{
    global.msc = 0
    global.typer = 17
    global.facechoice = 3
    global.faceemotion = 0
    sans.sprite_index = sans.dtsprite
    global.msg[0] = scr_gettext("obj_papyrus1_496")
    global.msg[1] = scr_gettext("obj_papyrus1_497")
    if (M1 > 0)
    {
        global.msg[0] = scr_gettext("obj_papyrus1_500")
        global.msg[1] = scr_gettext("obj_papyrus1_501")
    }
    if (murder == 1)
    {
        global.facechoice = 4
        global.faceemotion = 0
        global.typer = 19
        global.msg[0] = scr_gettext("obj_papyrus1_509")
    }
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 11
}
if (conversation == 11 && instance_exists(OBJ_WRITER) == false)
{
    view_xview_set(0, (view_xview_get(0) + 4))
    if (view_xview_get(0) >= 0)
    {
        view_xview_set(0, 0)
        conversation = 12
    }
}
if (conversation == 12)
{
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 3
    papyrus.sprite_index = papyrus.utsprite
    global.msg[0] = scr_gettext("obj_papyrus1_532")
    if (murder == 1)
        global.msg[0] = scr_gettext("obj_papyrus1_534")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 13
	show_textbox = 1
}
if (conversation == 13 && instance_exists(OBJ_WRITER) == false)
{
    obj_mainchara.cutscene = false
    view_target_set(0, obj_mainchara)
    global.typer = 17
    global.facechoice = 3
    global.faceemotion = 0
    sans.sprite_index = sans.ltsprite
    global.msg[0] = scr_gettext("obj_papyrus1_547")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 14
}
if (conversation == 14 && instance_exists(OBJ_WRITER) == false)
{
    show_textbox = 0
	xxblcon = instance_create((papyrus.x + 3), (papyrus.y - 12), obj_cosmeticblcon)
    sans.sprite_index = sans.dtsprite
    papyrus.sprite_index = papyrus.ltsprite
    conversation = 15
    alarm[3] = 30
}
if (conversation == 16)
{
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_papyrus1_567")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 17
	show_textbox = 1
}
if (conversation == 17 && instance_exists(OBJ_WRITER) == false)
{
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 0
    papyrus.sprite_index = papyrus.utsprite
    global.msg[0] = scr_gettext("obj_papyrus1_579")
    if (murder == 1)
        global.msg[0] = scr_gettext("obj_papyrus1_581")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 18
}
if (conversation == 18 && instance_exists(OBJ_WRITER) == false)
{
    global.msc = 0
    global.typer = 17
    global.facechoice = 3
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_papyrus1_592")
    if (murder == 1)
        global.msg[0] = scr_gettext("obj_papyrus1_594")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 19
}
if (conversation == 19 && instance_exists(OBJ_WRITER) == false)
{
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 0
    sans.sprite_index = sans.ltsprite
    papyrus.sprite_index = papyrus.ltsprite
    global.msg[0] = scr_gettext("obj_papyrus1_607")
    global.msg[1] = scr_gettext("obj_papyrus1_608")
    global.msg[2] = scr_gettext("obj_papyrus1_609")
    global.msg[3] = scr_gettext("obj_papyrus1_610")
    global.msg[4] = scr_gettext("obj_papyrus1_611")
    global.msg[5] = scr_gettext("obj_papyrus1_612")
    global.msg[6] = scr_gettext("obj_papyrus1_613")
    global.msg[7] = scr_gettext("obj_papyrus1_614")
    global.msg[8] = scr_gettext("obj_papyrus1_615")
    global.msg[9] = scr_gettext("obj_papyrus1_616")
    global.msg[10] = scr_gettext("obj_papyrus1_617")
    global.msg[11] = scr_gettext("obj_papyrus1_618")
    global.msg[12] = scr_gettext("obj_papyrus1_619")
    global.msg[13] = scr_gettext("obj_papyrus1_620")
    global.msg[14] = scr_gettext("obj_papyrus1_621")
    if (murder == 1)
    {
        global.msg[0] = scr_gettext("obj_papyrus1_624")
        global.msg[1] = scr_gettext("obj_papyrus1_625")
        global.msg[2] = scr_gettext("obj_papyrus1_626")
        global.msg[3] = scr_gettext("obj_papyrus1_627")
        global.msg[4] = scr_gettext("obj_papyrus1_628")
        global.msg[5] = scr_gettext("obj_papyrus1_629")
        global.msg[6] = scr_gettext("obj_papyrus1_630")
        global.msg[7] = scr_gettext("obj_papyrus1_631")
        global.msg[8] = scr_gettext("obj_papyrus1_632")
    }
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 20
}
if (conversation == 20 && instance_exists(OBJ_WRITER) == false)
{
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 0
    sans.sprite_index = sans.dtsprite
    papyrus.sprite_index = papyrus.rsprite
    papyrus.hspeed = 5
    global.msg[0] = scr_gettext("obj_papyrus1_647")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 21
}
if (conversation == 21 && instance_exists(OBJ_WRITER) == false)
{
    show_textbox = 0
	alarm[3] = 30
    ppp = instance_create(0, 0, obj_musfadeout)
    ppp.fadespeed = 0.04
    sans.sprite_index = sans.rsprite
    conversation = 22
}
if (conversation == 22)
{
    sans.sprite_index = sans.ltsprite
    global.typer = 17
    global.facechoice = 3
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_papyrus1_667")
    global.msg[1] = scr_gettext("obj_papyrus1_668")
    global.msg[2] = scr_gettext("obj_papyrus1_669")
    if (scr_murderlv() >= 2)
        global.msg[0] = scr_gettext("obj_papyrus1_672")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 23
}
if (conversation == 23 && instance_exists(OBJ_WRITER) == false)
{
    alarm[3] = 30
    sans.sprite_index = sans.rsprite
    sans.hspeed = 3
    conversation = 24
}
if (conversation == 25)
{
    global.currentsong = caster_load("music/snowy.ogg")
    caster_loop(global.currentsong, 1, 0.95)
    if (murder == 1)
        caster_set_pitch(global.currentsong, 0.4)
    global.plot = 40
    global.interact = 0
    scr_tempsave()
    with (sans)
        instance_destroy()
    with (papyrus)
        instance_destroy()
    instance_destroy()
}
// Daniela: dont know the point of this yet, wanna look into it later
if show_textbox
{
    if (!instance_exists(obj_xbox_temp_dialoguer))
    {
        if instance_exists(obj_dialoguer)
        {
            var temp_yy = __view_get((1 << 0), view_current)
            temp_dialoguer = instance_create(0, 0, obj_xbox_temp_dialoguer)
            temp_dialoguer.side = obj_dialoguer.side
            temp_dialoguer.depth = (obj_dialoguer.depth + 10)
        }
    }
}
else if instance_exists(obj_xbox_temp_dialoguer)
    instance_destroy(obj_xbox_temp_dialoguer)
