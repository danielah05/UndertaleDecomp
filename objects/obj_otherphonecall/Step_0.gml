if (con == 1)
{
    con = 0.1
    alarm[4] = 30
    snd_play(snd_phone)
}
if (con == 1.1)
{
    global.facechoice = 0
    caster_pause(global.currentsong)
    snd_play(snd_phone)
    global.msc = 0
    global.typer = 5
    global.msg[0] = scr_gettext("obj_otherphonecall_100")
    instance_create(0, 0, obj_dialoguer)
    con = 2
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
    if (type == 1)
    {
        global.typer = 17
        global.msc = 900
    }
    if (type == 2)
    {
        global.typer = 47
        global.msg[0] = scr_gettext("obj_otherphonecall_115")
        global.msg[1] = scr_gettext("obj_otherphonecall_116")
        global.msg[2] = scr_gettext("obj_otherphonecall_117")
        global.msg[3] = scr_gettext("obj_otherphonecall_118")
        global.msg[4] = scr_gettext("obj_otherphonecall_119")
        global.msg[5] = scr_gettext("obj_otherphonecall_120")
        global.msg[6] = scr_gettext("obj_otherphonecall_121")
        global.msg[7] = scr_gettext("obj_otherphonecall_122")
    }
    instance_create(0, 0, obj_dialoguer)
    con = 3
}
if (con == 3 && instance_exists(OBJ_WRITER) == false)
{
    global.msc = 0
    global.typer = 5
    global.msg[0] = scr_gettext("obj_otherphonecall_133")
    instance_create(0, 0, obj_dialoguer)
    con = 4
}
if (con == 4 && instance_exists(OBJ_WRITER) == false)
{
    caster_resume(global.currentsong)
    con = 5
    FL_FunCallOccurred = 1
    global.interact = 0
    instance_destroy()
}
