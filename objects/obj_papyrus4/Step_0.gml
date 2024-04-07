if (conversation == 1)
{
    fade = instance_create(0, 0, obj_musfadeout)
    fade.fadespeed = 0.5
    global.currentsong = caster_load("music/papyrus.ogg")
    caster_loop(global.currentsong, 0.6, 1)
    myinteract = 3
    global.msc = 0
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 1
    global.interact = 1
    papyrus.sprite_index = papyrus.ltsprite
    sans.sprite_index = sans.ltsprite
    conversation = 2
}
if (conversation == 2 && instance_exists(OBJ_WRITER) == false)
{
    conversation = 3
    xxblcon = instance_create((papyrus.x + 3), (papyrus.y - 12), obj_cosmeticblcon)
    alarm[0] = 30
    alarm[4] = 40
}
if (conversation == 4)
{
    global.msc = 243
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 0
    global.interact = 1
    conversation = 6
    if (murder == 1)
    {
        obj_mainchara.visible = false
        mc = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_maincharar)
        conversation = 120
        alarm[4] = -1
        alarm[0] = -1
        global.msc = 0
        global.msg[0] = scr_gettext("obj_papyrus4_209")
        global.msg[1] = scr_gettext("obj_papyrus4_210")
        global.msg[2] = scr_gettext("obj_papyrus4_211")
        global.msg[3] = scr_gettext("obj_papyrus4_212")
    }
    mydialoguer = instance_create(0, 0, obj_dialoguer)
}
if (conversation == 6 && instance_exists(OBJ_WRITER) == false)
{
    papyrus.fun = true
    papyrus.image_speed = 0.2
    papyrus.sprite_index = papyrus.usprite
    sans.sprite_index = sans.ltsprite
    obj_mainchara.cutscene = true
    view_target_set(0, noone)
    conversation = 7
    x = 220
    global.interact = 0
    solid = 0
}
if (conversation == 50 && instance_exists(OBJ_WRITER) == false)
{
    obj_specialtile.alarm[0] = 2
    conversation = 51
    papyrus.sprite_index = papyrus.usprite
    papyrus.fun = true
    papyrus.image_speed = 0.2
    alarm[4] = 60
    caster_set_volume(global.currentsong, 0.3)
    caster_loop(computersound, 0.6, 0.1)
}
if (conversation == 52)
{
    papyrus.sprite_index = papyrus.lsprite
    papyrus.image_speed = 0
    if (obj_specialtile.randofactor == -1)
    {
        for (i = 0; i < 4; i += 1)
        {
            instance_create((80 + (i * 40)), 80, obj_solidwide)
            instance_create((80 + (i * 40)), 100, obj_solidwide)
            instance_create((80 + (i * 40)), 160, obj_solidwide)
            instance_create((80 + (i * 40)), 180, obj_solidwide)
        }
        caster_free(global.currentsong)
        caster_free(computersound)
        alarm[4] = 110
        conversation = 53
    }
}
if (conversation == 54)
{
    sans.sprite_index = sans.usprite
    papyrus.sprite_index = spr_papyrus_spin
    papyrus.image_speed = 0.2
    papyrus.vspeed = 1
    alarm[4] = 10
    conversation = 55
}
if (conversation == 56)
{
    sans.fun = true
    sans.image_speed = 0.25
    sans.vspeed = 2
    sans.sprite_index = spr_sans_u
    conversation = 57
    alarm[4] = 10
}
if (conversation == 58)
{
    sans.vspeed = 0
    sans.image_speed = 0
    alarm[4] = 20
    conversation = 59
}
if (conversation == 60)
{
    papyrus.vspeed = 0
    papyrus.hspeed = 1
    if (papyrus.sprite_index == papyrus.dsprite)
    {
        papyrus.sprite_index = papyrus.rsprite
        dddd = instance_create(0, 0, obj_musfadeout)
        dddd.fadespeed = 0.05
    }
    alarm[4] = 100
    conversation = 61
}
if (conversation == 62)
    conversation = 63
