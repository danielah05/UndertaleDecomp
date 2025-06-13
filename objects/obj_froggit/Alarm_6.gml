blcon = instance_create((x + sprite_width), y, obj_blconsm)
mycommand = round(random(100))
if (mycommand >= 0 && mycommand < 30)
	global.msg[0] = scr_gettext("obj_froggit_30")
if (mycommand >= 30 && mycommand < 50)
	global.msg[0] = scr_gettext("obj_froggit_31")
if (mycommand >= 50 && mycommand < 80)
	global.msg[0] = scr_gettext("obj_froggit_32")
if (mycommand >= 80 && mycommand <= 100)
	global.msg[0] = scr_gettext("obj_froggit_33")
if (whatiheard == 3)
{
	global.msg[0] = scr_gettext("obj_froggit_36")
	alarm[5] = 108
}
if (whatiheard == 1)
	global.msg[0] = scr_gettext("obj_froggit_39")
global.msg[1] = scr_gettext("obj_froggit_42")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 3
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
