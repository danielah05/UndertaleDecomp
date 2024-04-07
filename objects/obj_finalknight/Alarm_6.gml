gg = floor(random(3))
mycommand = round(random(100))
if (mycommand < 20)
    global.msg[0] = scr_gettext("obj_finalknight_275")
if (mycommand >= 20)
    global.msg[0] = scr_gettext("obj_finalknight_279")
if (mycommand >= 40)
    global.msg[0] = scr_gettext("obj_finalknight_283")
if (mycommand >= 60)
    global.msg[0] = scr_gettext("obj_finalknight_287")
if (mycommand >= 80)
    global.msg[0] = scr_gettext("obj_finalknight_291")
if (asleep > 0)
    global.msg[0] = scr_gettext("obj_finalknight_295")
global.msg[1] = scr_gettext("obj_finalknight_298")
if (talk != 3)
{
    global.typer = 1
    global.msc = 0
    blconwd = instance_create((x + 210), (y - 20), OBJ_INSTAWRITER)
}
if (talk == 3)
{
    global.msg[0] = scr_gettext("obj_finalknight_308")
    global.msg[1] = scr_gettext("obj_finalknight_309")
    global.typer = 5
    global.msc = 0
    blconwd = instance_create((x + 210), (y - 20), OBJ_INSTAWRITER)
    talk = 0
}
attacked = 0
if (asleep == 0)
    global.border = 17
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
