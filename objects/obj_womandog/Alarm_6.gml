blcon = instance_create((x + 224), (y + 52), obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = scr_gettext("obj_womandog_243")
if instance_exists(obj_mandog)
{
    m = obj_mandog
    if (m.mycommand >= 0 && m.mycommand < 25)
        global.msg[0] = scr_gettext("obj_womandog_247")
    if (m.mycommand >= 25 && m.mycommand < 50)
        global.msg[0] = scr_gettext("obj_womandog_248")
    if (m.mycommand >= 50 && m.mycommand < 75)
        global.msg[0] = scr_gettext("obj_womandog_249")
    if (m.mycommand >= 75 && m.mycommand <= 100)
        global.msg[0] = scr_gettext("obj_womandog_250")
}
if instance_exists(obj_mandog)
{
    if (whatiheard == 1 || obj_mandog.whatiheard == 1)
    {
        global.msg[0] = scr_gettext("obj_womandog_256")
        if (smell > 0)
            global.msg[0] = scr_gettext("obj_womandog_257")
    }
    if (whatiheard == 3)
    {
        if (smell < 2)
            global.msg[0] = scr_gettext("obj_womandog_261")
        else
            global.msg[0] = scr_gettext("obj_womandog_264")
    }
    if (obj_mandog.whatiheard == 3)
    {
        if (smell < 2)
            global.msg[0] = scr_gettext("obj_womandog_269")
        if (smell >= 2)
            global.msg[0] = scr_gettext("obj_womandog_270")
    }
}
if (scr_monstersum() == 1)
{
    mercymod = -1000
    if (mycommand < 33)
        global.msg[0] = scr_gettext("obj_womandog_276")
    if (mycommand >= 33)
        global.msg[0] = scr_gettext("obj_womandog_277")
    if (mycommand >= 66)
        global.msg[0] = scr_gettext("obj_womandog_278")
    global.monsterdef[myself] = -8
}
global.msg[1] = scr_gettext("obj_womandog_284")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 6
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
