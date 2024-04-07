instance_create(146, 260, obj_toroverworld1)
global.msc = 201
global.typer = 4
global.interact = 1
global.facechoice = 1
conversation = 3
if (faketor == 1)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_floweytrigger_122")
    global.msg[1] = scr_gettext("obj_floweytrigger_123")
    global.msg[2] = scr_gettext("obj_floweytrigger_124")
    global.msg[3] = scr_gettext("obj_floweytrigger_125")
    global.msg[4] = scr_gettext("obj_floweytrigger_126")
    global.msg[5] = scr_gettext("obj_floweytrigger_127")
    global.msg[6] = scr_gettext("obj_floweytrigger_128")
    global.msg[7] = scr_gettext("obj_floweytrigger_129")
    with (temptor)
        instance_destroy()
}
instance_create(0, 0, obj_dialoguer)
