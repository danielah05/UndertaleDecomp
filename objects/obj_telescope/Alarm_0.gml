myinteract = 3
global.msc = 549
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_telescope_71")
if (room == room_water11)
{
	global.msc = 0
	global.msg[0] = scr_gettext("obj_telescope_75")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
