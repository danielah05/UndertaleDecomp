image_xscale = 50
conversation = 0
if (global.plot > 17)
	instance_destroy()
else
{
	global.typer = 4
	global.interact = 1
	global.facechoice = 1
	global.faceemotion = 0
	global.msc = 0
	alarm[0] = 1
	global.msg[0] = scr_gettext("obj_torieltrigger6_39")
	global.msg[1] = scr_gettext("obj_torieltrigger6_40")
	global.msg[2] = scr_gettext("obj_torieltrigger6_41")
	global.msg[3] = scr_gettext("obj_torieltrigger6_42")
	global.msg[4] = scr_gettext("obj_torieltrigger6_43")
	global.msg[5] = scr_gettext("obj_torieltrigger6_44")
	global.msg[6] = scr_gettext("obj_torieltrigger6_45")
	if (FL_Hardmode == true)
	{
		global.msg[0] = scr_gettext("obj_torieltrigger6_49")
		global.msg[1] = scr_gettext("obj_torieltrigger6_50")
		global.msg[2] = scr_gettext("obj_torieltrigger6_51")
		global.msg[3] = scr_gettext("obj_torieltrigger6_52")
		global.msg[4] = scr_gettext("obj_torieltrigger6_53")
		global.msg[5] = scr_gettext("obj_torieltrigger6_54")
		global.msg[6] = scr_gettext("obj_torieltrigger6_55")
		global.msg[7] = scr_gettext("obj_torieltrigger6_56")
	}
	instance_create(0, 0, obj_dialoguer)
	conversation = 1
}
volume = 1
fademusicout = 0