if (conversation == 80 && instance_exists(OBJ_WRITER) == false)
{
    instance_create((papyrus.x + 10), (papyrus.y + 20), obj_spagnot)
    with (obj_spagnot)
        scr_depth()
    papyrus.sprite_index = papyrus.utsprite
    alarm[4] = 30
    conversation = 81
}
if (conversation == 82)
{
    sans.sprite_index = sans.usprite
    papyrus.fun = false
    papyrus.sprite_index = papyrus.dsprite
    papyrus.image_speed = 0.2
    papyrus.vspeed = 1
    alarm[4] = 10
    conversation = 55
}
if (conversation == 99 && instance_exists(OBJ_WRITER) == false)
    conversation = 22
if (conversation == 22)
{
    global.interact = 1
    global.msc = 228
    global.faceemotion = 1
    global.facechoice = 4
    global.typer = 19
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 23
}
if (conversation == 23 && instance_exists(OBJ_WRITER) == false)
{
    papyrus.hspeed = 5
    papyrus.fun = true
    papyrus.sprite_index = papyrus.rsprite
    papyrus.image_speed = 0.25
    hhh = instance_create(0, 0, obj_musfadeout)
    hhh.fadespeed = 0.05
    alarm[1] = 30
    conversation = 24
}
if (conversation == 63)
{
    global.currentsong = caster_load("music/snowy.ogg")
    caster_loop(global.currentsong, 1, 0.95)
    global.plot = 58
    global.interact = 0
    instance_create(sans.x, sans.y, obj_sans_room)
    with (sans)
        instance_destroy()
    with (papyrus)
        instance_destroy()
    instance_destroy()
}
if (conversation == 120 && instance_exists(OBJ_WRITER) == true)
{
    global.facing = Direction.Right
    if (OBJ_WRITER.stringno == 2)
    {
        obj_mainchara.visible = false
        mc.hspeed = 3
        mc.image_speed = 0.25
    }
    if (mc.x > (mc.xstart + 90))
    {
        mc.x = (mc.xstart + 93)
        mc.image_speed = 0
    }
}
if (conversation == 120 && instance_exists(OBJ_WRITER) == false)
{
    global.facing = Direction.Right
    if (mc.x > (mc.xstart + 90))
    {
        mc.x = (mc.xstart + 93)
        mc.image_speed = 0
        obj_mainchara.x = mc.x
        obj_mainchara.visible = true
        with (mc)
            instance_destroy()
        global.msc = 0
        global.msg[0] = scr_gettext("obj_papyrus4_405")
        global.msg[1] = scr_gettext("obj_papyrus4_406")
        global.msg[2] = scr_gettext("obj_papyrus4_407")
        global.msg[3] = scr_gettext("obj_papyrus4_408")
        global.msg[4] = scr_gettext("obj_papyrus4_409")
        scr_sansface(5, 0)
        global.msg[6] = scr_gettext("obj_papyrus4_411")
        scr_papface(7, 4)
        global.msg[8] = scr_gettext("obj_papyrus4_413")
        scr_sansface(9, 0)
        global.msg[10] = scr_gettext("obj_papyrus4_415")
        scr_papface(11, 0)
        global.msg[12] = scr_gettext("obj_papyrus4_417")
        scr_sansface(13, 1)
        global.msg[14] = scr_gettext("obj_papyrus4_419")
        scr_papface(15, 1)
        global.msg[16] = scr_gettext("obj_papyrus4_421")
        global.msg[17] = scr_gettext("obj_papyrus4_422")
        global.msg[18] = scr_gettext("obj_papyrus4_423")
        global.msg[19] = scr_gettext("obj_papyrus4_424")
        global.msg[20] = scr_gettext("obj_papyrus4_425")
        global.msg[21] = scr_gettext("obj_papyrus4_426")
        global.msg[22] = scr_gettext("obj_papyrus4_427")
        global.msg[23] = scr_gettext("obj_papyrus4_428")
        global.msg[24] = scr_gettext("obj_papyrus4_429")
        global.msg[25] = scr_gettext("obj_papyrus4_430")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        conversation = 80
    }
}
