if (conversation == 2 && instance_exists(obj_dialoguer) == false)
{
	global.interact = 3
	obj_mainchara.y = 128
	obj_mainchara.visible = false
	obj_toroverworld3.sprite_index = spr_toriel_handhold_l
	obj_toroverworld3.lsprite = spr_toriel_handhold_l
	with (obj_mainchara)
		path_start(path_torielwalkbasement2, 5, path_action_stop, 0)
	with (obj_toroverworld3)
		path_start(path_torielwalkbasement2, 5, path_action_stop, 0)
	conversation = 3
}
if instance_exists(obj_toroverworld3)
{
	if (conversation == 1 && obj_toroverworld3.path_position == 1)
	{
		global.interact = 1
		myinteract = 3
		global.typer = 4
		global.facechoice = 1
		global.faceemotion = 2
		FL_DisobeyedTorielCount += 1
		FL_TorielStatus = TorielStatus.RuinsLeaveAttempt
		global.msc = 0
		if (FL_DisobeyedTorielCount == 1)
			global.msg[0] = scr_gettext("obj_torieltrigger8_77")
		if (FL_DisobeyedTorielCount == 2)
			global.msg[0] = scr_gettext("obj_torieltrigger8_78")
		if (FL_DisobeyedTorielCount == 3)
			global.msg[0] = scr_gettext("obj_torieltrigger8_79")
		if (FL_DisobeyedTorielCount == 4)
			global.msg[0] = scr_gettext("obj_torieltrigger8_80")
		if (FL_DisobeyedTorielCount == 5)
			global.msg[0] = scr_gettext("obj_torieltrigger8_81")
		if (FL_DisobeyedTorielCount == 6)
			global.msg[0] = scr_gettext("obj_torieltrigger8_82")
		if (FL_DisobeyedTorielCount == 7)
			global.msg[0] = scr_gettext("obj_torieltrigger8_83")
		if (FL_DisobeyedTorielCount == 8)
			global.msg[0] = scr_gettext("obj_torieltrigger8_84")
		if (FL_DisobeyedTorielCount == 9)
			global.msg[0] = scr_gettext("obj_torieltrigger8_85")
		if (FL_DisobeyedTorielCount > 9)
			global.msg[0] = scr_gettext("obj_torieltrigger8_86")
		if (global.plot < 19)
		{
			FL_DisobeyedTorielCount = 0
			global.msg[0] = scr_gettext("obj_torieltrigger8_90")
			global.msg[1] = scr_gettext("obj_torieltrigger8_91")
		}
		mydialoguer = instance_create(0, 0, obj_dialoguer)
		conversation = 2
	}
}
