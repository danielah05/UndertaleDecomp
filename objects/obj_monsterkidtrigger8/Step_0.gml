if (con == 1)
{
    global.interact = 1
    alarm[4] = 25
    con = 2
}
if (con == 3)
{
    global.msg[0] = scr_gettext("obj_monsterkidtrigger8_85")
    global.msg[1] = scr_gettext("obj_monsterkidtrigger8_86")
    global.msg[2] = scr_gettext("obj_monsterkidtrigger8_87")
    global.msg[3] = scr_gettext("obj_monsterkidtrigger8_88")
    global.msg[4] = scr_gettext("obj_monsterkidtrigger8_89")
    global.msg[5] = scr_gettext("obj_monsterkidtrigger8_90")
    scr_regulartext()
    con = 4
}
if (con == 4 && instance_exists(OBJ_WRITER) == false)
{
    con = 5
    global.plot = 120
    global.interact = 0
    instance_destroy()
}
