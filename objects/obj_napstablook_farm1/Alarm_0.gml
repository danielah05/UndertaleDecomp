myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_napstablook_farm1_73")
global.msg[1] = scr_gettext("obj_napstablook_farm1_74")
global.msg[2] = scr_gettext("obj_napstablook_farm1_75")
global.msg[3] = scr_gettext("obj_napstablook_farm1_76")
global.msg[4] = scr_gettext("obj_napstablook_farm1_77")
global.msg[5] = scr_gettext("obj_napstablook_farm1_78")
global.msg[6] = scr_gettext("obj_napstablook_farm1_79")
if (talkedto > 0)
{
	global.msg[0] = scr_gettext("obj_napstablook_farm1_83")
	global.msg[1] = scr_gettext("obj_napstablook_farm1_84")
}
if (FL_UndyneStatus == UndyneStatus.Killed)
{
	global.msg[0] = scr_gettext("obj_napstablook_farm1_89")
	global.msg[1] = scr_gettext("obj_napstablook_farm1_90")
	global.msg[2] = scr_gettext("obj_napstablook_farm1_91")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
