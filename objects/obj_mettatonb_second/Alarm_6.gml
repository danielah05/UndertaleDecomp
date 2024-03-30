gg = floor(random(3))
mycommand = round(random(100))
global.msc = 0
global.msg[0] = scr_gettext("obj_mettatonb_second_256")
turns += 1
if (turns > 1 && FL_YellowButtonStatus < YellowButtonStatus.Pressed)
{
    if (turns == 2)
        global.msg[0] = scr_gettext("obj_mettatonb_second_265")
    if (turns == 3)
        global.msg[0] = scr_gettext("obj_mettatonb_second_268")
    if (turns == 4)
        global.msg[0] = scr_gettext("obj_mettatonb_second_271")
    if (turns == 5)
        global.msg[0] = scr_gettext("obj_mettatonb_second_274")
    if (turns == 6)
        global.msg[0] = scr_gettext("obj_mettatonb_second_277")
    if (turns == 7)
        global.msg[0] = scr_gettext("obj_mettatonb_second_280")
    if (turns == 8)
        global.msg[0] = scr_gettext("obj_mettatonb_second_284")
    if (turns > 8)
    {
        global.msg[0] = scr_gettext("obj_mettatonb_second_290")
        turns = 7
    }
}
if (con == 10)
{
    global.msg[0] = scr_gettext("obj_mettatonb_second_299")
    if (turns > 6)
        global.msg[0] = scr_gettext("obj_mettatonb_second_300")
}
global.typer = 51
scr_blcon((mypart1.x - 320), (mypart1.y - 120), 1)
if (global.hp > 1 && FL_YellowButtonStatus == YellowButtonStatus.Available)
    global.border = 6
if (turns == 0)
    global.border = 0
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
