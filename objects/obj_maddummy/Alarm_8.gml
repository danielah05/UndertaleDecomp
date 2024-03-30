if (con == 3)
    con = 4
if (con == 1)
{
    global.typer = 33
    global.msg[0] = scr_gettext("obj_maddummy_319")
    global.msg[1] = scr_gettext("obj_maddummy_320")
    global.msg[2] = scr_gettext("obj_maddummy_321")
    blcon = instance_create((xstart + 100), ystart, obj_blconwdflowey)
    blconwdS = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
    hurtsies = 0
    con = 2
}
