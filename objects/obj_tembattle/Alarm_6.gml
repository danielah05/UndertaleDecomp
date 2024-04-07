if (whatiheard == 7)
{
    talked = false
    whatiheard = -1
    global.mnfight = 2
    global.border = 7
    alarm[5] = -2
    if instance_exists(blt_temhand)
    {
        with (blt_temhand)
            instance_destroy()
    }
    obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
    obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
}
else
{
    blcon = instance_create((x + 95), (y - 25), obj_blconsm)
    gg = floor(random(3))
    mycommand = round(random(100))
    if (mycommand >= 0)
        global.msg[0] = scr_gettext("obj_tembattle_282")
    if (mycommand > 25 && mycommand < 50)
    {
        global.msg[0] = scr_gettext("obj_tembattle_283")
        with (mypart1)
            instance_destroy()
        image_index = 1
    }
    if (mycommand >= 50)
        global.msg[0] = scr_gettext("obj_tembattle_284")
    if (mycommand >= 75)
        global.msg[0] = scr_gettext("obj_tembattle_285")
    if (whatiheard == 3)
        global.msg[0] = scr_gettext("obj_tembattle_288")
    if (whatiheard == 1)
    {
        global.msg[0] = scr_gettext("obj_tembattle_292")
        with (mypart1)
            instance_destroy()
        image_index = 1
    }
    if (whatiheard == 4)
        global.msg[0] = scr_gettext("obj_tembattle_298")
    if (whatiheard == 6)
    {
        global.msg[0] = scr_gettext("obj_tembattle_302")
        mercymod = 300
    }
    global.msg[1] = scr_gettext("obj_tembattle_307")
    global.typer = 2
    blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
    global.border = 6
    obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
    obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
    global.heard = 0
}
