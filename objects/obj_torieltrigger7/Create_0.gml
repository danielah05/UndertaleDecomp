image_xscale = 50
conversation = 0
if (global.plot > 18)
    instance_destroy()
else
{
    with (obj_mainchara)
    {
        x = 38
        y = 144
    }
    global.typer = 4
    global.interact = 99
    global.facechoice = 1
    global.faceemotion = 0
    global.msc = 0
    alarm[0] = 1
    alarm[3] = 3
    global.msg[0] = scr_gettext("obj_torieltrigger7_41")
    instance_create(0, 0, obj_dialoguer)
    conversation = 1
}
volume = 1
fademusicout = 0
tiddywinkle = 0
ruff = 2
