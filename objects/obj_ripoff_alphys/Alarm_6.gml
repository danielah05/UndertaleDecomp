blcon = instance_create((x + 110), y, obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = scr_gettext("obj_ripoff_alphys_256")
if (talkt == 0)
	global.msg[0] = scr_gettext("obj_ripoff_alphys_257")
if (talkt == 1)
	global.msg[0] = scr_gettext("obj_ripoff_alphys_258")
if (talkt == 2)
	global.msg[0] = scr_gettext("obj_ripoff_alphys_259")
if (talkt == 2)
	talkt = 0
if (talkt == 1)
	talkt = 2
if (talkt == 0)
	talkt = 1
if (turns == 0)
	turns = 1
else
	turns = 0
global.msg[1] = scr_gettext("obj_ripoff_alphys_267")
global.typer = 74
blconwd = instance_create((blcon.x + 22), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 24
if (turns == 0)
	global.border = 26
if (turns == 1)
	global.border = 24
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
