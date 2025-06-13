myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_disembodiedfoxhead_60")
global.msg[1] = scr_gettext("obj_disembodiedfoxhead_61")
global.msg[2] = scr_gettext("obj_disembodiedfoxhead_62")
if (tt > 0)
	global.msg[0] = scr_gettext("obj_disembodiedfoxhead_63")
if (FL_CompletedShootPuzzle2 == 1)
{
	global.msg[0] = scr_gettext("obj_disembodiedfoxhead_67")
	global.msg[1] = scr_gettext("obj_disembodiedfoxhead_68")
}
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_disembodiedfoxhead_73")
	global.msg[1] = scr_gettext("obj_disembodiedfoxhead_74")
}
if (FL_KilledMettaton == 1)
	global.msg[0] = scr_gettext("obj_disembodiedfoxhead_79")
tt += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
