if (global.interact == 0)
	dogtimer += 1
factor = 40
if (global.interact == 0 && dogtimer == (150 * factor))
{
	snd_play(snd_phone)
	global.msc = 0
	global.typer = 5
	global.facechoice = 0
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_tordogcall_64")
	global.msg[1] = scr_gettext("obj_tordogcall_65")
	global.msg[2] = scr_gettext("obj_tordogcall_66")
	global.msg[3] = scr_gettext("obj_tordogcall_67")
	global.msg[4] = scr_gettext("obj_tordogcall_68")
	global.msg[5] = scr_gettext("obj_tordogcall_69")
	global.msg[6] = scr_gettext("obj_tordogcall_70")
	global.msg[7] = scr_gettext("obj_tordogcall_71")
	global.interact = 1
	con = 1
	instance_create(0, 0, obj_dialoguer)
}
if (global.interact == 0 && dogtimer == (300 * factor))
{
	snd_play(snd_phone)
	global.msc = 0
	global.typer = 5
	global.facechoice = 0
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_tordogcall_84")
	global.msg[1] = scr_gettext("obj_tordogcall_85")
	global.msg[2] = scr_gettext("obj_tordogcall_86")
	global.msg[3] = scr_gettext("obj_tordogcall_87")
	global.msg[4] = scr_gettext("obj_tordogcall_88")
	global.msg[5] = scr_gettext("obj_tordogcall_89")
	global.msg[6] = scr_gettext("obj_tordogcall_90")
	global.msg[7] = scr_gettext("obj_tordogcall_91")
	global.msg[8] = scr_gettext("obj_tordogcall_92")
	global.msg[9] = scr_gettext("obj_tordogcall_93")
	global.msg[10] = scr_gettext("obj_tordogcall_94")
	global.msg[11] = scr_gettext("obj_tordogcall_95")
	global.interact = 1
	con = 1
	instance_create(0, 0, obj_dialoguer)
}
if (global.interact == 0 && dogtimer == (450 * factor))
{
	snd_play(snd_phone)
	global.msc = 0
	global.typer = 5
	global.facechoice = 0
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_tordogcall_109")
	global.msg[1] = scr_gettext("obj_tordogcall_110")
	global.msg[2] = scr_gettext("obj_tordogcall_111")
	global.msg[3] = scr_gettext("obj_tordogcall_112")
	global.msg[4] = scr_gettext("obj_tordogcall_113")
	global.msg[5] = scr_gettext("obj_tordogcall_114")
	global.msg[6] = scr_gettext("obj_tordogcall_115")
	global.msg[7] = scr_gettext("obj_tordogcall_116")
	global.msg[8] = scr_gettext("obj_tordogcall_117")
	global.msg[9] = scr_gettext("obj_tordogcall_118")
	global.msg[10] = scr_gettext("obj_tordogcall_119")
	global.interact = 1
	con = 1
	FL_WaitedOnTorielCall = 1
	instance_create(0, 0, obj_dialoguer)
	d = 0
	d_noise = 1
}
if (d_noise == 1 && instance_exists(OBJ_WRITER))
{
	if (OBJ_WRITER.stringno == 4 && d == 0)
	{
		d = 1
		snd_play(snd_pombark)
	}
	if (OBJ_WRITER.stringno == 5 && d == 1)
	{
		d = 2
		snd_play(snd_pombark)
	}
}
if (global.interact == 0 && dogtimer == (600 * factor))
{
	snd_play(snd_phone)
	global.msc = 0
	global.typer = 5
	global.facechoice = 0
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_tordogcall_150")
	global.msg[1] = scr_gettext("obj_tordogcall_151")
	global.msg[2] = scr_gettext("obj_tordogcall_152")
	global.msg[3] = scr_gettext("obj_tordogcall_153")
	global.msg[4] = scr_gettext("obj_tordogcall_154")
	global.msg[5] = scr_gettext("obj_tordogcall_155")
	global.msg[6] = scr_gettext("obj_tordogcall_156")
	global.msg[7] = scr_gettext("obj_tordogcall_157")
	global.msg[8] = scr_gettext("obj_tordogcall_158")
	global.msg[9] = scr_gettext("obj_tordogcall_159")
	global.msg[10] = scr_gettext("obj_tordogcall_160")
	global.msg[11] = scr_gettext("obj_tordogcall_161")
	global.msg[12] = scr_gettext("obj_tordogcall_162")
	global.interact = 1
	con = 1
	FL_WaitedOnTorielCall = 1
	instance_create(0, 0, obj_dialoguer)
}
if (global.interact == 0 && dogtimer == (750 * factor))
{
	snd_play(snd_phone)
	global.msc = 0
	global.typer = 5
	global.facechoice = 0
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_tordogcall_176")
	global.msg[1] = scr_gettext("obj_tordogcall_177")
	global.msg[2] = scr_gettext("obj_tordogcall_178")
	global.msg[3] = scr_gettext("obj_tordogcall_179")
	global.msg[4] = scr_gettext("obj_tordogcall_180")
	global.msg[5] = scr_gettext("obj_tordogcall_181")
	global.msg[6] = scr_gettext("obj_tordogcall_182")
	global.msg[7] = scr_gettext("obj_tordogcall_183")
	global.msg[8] = scr_gettext("obj_tordogcall_184")
	global.msg[9] = scr_gettext("obj_tordogcall_185")
	global.msg[10] = scr_gettext("obj_tordogcall_186")
	global.msg[11] = scr_gettext("obj_tordogcall_187")
	global.msg[12] = scr_gettext("obj_tordogcall_188")
	global.interact = 1
	con = 1
	FL_WaitedOnTorielCall = 1
	instance_create(0, 0, obj_dialoguer)
}
if (global.interact == 0 && dogtimer == (900 * factor))
{
	snd_play(snd_phone)
	global.msc = 0
	global.typer = 5
	global.facechoice = 0
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_tordogcall_203")
	global.msg[1] = scr_gettext("obj_tordogcall_204")
	global.msg[2] = scr_gettext("obj_tordogcall_205")
	global.msg[3] = scr_gettext("obj_tordogcall_206")
	global.msg[4] = scr_gettext("obj_tordogcall_207")
	global.msg[5] = scr_gettext("obj_tordogcall_208")
	global.msg[6] = scr_gettext("obj_tordogcall_209")
	global.msg[7] = scr_gettext("obj_tordogcall_210")
	global.msg[8] = scr_gettext("obj_tordogcall_211")
	global.msg[9] = scr_gettext("obj_tordogcall_212")
	global.msg[10] = scr_gettext("obj_tordogcall_213")
	global.msg[11] = scr_gettext("obj_tordogcall_214")
	global.msg[12] = scr_gettext("obj_tordogcall_215")
	global.interact = 1
	con = 1
	FL_WaitedOnTorielCall = 1
	instance_create(0, 0, obj_dialoguer)
}
if (global.interact == 0 && dogtimer == (1050 * factor))
{
	snd_play(snd_phone)
	global.msc = 0
	global.typer = 5
	global.facechoice = 0
	global.faceemotion = 0
	global.msg[0] = scr_gettext("obj_tordogcall_230")
	global.msg[1] = scr_gettext("obj_tordogcall_231")
	global.msg[2] = scr_gettext("obj_tordogcall_232")
	global.msg[3] = scr_gettext("obj_tordogcall_233")
	global.interact = 1
	con = 1
	FL_WaitedOnTorielCall = 1
	instance_create(0, 0, obj_dialoguer)
	dogtimer = (910 * factor)
}
if (con == 1)
{
	if (instance_exists(OBJ_WRITER) == false)
	{
		con = 0
		global.interact = 0
	}
}
