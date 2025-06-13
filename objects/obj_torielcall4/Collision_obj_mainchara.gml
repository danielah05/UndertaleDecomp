if (global.interact == 0)
{
	snd_play(snd_phone)
	global.typer = 5
	global.facechoice = 0
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_torielcall4_88")
	global.msg[1] = scr_gettext("obj_torielcall4_89")
	global.msg[2] = scr_gettext("obj_torielcall4_90")
	global.msg[3] = scr_gettext("obj_torielcall4_91")
	global.msg[4] = scr_gettext("obj_torielcall4_92")
	global.msg[5] = scr_gettext("obj_torielcall4_93")
	global.msg[6] = scr_gettext("obj_torielcall4_94")
	global.msg[7] = scr_gettext("obj_torielcall4_95")
	scr_writetext(0, "x", 0, 0)
	global.interact = 1
	scr_phoneget(202)
}
