myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_saddragon_70")
global.msg[1] = scr_gettext("obj_saddragon_71")
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_saddragon_75")
	global.msg[1] = scr_gettext("obj_saddragon_76")
}
if (FL_KilledMettaton == 1)
{
	global.msg[0] = scr_gettext("obj_saddragon_81")
	global.msg[1] = scr_gettext("obj_saddragon_82")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
