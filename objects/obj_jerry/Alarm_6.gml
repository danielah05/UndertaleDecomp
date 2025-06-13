if (ditch == 0)
{
	blcon = instance_create((x - 8), (ystart - 100), obj_blconsm)
	blcon.sprite_index = spr_blconabove
	mycommand = round(random(100))
	gg = floor(random(3))
	if (mycommand >= 0 && mycommand < 20)
		global.msg[0] = scr_gettext("obj_jerry_164")
	if (mycommand >= 20 && mycommand < 40)
		global.msg[0] = scr_gettext("obj_jerry_165")
	if (mycommand >= 40 && mycommand < 60)
		global.msg[0] = scr_gettext("obj_jerry_166")
	if (mycommand >= 60 && mycommand <= 80)
		global.msg[0] = scr_gettext("obj_jerry_167")
	if (mycommand >= 80 && mycommand <= 100)
		global.msg[0] = scr_gettext("obj_jerry_168")
	if (scr_monstersum() == 1)
	{
		if (mycommand > 0)
			global.msg[0] = scr_gettext("obj_jerry_171")
		if (mycommand > 20)
			global.msg[0] = scr_gettext("obj_jerry_172")
		if (mycommand > 40)
			global.msg[0] = scr_gettext("obj_jerry_173")
		if (mycommand > 60)
			global.msg[0] = scr_gettext("obj_jerry_174")
		if (mycommand > 80)
			global.msg[0] = scr_gettext("obj_jerry_175")
	}
	if (whatiheard == 20)
	{
		if (gg == 0)
			global.msg[0] = scr_gettext("obj_jerry_199")
		if (gg == 1)
			global.msg[0] = scr_gettext("obj_jerry_200")
		if (gg == 2)
			global.msg[0] = scr_gettext("obj_jerry_201")
		mercymod = 200
	}
	global.msg[1] = scr_gettext("obj_jerry_207")
	global.typer = 2
	blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
	global.border = 3
	obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
	obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
}
