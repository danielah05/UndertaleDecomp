myinteract = 3
global.msc = 0
global.typer = 47
global.facechoice = 6
global.faceemotion = 0
global.faceemotion = 8
global.msg[0] = scr_gettext("obj_alphys_npc_76")
global.msg[1] = scr_gettext("obj_alphys_npc_77")
if (global.plot > 126 && room == room_fire_lab1)
{
	global.facechoice = 0
	global.typer = 5
	global.msg[0] = scr_gettext("obj_alphys_npc_82")
}
if (room == room_fire_core_metttest)
{
	FL_AlphysExpression = 1
	global.facechoice = 6
	global.faceemotion = 5
	global.msg[0] = scr_gettext("obj_alphys_npc_91")
}
if (room == room_fire_core_final)
{
	FL_AlphysExpression = 1
	global.facechoice = 6
	global.faceemotion = 5
	global.msg[0] = scr_gettext("obj_alphys_npc_99")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
