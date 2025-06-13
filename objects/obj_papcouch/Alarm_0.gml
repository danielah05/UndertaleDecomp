myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (FL_GotCouchGold == 0)
{
	global.msg[0] = scr_gettext("obj_papcouch_62")
	global.msg[1] = scr_gettext("obj_papcouch_63")
	global.msg[2] = scr_gettext("obj_papcouch_64")
	global.gold += 20
	FL_GotCouchGold = 1
}
else
	global.msg[0] = scr_gettext("obj_papcouch_70")
read += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
