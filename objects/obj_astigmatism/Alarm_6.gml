blcon = instance_create((x + 100), (y + 20), obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = scr_gettext("obj_astigmatism_210")
if (mycommand < 75)
    global.msg[0] = scr_gettext("obj_astigmatism_211")
if (mycommand < 50)
    global.msg[0] = scr_gettext("obj_astigmatism_212")
if (mycommand < 25)
    global.msg[0] = scr_gettext("obj_astigmatism_213")
if (whatiheard == 1)
{
    if (mercymod < 0)
        global.msg[0] = scr_gettext("obj_astigmatism_220")
    if (mercymod > 80)
        global.msg[0] = scr_gettext("obj_astigmatism_222")
}
if (whatiheard == 3)
{
    if (mercymod < 0)
        global.msg[0] = scr_gettext("obj_astigmatism_228")
    if (mercymod > 80)
        global.msg[0] = scr_gettext("obj_astigmatism_230")
}
if (whatiheard == 4)
{
    if (mercymod < 1)
        global.msg[0] = scr_gettext("obj_astigmatism_236")
    if (mercymod > 80)
        global.msg[0] = scr_gettext("obj_astigmatism_238")
}
if (impress == 1)
    global.msg[0] = scr_gettext("obj_astigmatism_242")
impress = 0
if (turnt == 0)
{
    if (pickon == 0)
        global.msg[0] = scr_gettext("obj_astigmatism_248")
    if (pickon == 1)
        global.msg[0] = scr_gettext("obj_astigmatism_249")
    turnt = 1
}
global.msg[1] = scr_gettext("obj_astigmatism_254")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 3
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
