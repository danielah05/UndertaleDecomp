blcon = instance_create(((x + sprite_width) - 8), ystart, obj_blconsm)
mycommand = round(random(100))
gg = floor(random(3))
if (mycommand >= 0 && mycommand < 20)
	global.msg[0] = scr_gettext("obj_icecap_139")
if (mycommand >= 20 && mycommand < 40)
	global.msg[0] = scr_gettext("obj_icecap_140")
if (mycommand >= 40 && mycommand < 60)
	global.msg[0] = scr_gettext("obj_icecap_141")
if (mycommand >= 60 && mycommand <= 80)
	global.msg[0] = scr_gettext("obj_icecap_142")
if (mycommand >= 80 && mycommand <= 100)
	global.msg[0] = scr_gettext("obj_icecap_143")
if (whatiheard == 1)
{
	if (ignore > 0)
	{
		if (gg == 0)
			global.msg[0] = scr_gettext("obj_icecap_148")
		if (gg == 1)
			global.msg[0] = scr_gettext("obj_icecap_149")
		if (gg == 2)
			global.msg[0] = scr_gettext("obj_icecap_150")
		ignore = 2
		mercymod = 300
	}
	if (ignore == 0)
	{
		if (gg == 0 || gg == 1)
			global.msg[0] = scr_gettext("obj_icecap_156")
		if (gg == 2)
			global.msg[0] = scr_gettext("obj_icecap_157")
		ignore = 1
	}
}
if (whatiheard == 3)
{
	if (gg == 0)
		global.msg[0] = scr_gettext("obj_icecap_163")
	if (gg == 1)
		global.msg[0] = scr_gettext("obj_icecap_164")
	if (gg == 2)
		global.msg[0] = scr_gettext("obj_icecap_165")
}
if (whatiheard == 4)
{
	if (gg == 0)
		global.msg[0] = scr_gettext("obj_icecap_169")
	if (gg == 1 || gg == 2)
		global.msg[0] = scr_gettext("obj_icecap_170")
}
if (whatiheard == 20)
{
	if (gg == 0)
		global.msg[0] = scr_gettext("obj_icecap_175")
	if (gg == 1)
		global.msg[0] = scr_gettext("obj_icecap_176")
	if (gg == 2)
		global.msg[0] = scr_gettext("obj_icecap_177")
	mercymod = 200
}
global.msg[1] = scr_gettext("obj_icecap_182")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 3
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
