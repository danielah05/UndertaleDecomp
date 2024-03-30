blcon = instance_create((x + 205), (y + 52), obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = scr_gettext("obj_gyftrot_271")
if (mycommand >= 0 && mycommand < 20)
    global.msg[0] = scr_gettext("obj_gyftrot_273")
if (mycommand >= 20 && mycommand < 40)
    global.msg[0] = scr_gettext("obj_gyftrot_274")
if (mycommand >= 40 && mycommand < 60)
    global.msg[0] = scr_gettext("obj_gyftrot_275")
if (mycommand >= 60 && mycommand <= 80)
    global.msg[0] = scr_gettext("obj_gyftrot_276")
if (mycommand >= 80 && mycommand <= 100)
    global.msg[0] = scr_gettext("obj_gyftrot_277")
if (mercymod > 90)
{
    global.msg[0] = scr_gettext("obj_gyftrot_279")
    global.monsterdef[myself] = -100
}
if (whatiheard == 4)
{
    if (giftgiven == 1)
        global.msg[0] = scr_gettext("obj_gyftrot_283")
    if (giftgiven == 2)
        global.msg[0] = scr_gettext("obj_gyftrot_284")
    if (googly == 1)
        global.msg[0] = scr_gettext("obj_gyftrot_285")
    if (betray == 1)
        global.msg[0] = scr_gettext("obj_gyftrot_286")
    if (itemgone == 0)
        global.msg[0] = scr_gettext("obj_gyftrot_287")
}
if (whatiheard == 3)
{
    FL_BetrayedGyftrot = 1
    global.msg[0] = scr_gettext("obj_gyftrot_293")
    if (itemgone > 0 || giftgiven > 0)
    {
        global.msg[0] = scr_gettext("obj_gyftrot_294")
        betray = 1
    }
    mercymod = -20
}
if (whatiheard == 1)
{
    if (itemgone == 1 || itemgone == 2)
    {
        mercymod = 10
        global.msg[0] = scr_gettext("obj_gyftrot_300")
    }
    if (mercymod > 170)
        global.msg[0] = scr_gettext("obj_gyftrot_301")
    else if (itemgone == 3)
    {
        mercymod = 200
        global.msg[0] = scr_gettext("obj_gyftrot_303")
    }
    if (ung == 1)
        global.msg[0] = scr_gettext("obj_gyftrot_304")
    ung = 0
}
global.msg[1] = scr_gettext("obj_gyftrot_312")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 6
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
