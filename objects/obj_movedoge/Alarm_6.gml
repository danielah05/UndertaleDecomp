blcon = instance_create((x + 145), (y + 52), obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
if (mercymod == -25 && scr_monstersum() == 1)
    mercymod = 0
global.msg[0] = scr_gettext("obj_movedoge_259")
if (excited == 1)
    global.msg[0] = scr_gettext("obj_movedoge_260")
if (global.turn >= 1 && excited == 0)
    global.msg[0] = scr_gettext("obj_movedoge_261")
if (mercymod > 100 && mercymod < 800)
{
    global.msg[0] = scr_gettext("obj_movedoge_264")
    mypart1.alarm[0] = 30000
    mercymod = 101
    mypart1.excited = 1
}
if (mercymod == 1000)
{
    global.msg[0] = scr_gettext("obj_movedoge_271")
    if (pets == 2)
        global.msg[0] = scr_gettext("obj_movedoge_272")
    if (pets == 3)
        global.msg[0] = scr_gettext("obj_movedoge_273")
    if (pets == 4)
        global.msg[0] = scr_gettext("obj_movedoge_274")
    mercymod = 999
    global.monsterdef[myself] = -90
    if (pets == 4 && mypart1.excited == 0)
    {
        global.msg[0] = scr_gettext("obj_movedoge_277")
        global.monsterdef[myself] = 0
    }
}
global.msg[1] = scr_gettext("obj_movedoge_283")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 6
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
