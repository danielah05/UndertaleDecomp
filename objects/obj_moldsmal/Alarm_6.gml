blcon = instance_create(((x + sprite_width) - 8), (ystart - 20), obj_blconsm)
mycommand = round(random(100))
if (mycommand >= 0 && mycommand < 30)
	global.msg[0] = scr_gettext("obj_moldsmal_193")
if (mycommand >= 25 && mycommand < 50)
	global.msg[0] = scr_gettext("obj_moldsmal_194")
if (mycommand >= 50 && mycommand < 80)
	global.msg[0] = scr_gettext("obj_moldsmal_195")
if (mycommand >= 75 && mycommand <= 100)
	global.msg[0] = scr_gettext("obj_moldsmal_196")
global.msg[1] = scr_gettext("obj_moldsmal_198")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 3
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
