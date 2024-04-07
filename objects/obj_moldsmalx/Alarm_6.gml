blcon = instance_create(((x + sprite_width) - 8), (ystart - 20), obj_blconsm)
mycommand = round(random(100))
if (mycommand >= 0 && mycommand < 30)
    global.msg[0] = scr_gettext("obj_moldsmalx_199")
if (mycommand >= 25 && mycommand < 50)
    global.msg[0] = scr_gettext("obj_moldsmalx_200")
if (mycommand >= 50 && mycommand < 80)
    global.msg[0] = scr_gettext("obj_moldsmalx_201")
if (mycommand >= 75 && mycommand <= 100)
    global.msg[0] = scr_gettext("obj_moldsmalx_202")
if (stage == 0)
{
    global.msg[0] = scr_gettext("obj_moldsmalx_206")
    if (whatiheard == 1 || whatiheard == 3)
    {
        stage = 1
        visible = false
        with (mypart1)
            instance_destroy()
        mypart1 = instance_create(x, y, part1)
        mypart1.stage = stage
        global.msg[0] = scr_gettext("obj_moldsmalx_214")
    }
}
if (stage == 1)
    global.monstername[myself] = scr_gettext("monstername_26b")
global.msg[1] = scr_gettext("obj_moldsmalx_220")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 3
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
