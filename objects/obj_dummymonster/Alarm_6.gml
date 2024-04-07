blcon = instance_create((x + sprite_width), y, obj_blconsm)
mycommand = round(random(100))
if (mycommand >= 0 && mycommand < 100)
    global.msg[0] = scr_gettext("obj_dummymonster_213")
global.msg[1] = scr_gettext("obj_dummymonster_222")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
