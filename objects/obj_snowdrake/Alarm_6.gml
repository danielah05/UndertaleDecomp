blcon = instance_create((x + 145), (y + 52), obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
if (mercymod == -25 && scr_monstersum() == 1)
	mercymod = 0
if (mycommand >= 0 && mycommand < 14)
	global.msg[0] = scr_gettext("obj_snowdrake_248")
if (mycommand >= 14 && mycommand < 28)
	global.msg[0] = scr_gettext("obj_snowdrake_249")
if (mycommand >= 28 && mycommand < 42)
	global.msg[0] = scr_gettext("obj_snowdrake_250")
if (mycommand >= 42 && mycommand <= 66)
	global.msg[0] = scr_gettext("obj_snowdrake_251")
if (mycommand >= 66 && mycommand <= 80)
	global.msg[0] = scr_gettext("obj_snowdrake_252")
if (mycommand >= 80 && mycommand <= 90)
	global.msg[0] = scr_gettext("obj_snowdrake_253")
if (mycommand >= 90 && mycommand <= 100)
	global.msg[0] = scr_gettext("obj_snowdrake_254")
if (mercymod == -25)
{
	if (gg == 0)
		global.msg[0] = scr_gettext("obj_snowdrake_257")
	if (gg == 1)
		global.msg[0] = scr_gettext("obj_snowdrake_258")
	if (gg == 2)
		global.msg[0] = scr_gettext("obj_snowdrake_259")
}
if (whatiheard == 3)
{
	if (joketold == 1)
	{
		if (gg == 0)
			global.msg[0] = scr_gettext("obj_snowdrake_265")
		if (gg == 1)
			global.msg[0] = scr_gettext("obj_snowdrake_266")
		if (gg == 2)
			global.msg[0] = scr_gettext("obj_snowdrake_267")
		if (FL_SnowdrakeStatus == SnowdrakeStatus.Spared)
			global.msg[0] = scr_gettext("obj_snowdrake_268")
		FL_SnowdrakeStatus = SnowdrakeStatus.LaughedAtJoke
	}
	if (joketold == 0)
		global.msg[0] = scr_gettext("obj_snowdrake_271")
	alarm[5] = 108
}
if (whatiheard != 1 && whatiheard != 3 && whatiheard != 4 && whatiheard != 19 && whatiheard != 20 && mercymod != -25)
	joketold = 1
if (whatiheard == 4)
{
	if (gg == 0)
		global.msg[0] = scr_gettext("obj_snowdrake_278")
	if (gg == 1)
		global.msg[0] = scr_gettext("obj_snowdrake_279")
	if (gg == 2)
		global.msg[0] = scr_gettext("obj_snowdrake_280")
}
if (whatiheard == 1)
{
	if (gg == 0)
		global.msg[0] = scr_gettext("obj_snowdrake_285")
	if (gg == 1)
		global.msg[0] = scr_gettext("obj_snowdrake_286")
	if (gg == 2)
		global.msg[0] = scr_gettext("obj_snowdrake_287")
	joketold = 0
}
if (whatiheard == 20)
{
	if (gg == 0)
		global.msg[0] = scr_gettext("obj_snowdrake_292")
	if (gg == 1)
		global.msg[0] = scr_gettext("obj_snowdrake_293")
	if (gg == 2)
		global.msg[0] = scr_gettext("obj_snowdrake_294")
	mercymod = 200
}
if (whatiheard == 19)
{
	if (gg == 0)
		global.msg[0] = scr_gettext("obj_snowdrake_299")
	if (gg == 1)
		global.msg[0] = scr_gettext("obj_snowdrake_300")
	if (gg == 2)
		global.msg[0] = scr_gettext("obj_snowdrake_301")
	mercymod = -25
}
global.msg[1] = scr_gettext("obj_snowdrake_309")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 6
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
