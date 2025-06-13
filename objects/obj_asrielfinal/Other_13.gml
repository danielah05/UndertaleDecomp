if (FL_AsrielFightConvoCounter != 3)
{
	blcon = instance_create((x + 100), y, obj_blconsm)
	gg = floor(random(3))
	mycommand = round(random(100))
	global.msg[0] = scr_gettext("obj_asrielfinal_723")
	if (mycommand < 75)
		global.msg[0] = scr_gettext("obj_asrielfinal_724")
	if (mycommand < 50)
		global.msg[0] = scr_gettext("obj_asrielfinal_725")
	if (mycommand < 25)
		global.msg[0] = scr_gettext("obj_asrielfinal_726")
	if (whatiheard == 1)
		global.msg[0] = scr_gettext("obj_asrielfinal_732")
	if (whatiheard == 3)
		global.msg[0] = scr_gettext("obj_asrielfinal_737")
	if (whatiheard == 4)
		global.msg[0] = scr_gettext("obj_asrielfinal_741")
	global.msg[1] = scr_gettext("obj_asrielfinal_746")
	global.typer = 2
	blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
	with (blcon)
		instance_destroy()
	with (blconwd)
		instance_destroy()
	global.border = 17
	obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
	obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
}
if (FL_AsrielFightConvoCounter == 0)
{
	blcon = instance_create(400, 50, obj_blconwdflowey)
	global.msc = 0
	global.typer = 86
	if (global.tempvalue[12] == 0 || global.tempvalue[12] == 1)
		global.msg[0] = scr_gettext("obj_asrielfinal_767")
	if (global.tempvalue[12] == 2)
	{
		global.msg[0] = scr_gettext("obj_asrielfinal_771")
		global.msg[1] = scr_gettext("obj_asrielfinal_772")
		global.msg[2] = scr_gettext("obj_asrielfinal_773")
		global.msg[3] = scr_gettext("obj_asrielfinal_774")
	}
	if (global.tempvalue[12] == 3)
	{
		global.msg[0] = scr_gettext("obj_asrielfinal_779")
		global.msg[1] = scr_gettext("obj_asrielfinal_780")
		global.msg[2] = scr_gettext("obj_asrielfinal_781")
		global.msg[3] = scr_gettext("obj_asrielfinal_782")
	}
	if (global.tempvalue[12] == 4)
	{
		global.msg[0] = scr_gettext("obj_asrielfinal_787")
		global.msg[1] = scr_gettext("obj_asrielfinal_788")
		global.msg[2] = scr_gettext("obj_asrielfinal_789")
		global.msg[3] = scr_gettext("obj_asrielfinal_790")
	}
	if (global.tempvalue[12] >= 5)
		global.msg[0] = scr_gettext("obj_asrielfinal_796")
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
	blcon.depth = -2000
	blconwd.depth = -2200
	global.border = 17
	obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
	obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
}
if (FL_AsrielFightConvoCounter == 3)
{
	blcon = instance_create(400, 50, obj_blconwdflowey)
	global.msc = 0
	global.typer = 86
	if (turns == 0)
	{
		global.msg[0] = scr_gettext("obj_asrielfinal_819")
		global.msg[1] = scr_gettext("obj_asrielfinal_820")
		global.msg[2] = scr_gettext("obj_asrielfinal_821")
	}
	if (turns == 1)
	{
		global.msg[0] = scr_gettext("obj_asrielfinal_826")
		global.msg[1] = scr_gettext("obj_asrielfinal_827")
		global.msg[2] = scr_gettext("obj_asrielfinal_828")
	}
	if (turns == 2)
	{
		global.msg[0] = scr_gettext("obj_asrielfinal_833")
		global.msg[1] = scr_gettext("obj_asrielfinal_834")
		global.msg[2] = scr_gettext("obj_asrielfinal_835")
		global.msg[3] = scr_gettext("obj_asrielfinal_836")
	}
	if (turns == 3)
	{
		global.msg[0] = scr_gettext("obj_asrielfinal_841")
		global.msg[1] = scr_gettext("obj_asrielfinal_842")
		global.msg[2] = scr_gettext("obj_asrielfinal_843")
		global.msg[3] = scr_gettext("obj_asrielfinal_844")
	}
	if (turns == 4)
	{
		global.msg[0] = scr_gettext("obj_asrielfinal_849")
		global.msg[1] = scr_gettext("obj_asrielfinal_850")
		global.msg[2] = scr_gettext("obj_asrielfinal_851")
		global.msg[3] = scr_gettext("obj_asrielfinal_852")
		global.msg[4] = scr_gettext("obj_asrielfinal_853")
		global.msg[5] = scr_gettext("obj_asrielfinal_854")
	}
	if (turns == 5)
	{
		global.msg[0] = scr_gettext("obj_asrielfinal_859")
		global.msg[1] = scr_gettext("obj_asrielfinal_860")
		global.msg[2] = scr_gettext("obj_asrielfinal_861")
	}
	if (turns == 6)
	{
		global.typer = 88
		mypart1.cry = 1
		global.msg[0] = scr_gettext("obj_asrielfinal_868")
		global.msg[1] = scr_gettext("obj_asrielfinal_869")
	}
	if (turns == 7)
	{
		with (mypart1)
			bodyfader += 0.2
		with (obj_asrielpanels)
			event_user(0)
		global.typer = 87
		global.msg[0] = scr_gettext("obj_asrielfinal_877")
		global.msg[1] = scr_gettext("obj_asrielfinal_878")
	}
	if (turns == 8)
	{
		with (mypart1)
			bodyfader += 0.2
		with (obj_asrielpanels)
			event_user(0)
		global.typer = 87
		global.msg[0] = scr_gettext("obj_asrielfinal_886")
	}
	if (turns == 9)
	{
		with (mypart1)
			bodyfader += 0.2
		with (obj_asrielpanels)
			event_user(0)
		global.typer = 87
		global.msg[0] = scr_gettext("obj_asrielfinal_894")
	}
	if (turns == 10)
	{
		with (mypart1)
			bodyfader += 0.2
		with (obj_asrielpanels)
			event_user(0)
		global.typer = 87
		global.msg[0] = scr_gettext("obj_asrielfinal_903")
	}
	if (turns == 11)
	{
		with (mypart1)
			bodyfader += 0.2
		with (obj_asrielpanels)
			event_user(0)
		global.typer = 87
		global.msg[0] = scr_gettext("obj_asrielfinal_911")
		endcon = 1
	}
	blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
	blcon.depth = -2000
	blconwd.depth = -2200
	global.border = 17
	if (turns == 6)
		global.border = 4
	obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
	obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
}
