if (con == 1)
    global.interact = 1
if (con == 2)
{
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 3
    global.msc = 0
    global.msg[0] = scr_gettext("obj_treadmill_event_103")
    global.msg[1] = scr_gettext("obj_treadmill_event_104")
    global.msg[2] = scr_gettext("obj_treadmill_event_105")
    global.msg[3] = scr_gettext("obj_treadmill_event_106")
    global.msg[4] = scr_gettext("obj_treadmill_event_107")
    global.msg[5] = scr_gettext("obj_treadmill_event_108")
    global.msg[6] = scr_gettext("obj_treadmill_event_109")
    global.msg[7] = scr_gettext("obj_treadmill_event_110")
    global.msg[8] = scr_gettext("obj_treadmill_event_111")
    global.msg[9] = scr_gettext("obj_treadmill_event_112")
    global.msg[10] = scr_gettext("obj_treadmill_event_113")
    mc.sprite_index = spr_maincharad
    d = instance_create(0, 0, obj_dialoguer)
    d.side = 0
    con = 3
}
if (con == 3 && instance_exists(OBJ_WRITER) == false)
{
    pap.vspeed = 5
    pap.sprite_index = spr_papyrus_d
    pap.image_speed = 0.5
    con = 4
    alarm[4] = 30
}
if (con == 5)
{
    mc.image_speed = 0.25
    mc.y += 2
    if (mc.y >= obj_mainchara.y)
    {
        obj_mainchara.visible = true
        with (mc)
            instance_destroy()
        con = 6
        global.interact = 0
        if (FL_TruePacifist == false)
            global.currentsong = caster_load("music/muscle.ogg")
        else
            global.currentsong = caster_load("music/reunited.ogg")
        caster_loop(global.currentsong, 1, 1)
    }
}
