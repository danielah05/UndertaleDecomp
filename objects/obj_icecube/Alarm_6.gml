blcon = instance_create(((x + sprite_width) - 8), (ystart + 50), obj_blconsm)
mycommand = round(random(100))
gg = floor(random(3))
if (mycommand >= 0 && mycommand < 25)
    global.msg[0] = scr_gettext("obj_icecube_174")
if (mycommand >= 25 && mycommand < 50)
    global.msg[0] = scr_gettext("obj_icecube_175")
if (mycommand >= 50 && mycommand < 75)
    global.msg[0] = scr_gettext("obj_icecube_176")
if (mycommand >= 75 && mycommand <= 101)
    global.msg[0] = scr_gettext("obj_icecube_177")
if (happy == 1)
{
    if (mycommand >= 0 && mycommand < 25)
        global.msg[0] = scr_gettext("obj_icecube_181")
    if (mycommand >= 25 && mycommand < 50)
        global.msg[0] = scr_gettext("obj_icecube_182")
    if (mycommand >= 50 && mycommand < 75)
        global.msg[0] = scr_gettext("obj_icecube_183")
    if (mycommand >= 75 && mycommand <= 101)
        global.msg[0] = scr_gettext("obj_icecube_184")
}
if (whatiheard == 20)
{
    if (gg == 0)
        global.msg[0] = scr_gettext("obj_icecube_188")
    if (gg == 1)
        global.msg[0] = scr_gettext("obj_icecube_189")
    if (gg == 2)
        global.msg[0] = scr_gettext("obj_icecube_190")
    mercymod = 200
}
global.msg[1] = scr_gettext("obj_icecube_196")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 3
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
