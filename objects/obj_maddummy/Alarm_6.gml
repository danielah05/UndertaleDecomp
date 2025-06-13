global.typer = 33
blcontype = 0
if (con != 5)
{
	gg = floor(random(3))
	mycommand = round(random(100))
	if (mycommand >= 0 && mycommand < 25)
		global.msg[0] = scr_gettext("obj_maddummy_422")
	if (mycommand >= 25)
		global.msg[0] = scr_gettext("obj_maddummy_423")
	if (mycommand >= 50)
		global.msg[0] = scr_gettext("obj_maddummy_424")
	if (mycommand >= 75)
		global.msg[0] = scr_gettext("obj_maddummy_425")
	if (con3 > 0 && con3 < 8)
	{
		if (con3 == 1)
			global.msg[0] = scr_gettext("obj_maddummy_429")
		if (con3 == 2)
			global.msg[0] = scr_gettext("obj_maddummy_430")
		if (con3 == 3)
			global.msg[0] = scr_gettext("obj_maddummy_431")
		if (con3 == 4)
			global.msg[0] = scr_gettext("obj_maddummy_432")
		if (con3 == 5)
			global.msg[0] = scr_gettext("obj_maddummy_433")
		if (con3 == 6)
			global.msg[0] = scr_gettext("obj_maddummy_434")
		if (con3 == 7)
			global.msg[0] = scr_gettext("obj_maddummy_435")
		blcontype = 1
	}
	if (con2 > 13 && con2 <= 117.5)
	{
		if (con2 == 14)
			global.msg[0] = scr_gettext("obj_maddummy_441")
		if (con2 == 15)
			global.msg[0] = scr_gettext("obj_maddummy_442")
		if (con2 == 16)
			global.msg[0] = scr_gettext("obj_maddummy_443")
		if (con2 == 17.5)
			global.msg[0] = scr_gettext("obj_maddummy_444")
		blcontype = 0
	}
	con3 += 1
	if (blcontype == 0)
		blcon = instance_create((xstart + 95), (ystart - 25), obj_blconsm)
	if (blcontype == 1)
		blcon = instance_create((xstart + 100), ystart, obj_blconwdflowey)
}
else if (con == 5)
{
	mycommand = round(random(100))
	caster_resume(global.batmusic)
	global.typer = 33
	global.faceemotion = 2
	global.msg[0] = scr_gettext("obj_maddummy_459")
	blcon = instance_create((xstart + 100), ystart, obj_blconwdflowey)
	blcontype = 1
	con = 6
}
global.msg[1] = scr_gettext("obj_maddummy_465")
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 6
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
