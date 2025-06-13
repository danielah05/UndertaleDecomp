myinteract = 3
global.msc = 0
global.msg[0] = scr_gettext("obj_smallfrog_xadvice_59")
global.msg[1] = scr_gettext("obj_smallfrog_xadvice_60")
global.msg[2] = scr_gettext("obj_smallfrog_xadvice_61")
global.msg[3] = scr_gettext("obj_smallfrog_xadvice_62")
global.msg[4] = scr_gettext("obj_smallfrog_xadvice_63")
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_smallfrog_xadvice_67")
	global.msg[1] = scr_gettext("obj_smallfrog_xadvice_68")
	global.msg[2] = scr_gettext("obj_smallfrog_xadvice_69")
	global.msg[3] = scr_gettext("obj_smallfrog_xadvice_70")
	global.msg[4] = scr_gettext("obj_smallfrog_xadvice_71")
}
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
mydialoguer = instance_create(0, 0, obj_dialoguer)
