myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_sansdoor_98")
if (FL_GotSansRoomKey >= 1)
{
	global.msg[0] = scr_gettext("obj_sansdoor_102")
	con = 4
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
