global.msg[0] = scr_gettext("blt_sizebone_115")
if (FL_PapyrusStatus == PapyrusStatus.DefeatedOnce)
{
	global.msg[0] = scr_gettext("blt_sizebone_118")
	global.msg[1] = scr_gettext("blt_sizebone_119")
	global.msg[2] = scr_gettext("blt_sizebone_120")
	global.msg[3] = scr_gettext("blt_sizebone_121")
	global.msg[4] = scr_gettext("blt_sizebone_122")
	global.msg[5] = scr_gettext("blt_sizebone_123")
}
if (FL_PapyrusStatus == PapyrusStatus.DefeatedTwice)
{
	global.msg[0] = scr_gettext("blt_sizebone_127")
	global.msg[1] = scr_gettext("blt_sizebone_128")
	global.msg[2] = scr_gettext("blt_sizebone_129")
	global.msg[3] = scr_gettext("blt_sizebone_130")
	global.msg[4] = scr_gettext("blt_sizebone_131")
}
if (FL_PapyrusStatus == PapyrusStatus.DefeatedThrice)
{
	global.msg[0] = scr_gettext("blt_sizebone_136")
	global.msg[1] = scr_gettext("blt_sizebone_137")
	global.msg[2] = scr_gettext("blt_sizebone_138")
	global.msg[3] = scr_gettext("blt_sizebone_139")
	global.msg[4] = scr_gettext("blt_sizebone_140")
	global.msg[5] = scr_gettext("blt_sizebone_141")
	global.msg[6] = scr_gettext("blt_sizebone_142")
	global.msg[7] = scr_gettext("blt_sizebone_143")
	global.msg[8] = scr_gettext("blt_sizebone_144")
}
global.typer = 22
with (OBJ_WRITER)
	instance_destroy()
blcon = instance_create((obj_papyrusboss.x + 145), (obj_papyrusboss.y + 52), obj_blconwdflowey)
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_WRITER)
alarm[5] = 1
