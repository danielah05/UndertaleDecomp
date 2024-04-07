if (con == 1)
{
    con = 2
    alarm[4] = 20
}
if (con == 3)
{
    nap.direction = 270
    bl = instance_create((nap.x + 2), (nap.y - 10), obj_cosmeticblcon)
    con = 4
    alarm[4] = 30
}
if (con == 5)
{
    with (bl)
        instance_destroy()
    con = 6
    alarm[4] = 20
}
if (con == 7)
{
    global.msg[0] = scr_gettext("obj_napstablookdate_158")
    global.msg[1] = scr_gettext("obj_napstablookdate_159")
    global.msg[2] = scr_gettext("obj_napstablookdate_160")
    if (FL_NapstablookStatus > NapstablookStatus.Killed)
    {
        global.msg[0] = scr_gettext("obj_napstablookdate_163")
        global.msg[1] = scr_gettext("obj_napstablookdate_164")
        global.msg[2] = scr_gettext("obj_napstablookdate_165")
    }
    FL_NapstablookDateStatus = NapstablookDateStatus.TalkedInHouse
    scr_regulartext()
    con = 8
}
if (con == 8 && instance_exists(OBJ_WRITER) == false)
{
    global.interact = 0
    con = 9
    if (FL_NapstablookStatus <= NapstablookStatus.Killed)
        nap.direction = 90
}
if (con == 11 && instance_exists(OBJ_WRITER) == false)
{
    global.interact = 1
    nap.direction = 180
    con = 12
    alarm[4] = 20
}
if (con == 12)
    global.interact = 1
if (con == 13)
{
    global.msg[0] = scr_gettext("obj_napstablookdate_192")
    global.msg[1] = scr_gettext("obj_napstablookdate_193")
    scr_regulartext()
    con = 14
}
if (con == 14 && instance_exists(OBJ_WRITER) == false)
{
    nap.hspeed = -2
    con = 15
    alarm[4] = 30
}
if (con == 16)
{
    obj_mainchara.vspeed = 3
    obj_mainchara.image_speed = 0.25
    con = 17
    alarm[4] = 10
}
if (con == 18)
{
    obj_mainchara.image_speed = 0
    obj_mainchara.image_index = 0
    obj_mainchara.vspeed = 0
    con = 19
    alarm[4] = 26
}
if (con == 20)
{
    nap.hspeed = 0
    nap.direction = 90
    nap.vspeed = -2
    con = 21
    alarm[4] = 10
}
if (con == 22)
{
    nap.vspeed = 0
    nap.direction = 90
    nap.speed = 0.01
    con = 23
    alarm[4] = 30
}
if (con == 24)
{
    nap.direction = 270
    nap.speed = 0
    alarm[4] = 30
    con = 25
}
if (con == 26)
{
    global.msc = 615
    instance_create(0, 0, obj_dialoguer)
    con = 27
}
if (con == 27 && instance_exists(OBJ_WRITER) == false)
{
    con = 28
    alarm[4] = 90
}
if (con == 29)
{
    global.msc = 617
    instance_create(0, 0, obj_dialoguer)
    con = 30
}
if (con == 30 && instance_exists(OBJ_WRITER) == false)
{
    with (nap)
    {
        move_towards_point(220, 100, 4)
        sprite_index = rsprite
    }
    with (obj_mainchara)
    {
        move_towards_point(120, 100, 2)
        sprite_index = rsprite
        image_speed = 0.25
    }
    con = 31
    alarm[4] = 20
}
if (con == 32)
{
    nap.speed = 0
    obj_mainchara.x = round(obj_mainchara.x)
    obj_mainchara.y = round(obj_mainchara.y)
    obj_mainchara.speed = 0
    obj_mainchara.image_speed = 0
    obj_mainchara.image_index = 0
    con = 33
    alarm[4] = 30
}
if (con == 34)
{
    nap.direction = 180
    con = 35
    alarm[4] = 15
}
if (con == 36)
{
    nap.sprite_index = spr_napstablook_grsm_headphones
    nap.y += 20
    nap.fun = true
    obj_mainchara.visible = false
    mc = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_maincharar_liedown)
    con = 37
    alarm[4] = 30
}
if (con == 38)
{
    global.msg[0] = scr_gettext("obj_napstablookdate_312")
    global.msg[1] = scr_gettext("obj_napstablookdate_313")
    scr_regulartext()
    con = 39
    buffer = 10
}
if (con == 39 && instance_exists(OBJ_WRITER) == false)
{
    get_mcx = obj_mainchara.x
    get_mcy = obj_mainchara.y
    alarm[6] = 230
    alarm[5] = 300
    con = 40
}
if (con == 40)
{
    buffer -= 1
    global.interact = 1
    if (buffer < 1)
        global.interact = 0
    FL_UnknownBoolean17 = true
    if (obj_mainchara.x != get_mcx || (obj_mainchara.y != get_mcy && buffer < 1))
    {
        if (alarm[6] >= 1)
            alarm[6] = -1
        FL_ExperienceCosmicGarbage = 1
        FL_UnknownBoolean17 = false
        global.interact = 1
        obj_mainchara.x = mc.x
        obj_mainchara.y = mc.y
        obj_mainchara.visible = true
        with (mc)
            instance_destroy()
        con = 40
        if (wavein == 0)
        {
            alarm[5] = -1
            con = 41
            alarm[4] = 30
        }
        if (wavein > 0)
        {
            event_user(1)
            con = 41
            alarm[4] = 90
        }
    }
}
if (con == 42)
{
    nap.fun = false
    nap.sprite_index = nap.lsprite
    nap.y -= 20
    global.msg[0] = scr_gettext("obj_napstablookdate_356")
    scr_regulartext()
    con = 44
}
if (con == 44 && instance_exists(OBJ_WRITER) == false)
{
    con = 45
    with (obj_napstablook_cd)
        buffer = 240
    global.interact = 0
    FL_NapstablookDateStatus = NapstablookDateStatus.LayedDown
}
if (con == 80)
{
    nap.vspeed = 2
    nap.direction = 270
    con = 81
    alarm[4] = 10
}
if (con == 82)
{
    nap.vspeed = 0
    nap.hspeed = 2
    con = 85
    alarm[4] = 150
}
if (con == 86 && instance_exists(OBJ_WRITER) == false)
{
    with (nap)
        instance_destroy()
    con = 87
    global.interact = 0
}
if (wavein == 1 || wavein == 2)
{
    wavein = 2
    waver.image_alpha += 0.005
    if (waver.image_alpha >= 1)
    {
        waver.image_alpha = 1
        wavein = 2.1
    }
    global.screen_border_alpha = (1 - waver.image_alpha)
}
if (wavein == 3)
{
    waver.image_alpha -= 0.005
    if (waver.image_alpha <= 0)
        waver.image_alpha = 0
    global.screen_border_alpha = (1 - waver.image_alpha)
    if (waver.image_alpha <= 0 && obj_napstablookdate_music.songplaying == 0)
    {
        wavein = 0
        with (waver)
            instance_destroy()
        with (obj_napstablookdate_music)
            event_user(7)
    }
}
