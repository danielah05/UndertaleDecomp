if (con == 1)
{
    undyne = scr_marker(150, (view_yview_get(0) - 230), spr_undynedive)
    undyne.image_speed = 0.334
    global.typer = 37
    global.msc = 0
    global.facechoice = 5
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_undynetrigger_boss2_99")
    global.msg[1] = scr_gettext("obj_undynetrigger_boss2_100")
    if (FL_FoughtUndyne == 1)
        global.msg[0] = scr_gettext("obj_undynetrigger_boss2_103")
    instance_create(0, 0, obj_dialoguer)
    con = 2
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
    caster_free(all)
    global.currentsong = caster_load("music/undynefast.ogg")
    alarm[4] = 30
    undyne.vspeed = 8
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_undynetrigger_boss2_116")
    instance_create(0, 0, obj_dialoguer)
    con = 3
}
if (con == 4)
{
    with (obj_savepoint)
        instance_destroy()
    with (OBJ_WRITER)
        instance_destroy()
    with (obj_dialoguer)
        instance_destroy()
    con = 5
    global.border = 12
    global.battlegroup = 47
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    talkedto = 0
    alarm[4] = 2
}
if (con == 6)
{
    with (undyne)
        instance_destroy()
    if (FL_UndyneStatus == UndyneStatus.Spared)
    {
        u = instance_create(160, 620, obj_undynea_chaser)
        alarm[4] = 30
        con = 7
    }
    else
    {
        FL_UnknownBoolean17 = false
        global.plot = 122
    }
}
if (con == 8)
{
    if (FL_UndyneStatus == UndyneStatus.Spared)
        caster_loop(global.currentsong, 1, 1)
    else
        audio_stop_all()
    FL_FoughtUndyne = 1
    instance_destroy()
}
