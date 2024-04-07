blcon = instance_create((x - 123), (y + 52), obj_blconsm)
blcon.sprite_index = spr_blconsm2
gg = floor(random(3))
mycommand = round(random(100))
if (mycommand >= 0 && mycommand < 25)
    global.msg[0] = scr_gettext("obj_mandog_251")
if (mycommand >= 25 && mycommand < 50)
    global.msg[0] = scr_gettext("obj_mandog_252")
if (mycommand >= 50 && mycommand < 75)
    global.msg[0] = scr_gettext("obj_mandog_253")
if (mycommand >= 75 && mycommand <= 100)
    global.msg[0] = scr_gettext("obj_mandog_254")
if instance_exists(obj_womandog)
{
    if (whatiheard == 1 || obj_womandog.whatiheard == 1)
    {
        global.msg[0] = scr_gettext("obj_mandog_259")
        if (smell > 0)
            global.msg[0] = scr_gettext("obj_mandog_260")
    }
    if (whatiheard == 3)
    {
        if (smell < 2)
            global.msg[0] = scr_gettext("obj_mandog_264")
        else
            global.msg[0] = scr_gettext("obj_mandog_267")
    }
    if (obj_womandog.whatiheard == 3)
    {
        if (smell < 2)
            global.msg[0] = scr_gettext("obj_mandog_272")
        if (smell >= 2)
            global.msg[0] = scr_gettext("obj_mandog_273")
    }
}
if (scr_monstersum() == 1)
{
    global.monsterdef[myself] = -30
    mercymod = -1000
    if (mycommand < 50)
        global.msg[0] = scr_gettext("obj_mandog_280")
    else
        global.msg[0] = scr_gettext("obj_mandog_281")
}
global.msg[1] = scr_gettext("obj_mandog_284")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 6
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
