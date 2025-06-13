myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_icecap_npcg_70")
global.msg[1] = scr_gettext("obj_icecap_npcg_71")
global.msg[2] = scr_gettext("obj_icecap_npcg_72")
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_icecap_npcg_77")
	global.msg[1] = scr_gettext("obj_icecap_npcg_78")
	global.msg[2] = scr_gettext("obj_icecap_npcg_79")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
