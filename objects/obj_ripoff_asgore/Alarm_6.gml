blcon = instance_create((x - 50), y, obj_blconsm)
blcon.sprite_index = spr_blconsm2
gg = floor(random(3))
mycommand = round(random(100))
if (talkt == 0)
    global.msg[0] = scr_gettext("obj_ripoff_asgore_216")
if (talkt == 1)
    global.msg[0] = scr_gettext("obj_ripoff_asgore_217")
if (talkt == 2)
    global.msg[0] = scr_gettext("obj_ripoff_asgore_218")
if (talkt == 2)
    talkt = 0
if (talkt == 1)
    talkt = 2
if (talkt == 0)
    talkt = 1
global.msg[1] = scr_gettext("obj_ripoff_asgore_248")
global.typer = 63
blconwd = instance_create((blcon.x + 22), (blcon.y + 10), OBJ_NOMSCWRITER)
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
