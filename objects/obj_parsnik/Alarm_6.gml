blcon = instance_create((x + 100), (y + 10), obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
if (mycommand >= 0)
	global.msg[0] = scr_gettext("obj_parsnik_205")
if (mycommand >= 25)
	global.msg[0] = scr_gettext("obj_parsnik_206")
if (mycommand >= 50)
	global.msg[0] = scr_gettext("obj_parsnik_207")
if (mycommand >= 75)
	global.msg[0] = scr_gettext("obj_parsnik_208")
if (ate == 1)
	global.msg[0] = scr_gettext("obj_parsnik_211")
if (whatiheard == 3)
	global.msg[0] = scr_gettext("obj_parsnik_215")
if (whatiheard == 4)
	global.msg[0] = scr_gettext("obj_parsnik_219")
global.msg[1] = scr_gettext("obj_parsnik_225")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 3
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
