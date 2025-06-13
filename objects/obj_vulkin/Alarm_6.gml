blcon = instance_create((x + 100), y, obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
if (global.hp < global.maxhp)
{
	if (mycommand >= 0 && mycommand < 50)
		global.msg[0] = scr_gettext("obj_vulkin_271")
	if (mycommand >= 50)
		global.msg[0] = scr_gettext("obj_vulkin_272")
}
if (global.hp >= global.maxhp)
{
	if (mycommand >= 0 && mycommand < 50)
		global.msg[0] = scr_gettext("obj_vulkin_277")
	if (mycommand >= 50)
		global.msg[0] = scr_gettext("obj_vulkin_278")
}
if (criticize > 0)
{
	if (mycommand >= 0 && mycommand < 50)
		global.msg[0] = scr_gettext("obj_vulkin_283")
	if (mycommand >= 50)
		global.msg[0] = scr_gettext("obj_vulkin_284")
}
if (hug > 0)
{
	if (mycommand >= 0 && mycommand < 50)
		global.msg[0] = scr_gettext("obj_vulkin_291")
	if (mycommand >= 50)
		global.msg[0] = scr_gettext("obj_vulkin_292")
}
if (encourage > 0)
{
	if (mycommand >= 0 && mycommand < 50)
		global.msg[0] = scr_gettext("obj_vulkin_298")
	if (mycommand >= 50)
		global.msg[0] = scr_gettext("obj_vulkin_299")
}
if (whatiheard == 1)
{
	global.msg[0] = scr_gettext("obj_vulkin_307")
	mypart1.face = spr_vulkinface3
}
if (whatiheard == 3)
{
	mypart1.face = spr_vulkinface2
	global.msg[0] = scr_gettext("obj_vulkin_314")
	if (criticize == 2)
		global.msg[0] = scr_gettext("obj_vulkin_317")
}
if (whatiheard == 4)
{
	mypart1.face = spr_vulkinface4
	global.msg[0] = scr_gettext("obj_vulkin_323")
	if (hug == 2)
		global.msg[0] = scr_gettext("obj_vulkin_325")
	if (hug == 3)
		global.msg[0] = scr_gettext("obj_vulkin_327")
}
global.msg[1] = scr_gettext("obj_vulkin_332")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 17
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
