blcon = instance_create((x + 95), (y - 25), obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
if (mycommand >= 0 && mycommand < 25)
	global.msg[0] = scr_gettext("obj_aaron_243")
if (mycommand >= 25)
	global.msg[0] = scr_gettext("obj_aaron_244")
if (mycommand >= 50)
	global.msg[0] = scr_gettext("obj_aaron_245")
if (mycommand >= 75)
	global.msg[0] = scr_gettext("obj_aaron_246")
if (FL_AaronWoshuaEvent == 1)
{
	if (mycommand >= 0 && mycommand < 25)
		global.msg[0] = scr_gettext("obj_aaron_249")
	if (mycommand >= 25)
		global.msg[0] = scr_gettext("obj_aaron_250")
	if (mycommand >= 50)
		global.msg[0] = scr_gettext("obj_aaron_251")
	if (mycommand >= 75)
		global.msg[0] = scr_gettext("obj_aaron_252")
}
if (whatiheard == 3)
{
	global.msg[0] = scr_gettext("obj_aaron_257")
	if (flex == 1)
		global.msg[0] = scr_gettext("obj_aaron_258")
	if (flex == 2)
		global.msg[0] = scr_gettext("obj_aaron_259")
}
if (whatiheard == 1)
{
	if (gg == 0)
		global.msg[0] = scr_gettext("obj_aaron_264")
	if (gg == 1)
		global.msg[0] = scr_gettext("obj_aaron_265")
	if (gg == 2)
		global.msg[0] = scr_gettext("obj_aaron_267")
}
if (whatiheard == 9)
{
	global.msg[0] = scr_gettext("obj_aaron_272")
	if (FL_AaronWoshuaEvent == 1)
		global.msg[0] = scr_gettext("obj_aaron_273")
}
if (whatiheard == 12)
	global.msg[0] = scr_gettext("obj_aaron_276")
if (alphaup == 1)
	global.msg[0] = scr_gettext("obj_aaron_278")
if (alphaup == 1 && FL_AaronWoshuaEvent == 1)
	global.msg[0] = scr_gettext("obj_aaron_279")
alphaup = 0
global.msg[1] = scr_gettext("obj_aaron_282")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 6
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
