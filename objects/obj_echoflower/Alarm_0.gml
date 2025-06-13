myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_echoflower_96")
if (room == room_water2)
{
	if instance_exists(obj_npc_room)
	{
		if (obj_npc_room.talkedto == 0)
		{
			global.msg[0] = scr_gettext("obj_echoflower_104")
			global.msg[1] = scr_gettext("obj_echoflower_105")
			v = 1
		}
		if (obj_npc_room.talkedto == 1 && v == 0)
			global.msg[0] = scr_gettext("obj_echoflower_110")
		if (obj_npc_room.talkedto > 1 && v == 0)
			global.msg[0] = scr_gettext("obj_echoflower_114")
		if (obj_npc_room.talkedto > 0 && v == 1)
			global.msg[0] = scr_gettext("obj_echoflower_118")
	}
	else
		global.msg[0] = scr_gettext("obj_echoflower_123")
}
if (room == room_water3)
{
	if (x < (room_width / 2))
		global.msg[0] = scr_gettext("obj_echoflower_130")
	if (x > (room_width / 2))
		global.msg[0] = scr_gettext("obj_echoflower_131")
}
if (room == room_water5A)
	global.msg[0] = scr_gettext("obj_echoflower_135")
if (room == room_water6)
{
	if (x > 40)
	{
		global.msg[0] = scr_gettext("obj_echoflower_141")
		global.msg[1] = scr_gettext("obj_echoflower_142")
		global.msg[2] = scr_gettext("obj_echoflower_143")
		if (scr_murderlv() >= MurderLevel.Lv8PapyrusKilled)
			global.msg[0] = scr_gettext("obj_echoflower_145")
	}
	if (x > 180)
	{
		global.msg[0] = scr_gettext("obj_echoflower_150")
		global.msg[1] = scr_gettext("obj_echoflower_151")
		if (scr_murderlv() >= MurderLevel.Lv8PapyrusKilled)
			global.msg[0] = scr_gettext("obj_echoflower_153")
	}
	if (x > 280)
		global.msg[0] = scr_gettext("obj_echoflower_156")
	if (x > 380)
		global.msg[0] = scr_gettext("obj_echoflower_157")
	if (x > 620)
		global.msg[0] = scr_gettext("obj_echoflower_159")
	if (scr_murderlv() >= MurderLevel.Lv8PapyrusKilled || FL_UndyneStatus == UndyneStatus.Killed)
		global.msg[0] = scr_gettext("obj_echoflower_161")
}
if (room == room_water7)
{
	if (x < (room_width / 2))
		global.msg[0] = scr_gettext("obj_echoflower_166")
}
if (room == room_water_savepoint1)
{
	global.msg[0] = scr_gettext("obj_echoflower_171")
	if (scr_murderlv() >= MurderLevel.Lv8PapyrusKilled)
		global.msg[0] = scr_gettext("obj_echoflower_173")
}
if (room == room_water12)
{
	global.msg[0] = scr_gettext("obj_echoflower_178")
	global.msg[1] = scr_gettext("obj_echoflower_179")
	if (x < 700 && y < 360)
	{
		global.msg[0] = scr_gettext("obj_echoflower_183")
		global.msg[1] = scr_gettext("obj_echoflower_184")
	}
	if (x < 700 && y > 360)
	{
		global.msg[0] = scr_gettext("obj_echoflower_189")
		global.msg[1] = scr_gettext("obj_echoflower_190")
		global.msg[2] = scr_gettext("obj_echoflower_191")
	}
	if (scr_murderlv() >= MurderLevel.Lv8PapyrusKilled || FL_UndyneStatus == UndyneStatus.Killed)
		global.msg[0] = scr_gettext("obj_echoflower_194")
}
if (room == room_water_shoe)
	global.msg[0] = scr_gettext("obj_echoflower_199")
if (room == room_water19)
{
	global.msg[0] = scr_gettext("obj_echoflower_205")
	if (y == 160)
	{
		global.msg[0] = scr_gettext("obj_echoflower_209")
		global.msg[1] = scr_gettext("obj_echoflower_210")
		global.msg[2] = scr_gettext("obj_echoflower_211")
	}
	if (y == 240)
	{
		global.msg[0] = scr_gettext("obj_echoflower_217")
		global.msg[1] = scr_gettext("obj_echoflower_218")
	}
	if (y == 320)
	{
		global.msg[0] = scr_gettext("obj_echoflower_223")
		global.msg[1] = scr_gettext("obj_echoflower_224")
		global.msg[2] = scr_gettext("obj_echoflower_225")
	}
	if (y == 420)
	{
		global.msg[0] = scr_gettext("obj_echoflower_230")
		global.msg[1] = scr_gettext("obj_echoflower_231")
	}
	if (y > 450)
	{
		global.msg[0] = scr_gettext("obj_echoflower_236")
		global.msg[1] = scr_gettext("obj_echoflower_237")
	}
	if (xxx == 1 && y == 420)
	{
		global.typer = 4
		global.msg[0] = scr_gettext("obj_echoflower_243")
		global.msg[1] = scr_gettext("obj_echoflower_244")
		global.msg[2] = scr_gettext("obj_echoflower_245")
		global.msg[3] = scr_gettext("obj_echoflower_246")
		global.msg[4] = scr_gettext("obj_echoflower_247")
		global.msg[5] = scr_gettext("obj_echoflower_248")
		global.msg[6] = scr_gettext("obj_echoflower_249")
		if (FL_TorielStatus == TorielStatus.Killed)
		{
			global.typer = 4
			global.msg[0] = scr_gettext("obj_echoflower_253")
			global.msg[1] = scr_gettext("obj_echoflower_254")
			global.msg[2] = scr_gettext("obj_echoflower_255")
			global.msg[3] = scr_gettext("obj_echoflower_256")
			global.msg[4] = scr_gettext("obj_echoflower_257")
		}
	}
	if (scr_murderlv() >= MurderLevel.Lv8PapyrusKilled || FL_UndyneStatus == UndyneStatus.Killed)
		global.msg[0] = scr_gettext("obj_echoflower_262")
}
if (room == room_fire_conveyorlaser)
	global.msg[0] = scr_gettext("obj_echoflower_301")
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
