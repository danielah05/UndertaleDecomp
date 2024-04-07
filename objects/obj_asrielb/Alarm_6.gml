blcon = instance_create((x + 120), y, obj_blconwdflowey)
gg = floor(random(3))
mycommand = round(random(100))
if (turns == 1)
{
    global.msg[0] = scr_gettext("obj_asrielb_245")
    global.msg[1] = scr_gettext("obj_asrielb_246")
}
if (turns == 2)
{
    global.msg[0] = scr_gettext("obj_asrielb_251")
    global.msg[1] = scr_gettext("obj_asrielb_252")
}
if (turns == 3)
{
    global.msg[0] = scr_gettext("obj_asrielb_257")
    global.msg[1] = scr_gettext("obj_asrielb_258")
}
if (turns == 4)
    global.msg[0] = scr_gettext("obj_asrielb_263")
if (turns == 5)
{
    global.msg[0] = scr_gettext("obj_asrielb_268")
    global.msg[1] = scr_gettext("obj_asrielb_269")
}
if (turns == 6)
    global.msg[0] = scr_gettext("obj_asrielb_274")
if (turns == 7)
    global.msg[0] = scr_gettext("obj_asrielb_279")
if (turns == 8)
    global.msg[0] = scr_gettext("obj_asrielb_284")
if (turns == 9)
    global.msg[0] = scr_gettext("obj_asrielb_289")
if (turns == 10)
    global.msg[0] = scr_gettext("obj_asrielb_294")
if (turns == 11)
    global.msg[0] = scr_gettext("obj_asrielb_299")
if (turns == 12)
{
    global.msg[0] = scr_gettext("obj_asrielb_304")
    global.msg[1] = scr_gettext("obj_asrielb_305")
    global.msg[2] = scr_gettext("obj_asrielb_306")
}
if (turns == 13)
{
    global.msg[0] = scr_gettext("obj_asrielb_311")
    global.msg[1] = scr_gettext("obj_asrielb_312")
}
xx = 0
if (turns < FL_AsrielTurnCounter)
    xx = 1
global.typer = 86
blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
if (mypart1.specialnormal == 1 || turns == 0 || xx == 1)
{
    with (blconwd)
        instance_destroy()
    with (blcon)
        instance_destroy()
}
global.border = 17
if (mypart1.specialnormal == 1)
    global.border = 6
if (turns == 2 || turns == 6 || turns == 10)
    global.border = 4
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
say = 1
