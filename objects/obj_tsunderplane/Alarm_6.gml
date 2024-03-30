blcon = instance_create((x + 155), (y - 25), obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
if (mycommand >= 0 && mycommand < 25)
    global.msg[0] = scr_gettext("obj_tsunderplane_235")
if (mycommand >= 25)
    global.msg[0] = scr_gettext("obj_tsunderplane_236")
if (mycommand >= 50)
    global.msg[0] = scr_gettext("obj_tsunderplane_237")
if (mycommand >= 75)
    global.msg[0] = scr_gettext("obj_tsunderplane_238")
if (graze >= 5)
{
    if (mycommand >= 0 && mycommand < 50)
        global.msg[0] = scr_gettext("obj_tsunderplane_242")
    if (mycommand >= 50)
        global.msg[0] = scr_gettext("obj_tsunderplane_243")
}
if (whatiheard == 1)
{
    global.msg[0] = scr_gettext("obj_tsunderplane_250")
    if (graze >= 5)
        global.msg[0] = scr_gettext("obj_tsunderplane_251")
}
if (whatiheard == 3)
{
    global.msg[0] = scr_gettext("obj_tsunderplane_256")
    if (graze >= 5)
        global.msg[0] = scr_gettext("obj_tsunderplane_257")
}
if (whatiheard == 9)
{
    global.msg[0] = scr_gettext("obj_tsunderplane_262")
    if (graze >= 5)
        global.msg[0] = scr_gettext("obj_tsunderplane_263")
}
global.msg[1] = scr_gettext("obj_tsunderplane_266")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 17
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
