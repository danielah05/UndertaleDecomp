blcon = instance_create(((x - blconx) + 40), ((y + 55) + 32), obj_blconsm)
blcon.sprite_index = spr_blconsm2
gg = floor(random(3))
attacked = 0
mycommand = round(random(100))
if (mycommand >= 0 && mycommand < 25)
    global.msg[0] = scr_gettext("obj_bara02_256")
if (mycommand >= 25)
    global.msg[0] = scr_gettext("obj_bara02_257")
if (mycommand >= 50)
    global.msg[0] = scr_gettext("obj_bara02_258")
if (mycommand >= 75)
    global.msg[0] = scr_gettext("obj_bara02_259")
if (turn0 == 0)
    global.msg[0] = scr_gettext("obj_bara02_262")
turn0 = 1
if (whatiheard == 3)
    global.msg[0] = scr_gettext("obj_bara02_266")
if (whatiheard == 1)
{
    global.msg[0] = scr_gettext("obj_bara02_271")
    if (shirtless == 1)
        global.msg[0] = scr_gettext("obj_bara02_272")
}
pop = scr_monstersum()
if (pop < 2)
{
    if (mycommand >= 0 && mycommand < 25)
        global.msg[0] = scr_gettext("obj_bara02_279")
    if (mycommand >= 25)
        global.msg[0] = scr_gettext("obj_bara02_280")
    if (mycommand >= 50)
        global.msg[0] = scr_gettext("obj_bara02_281")
    if (mycommand >= 75)
        global.msg[0] = scr_gettext("obj_bara02_282")
    if (freshdeath == 0 && mercymod < 1)
        global.msg[0] = scr_gettext("obj_bara02_285")
    if (freshdeath == 0 && mercymod > 100)
        global.msg[0] = scr_gettext("obj_bara02_287")
    freshdeath = 1
    mercymod = -99999
}
global.msg[1] = scr_gettext("obj_bara02_292")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 15
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
