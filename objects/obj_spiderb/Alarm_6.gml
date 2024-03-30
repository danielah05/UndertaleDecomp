global.typer = 33
blcontype = 1
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = scr_gettext("obj_spiderb_220")
if (talktime > 0)
{
    if (talktime >= 9)
        global.msg[0] = scr_gettext("obj_spiderb_224")
    if (talktime == 8)
        global.msg[0] = scr_gettext("obj_spiderb_225")
    if (talktime == 7)
        global.msg[0] = scr_gettext("obj_spiderb_226")
    if (talktime == 6)
        global.msg[0] = scr_gettext("obj_spiderb_227")
    if (talktime == 5)
        global.msg[0] = scr_gettext("obj_spiderb_228")
    if (talktime == 4)
        global.msg[0] = scr_gettext("obj_spiderb_229")
    if (talktime == 3)
        global.msg[0] = scr_gettext("obj_spiderb_230")
    if (talktime == 2)
        global.msg[0] = scr_gettext("obj_spiderb_231")
    if (talktime == 1)
        global.msg[0] = scr_gettext("obj_spiderb_232")
    talktime += 1
}
global.msg[1] = scr_gettext("obj_spiderb_236")
if (turnamt == 0)
    global.msg[0] = scr_gettext("obj_spiderb_240")
if (turnamt == 1)
    global.msg[0] = scr_gettext("obj_spiderb_245")
if (turnamt == 2)
    global.msg[0] = scr_gettext("obj_spiderb_250")
if (turnamt == 3)
{
    global.msg[0] = scr_gettext("obj_spiderb_255")
    if (murder == 1)
        global.msg[0] = scr_gettext("obj_spiderb_256")
}
if (turnamt == 4)
{
    global.msg[0] = scr_gettext("obj_spiderb_261")
    global.msg[1] = scr_gettext("obj_spiderb_262")
}
if (turnamt == 5)
    global.msg[0] = scr_gettext("obj_spiderb_267")
if (turnamt == 6)
{
    global.msg[0] = scr_gettext("obj_spiderb_272")
    if (murder == 1)
        global.msg[0] = scr_gettext("obj_spiderb_273")
}
if (turnamt == 7)
{
    global.msg[0] = scr_gettext("obj_spiderb_278")
    if (murder == 1)
        global.msg[0] = scr_gettext("obj_spiderb_279")
}
if (turnamt == 8)
{
    global.msg[0] = scr_gettext("obj_spiderb_284")
    if (murder == 1)
        global.msg[0] = scr_gettext("obj_spiderb_285")
}
if (turnamt == 9)
    global.msg[0] = scr_gettext("obj_spiderb_291")
if (turnamt == 10)
{
    global.msg[0] = scr_gettext("obj_spiderb_296")
    if (murder == 1)
        global.msg[0] = scr_gettext("obj_spiderb_297")
}
if (turnamt == 11)
{
    global.msg[0] = scr_gettext("obj_spiderb_302")
    if (murder == 1)
        global.msg[0] = scr_gettext("obj_spiderb_303")
    global.msg[1] = scr_gettext("obj_spiderb_304")
}
if (turnamt == 12)
{
    global.msg[0] = scr_gettext("obj_spiderb_309")
    if (murder == 1)
        global.msg[0] = scr_gettext("obj_spiderb_310")
}
if (turnamt == 13)
{
    global.msg[0] = scr_gettext("obj_spiderb_315")
    if (murder == 1)
        global.msg[0] = scr_gettext("obj_spiderb_316")
}
if (turnamt == 14)
{
    global.msg[0] = scr_gettext("obj_spiderb_321")
    global.msg[1] = scr_gettext("obj_spiderb_322")
    if (murder == 1)
        global.msg[0] = scr_gettext("obj_spiderb_323")
}
if (turnamt == 15)
    global.msg[0] = scr_gettext("obj_spiderb_328")
if (con == 0)
    global.msg[0] = scr_gettext("obj_spiderb_336")
if (blcontype == 0)
    blcon = instance_create(((xstart + 105) + 60), (ystart - 35), obj_blconsm)
if (blcontype == 1)
    blcon = instance_create(((xstart + 110) + 60), (ystart - 10), obj_blconwdflowey)
if (blcontype == 0)
    blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
if (blcontype == 1)
    blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 21
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
blconactive = 1
if (purpletime == 1)
    event_user(2)
