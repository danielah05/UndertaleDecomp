gg = floor(random(3))
mycommand = round(random(100))
global.msc = 0
global.msg[0] = scr_gettext("obj_mettatonb_third_214")
turns += 1
if (turns > 0)
{
    if (turns == 1)
    {
        global.msg[0] = scr_gettext("obj_mettatonb_third_224")
        global.msg[1] = scr_gettext("obj_mettatonb_third_225")
        global.msg[2] = scr_gettext("obj_mettatonb_third_226")
        global.msg[3] = scr_gettext("obj_mettatonb_third_227")
        global.msg[4] = scr_gettext("obj_mettatonb_third_228")
    }
    if (turns == 2)
    {
        global.msg[0] = scr_gettext("obj_mettatonb_third_233")
        global.msg[1] = scr_gettext("obj_mettatonb_third_234")
        global.msg[2] = scr_gettext("obj_mettatonb_third_235")
        global.msg[3] = scr_gettext("obj_mettatonb_third_236")
    }
    if (turns == 3)
    {
        global.msg[0] = scr_gettext("obj_mettatonb_third_241")
        global.msg[1] = scr_gettext("obj_mettatonb_third_242")
    }
    if (turns == 4)
    {
        global.msg[0] = scr_gettext("obj_mettatonb_third_247")
        global.msg[1] = scr_gettext("obj_mettatonb_third_248")
        global.msg[2] = scr_gettext("obj_mettatonb_third_249")
        global.msg[3] = scr_gettext("obj_mettatonb_third_250")
    }
    if (turns == 5)
    {
        global.msg[0] = scr_gettext("obj_mettatonb_third_255")
        global.msg[1] = scr_gettext("obj_mettatonb_third_256")
        global.msg[2] = scr_gettext("obj_mettatonb_third_257")
    }
}
global.typer = 51
scr_blcon((mypart1.x - 320), (mypart1.y - 120), 1)
global.border = 24
if (turns == 0)
    global.border = 0
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
