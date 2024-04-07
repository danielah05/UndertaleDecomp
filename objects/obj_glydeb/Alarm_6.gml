blcon = instance_create((x + 220), y, obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = scr_gettext("obj_glydeb_148")
if (mycommand < 75)
    global.msg[0] = scr_gettext("obj_glydeb_149")
if (mycommand < 50)
    global.msg[0] = scr_gettext("obj_glydeb_150")
if (mycommand < 25)
    global.msg[0] = scr_gettext("obj_glydeb_151")
if (whatiheard == 1)
{
    if (boo >= 2)
        global.msg[0] = scr_gettext("obj_glydeb_160")
    else
        global.msg[0] = scr_gettext("obj_glydeb_159")
}
if (whatiheard == 3)
{
    global.msg[0] = scr_gettext("obj_glydeb_165")
    if (applaud >= 2)
        global.msg[0] = scr_gettext("obj_glydeb_168")
}
if (whatiheard == 4)
{
    global.msg[0] = scr_gettext("obj_glydeb_174")
    if (nothing == 1)
        global.msg[0] = scr_gettext("obj_glydeb_175")
    if (nothing == 2)
        global.msg[0] = scr_gettext("obj_glydeb_176")
}
global.msg[1] = scr_gettext("obj_glydeb_181")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 3
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
