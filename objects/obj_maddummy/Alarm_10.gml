if (con2 == 0)
{
    next = 0
    con2 = 1
    talko = 3
    global.typer = 33
    global.msg[0] = scr_gettext("obj_maddummy_259")
    global.msg[1] = scr_gettext("obj_maddummy_260")
    global.msg[2] = scr_gettext("obj_maddummy_261")
    global.msg[3] = scr_gettext("obj_maddummy_262")
    blcon = instance_create((xstart + 100), ystart, obj_blconwdflowey)
    blconwdS = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
}
