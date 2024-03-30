with (blconwd)
    instance_destroy()
global.msg[0] = scr_gettext("obj_crygen3_80")
global.msg[1] = scr_gettext("obj_crygen3_81")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
alarm[3] = 100
