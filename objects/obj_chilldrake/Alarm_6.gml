blcon = instance_create((x + 145), (y + 52), obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
if (mercymod == -25 && scr_monstersum() == 1)
    mercymod = 0
if (mycommand >= 0 && mycommand < 25)
    global.msg[0] = scr_gettext("obj_chilldrake_246")
if (mycommand >= 25 && mycommand < 50)
    global.msg[0] = scr_gettext("obj_chilldrake_247")
if (mycommand >= 50 && mycommand < 75)
    global.msg[0] = scr_gettext("obj_chilldrake_248")
if (mycommand >= 75 && mycommand <= 100)
    global.msg[0] = scr_gettext("obj_chilldrake_249")
if (whatiheard == 3)
{
    if (joketold == 1)
    {
        if (gg == 0)
            global.msg[0] = scr_gettext("obj_chilldrake_254")
        if (gg == 1)
            global.msg[0] = scr_gettext("obj_chilldrake_255")
        if (gg == 2)
            global.msg[0] = scr_gettext("obj_chilldrake_256")
    }
    if (joketold == 0)
        global.msg[0] = scr_gettext("obj_chilldrake_258")
    alarm[5] = 108
}
if (whatiheard != 1 && whatiheard != 3 && whatiheard != 4 && whatiheard != 19 && whatiheard != 20 && mercymod != -25)
    joketold = 1
if (whatiheard == 4)
{
    if (gg == 0)
        global.msg[0] = scr_gettext("obj_chilldrake_265")
    if (gg == 1)
        global.msg[0] = scr_gettext("obj_chilldrake_266")
    if (gg == 2)
        global.msg[0] = scr_gettext("obj_chilldrake_267")
}
if (whatiheard == 1)
{
    if (gg == 0)
        global.msg[0] = scr_gettext("obj_chilldrake_272")
    if (gg == 1)
        global.msg[0] = scr_gettext("obj_chilldrake_273")
    if (gg == 2)
        global.msg[0] = scr_gettext("obj_chilldrake_274")
    joketold = 0
}
if (whatiheard == 20)
{
    if (gg == 0)
        global.msg[0] = scr_gettext("obj_chilldrake_279")
    if (gg == 1)
        global.msg[0] = scr_gettext("obj_chilldrake_280")
    if (gg == 2)
        global.msg[0] = scr_gettext("obj_chilldrake_281")
    mercymod = 200
}
if (whatiheard == 19)
{
    if (gg == 0)
        global.msg[0] = scr_gettext("obj_chilldrake_286")
    if (gg == 1)
        global.msg[0] = scr_gettext("obj_chilldrake_287")
    if (gg == 2)
        global.msg[0] = scr_gettext("obj_chilldrake_288")
    mercymod = -25
}
global.msg[1] = scr_gettext("obj_chilldrake_296")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 6
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
