myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_undynetrash_69")
if (room == room_water_blookyard)
{
	global.msg[0] = scr_gettext("obj_undynetrash_72")
	if (FL_StableStatus < 3)
	{
		FL_StableStatus = 3
		global.msg[0] = scr_gettext("obj_undynetrash_76")
		global.msg[1] = scr_gettext("obj_undynetrash_77")
		global.msg[2] = scr_gettext("obj_undynetrash_78")
		if instance_exists(obj_stable)
		{
			if (obj_stable.open == 0)
				obj_stable.open = 1
		}
	}
}
if (room == room_fire_lab1)
{
	global.msg[0] = scr_gettext("obj_undynetrash_87")
	if (global.plot < 126 && scr_murderlv() < MurderLevel.Lv12UndyneEXKilled)
		global.msg[0] = scr_gettext("obj_undynetrash_88")
	if (FL_DatedAlphys >= 10)
	{
		global.msg[0] = scr_gettext("obj_undynetrash_91")
		global.msg[1] = scr_gettext("obj_undynetrash_92")
		global.msg[2] = scr_gettext("obj_undynetrash_93")
		global.msg[3] = scr_gettext("obj_undynetrash_94")
	}
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
object_index.talkedto += 1
