blcon = instance_create((x + 120), y, obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = scr_gettext("obj_snowdrakemom_158")
if (whatiheard == 4)
{
    if (joke == 1)
        global.msg[0] = scr_gettext("obj_snowdrakemom_165")
    if (joke == 2)
        global.msg[0] = scr_gettext("obj_snowdrakemom_167")
}
global.msg[1] = scr_gettext("obj_snowdrakemom_173")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 17
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
