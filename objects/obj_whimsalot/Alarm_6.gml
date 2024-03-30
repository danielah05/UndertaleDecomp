blcon = instance_create((x + 100), y, obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
if (mycommand >= 0 && mycommand < 30)
    global.msg[0] = scr_gettext("obj_whimsalot_212")
if (mycommand >= 30 && mycommand < 50)
    global.msg[0] = scr_gettext("obj_whimsalot_213")
if (mycommand >= 50 && mycommand < 80)
    global.msg[0] = scr_gettext("obj_whimsalot_214")
if (mycommand >= 80 && mycommand <= 100)
    global.msg[0] = scr_gettext("obj_whimsalot_215")
if (whatiheard == 1)
    global.msg[0] = scr_gettext("obj_whimsalot_221")
if (whatiheard == 3)
    global.msg[0] = scr_gettext("obj_whimsalot_226")
if (whatiheard == 4)
{
    if (mycommand < 50)
        global.msg[0] = scr_gettext("obj_whimsalot_232")
    else
        global.msg[0] = scr_gettext("obj_whimsalot_234")
}
if (impress == 1)
    global.msg[0] = scr_gettext("obj_whimsalot_237")
impress = 0
global.msg[1] = scr_gettext("obj_whimsalot_242")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 3
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
