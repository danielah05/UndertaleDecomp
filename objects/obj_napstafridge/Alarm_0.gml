myinteract = 3
global.msc = 612
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (room == room_water_blookhouse)
{
	if (scr_murderlv() >= MurderLevel.Lv10GladDummyKilled || (!instance_exists(obj_napstablook_actor)))
	{
		global.msc = 0
		global.msg[0] = scr_gettext("obj_napstafridge_75")
	}
	if (FL_NapstablookDateStatus >= 2) // Have you even layed down yet?
		mydialoguer = instance_create(0, 0, obj_dialoguer)
	else if instance_exists(obj_napstablookdate)
	{
		if (obj_napstablookdate.con < 11)
			obj_napstablookdate.con = 11
	}
}
if (room == room_fire_lab1)
{
	global.msc = 258
	if (global.plot < 126 && scr_murderlv() < MurderLevel.Lv12UndyneEXKilled)
	{
		global.msc = 0
		global.msg[0] = scr_gettext("obj_napstafridge_100")
	}
	mydialoguer = instance_create(0, 0, obj_dialoguer)
}
object_index.talkedto += 1
