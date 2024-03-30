global.border = 0
with (obj_pbflame)
    instance_destroy()
if (FL_TorielStatus == TorielStatus.Fight)
{
    caster_stop(global.currentsong)
    caster_loop(global.currentsong, 0.5, 0.3)
    obj_mainchara.y += 8
    global.interact = 2
    global.typer = 4
    global.msc = 0
    global.facechoice = 1
    global.msg[0] = scr_gettext("obj_torieltrigger12_149")
    global.msg[1] = scr_gettext("obj_torieltrigger12_150")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 9
    global.mercy = 0
    global.seriousbattle = 0
    global.border = 0
}
if (FL_TorielStatus == TorielStatus.Killed)
{
    global.mercy = 0
    global.seriousbattle = 0
    global.border = 0
    with (obj_toroverworld3)
        instance_destroy()
    global.plot = 25
    instance_destroy()
}
if (FL_TorielStatus == TorielStatus.Spared)
{
    global.mercy = 0
    global.seriousbattle = 0
    global.border = 0
    obj_mainchara.x = (obj_toroverworld3.x + 6)
    obj_mainchara.y = (obj_toroverworld3.y + 36)
    obj_toroverworld3.direction = 270
    caster_stop(global.currentsong)
    global.currentsong = caster_load("music/toriel.ogg")
    caster_loop(global.currentsong, 0.8, 0.75)
    global.msc = 0
    global.typer = 4
    global.facechoice = 1
    global.msg[0] = scr_gettext("obj_torieltrigger12_183")
    global.msg[1] = scr_gettext("obj_torieltrigger12_184")
    global.msg[2] = scr_gettext("obj_torieltrigger12_185")
    global.msg[3] = scr_gettext("obj_torieltrigger12_186")
    global.msg[4] = scr_gettext("obj_torieltrigger12_187")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 6
    global.interact = 2
}
global.mercy = 0
