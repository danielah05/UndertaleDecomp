if (bonetalk4 == 1)
{
	global.msg[0] = scr_gettext("obj_papyrusboss_270")
	if (murder == 1)
		global.msg[0] = scr_gettext("obj_papyrusboss_272")
	global.typer = 22
	blcon = instance_create((x + 145), (y + 52), obj_blconwdflowey)
	blconwdS = instance_create((blcon.x + blcon_textofs), (blcon.y + 10), OBJ_NOMSCWRITER)
	bonetalk4 = 2
}
if (bonetalk4 == 3)
{
	global.msg[0] = scr_gettext("obj_papyrusboss_282")
	if (murder == 1)
	{
		global.msg[0] = scr_gettext("obj_papyrusboss_285")
		global.msg[1] = scr_gettext("obj_papyrusboss_286")
		global.msg[2] = scr_gettext("obj_papyrusboss_287")
		global.msg[3] = scr_gettext("obj_papyrusboss_288")
		global.msg[4] = scr_gettext("obj_papyrusboss_289")
	}
	global.typer = 22
	blcon = instance_create((x + 145), (y + 104), obj_blconwdflowey)
	blconwdS = instance_create((blcon.x + blcon_textofs), (blcon.y + 10), OBJ_NOMSCWRITER)
	bonetalk4 = 3.5
}
alarm[10] = 2
if (bonetalk4 == 5)
{
	bonetalk4 = 6
	event_user(2)
	alarm[10] = -2
}
if (bonetalk4 == 4)
{
	global.xp += 200
	dh.c = 7
	global.kills += 1
	alarm[10] = 150
	bonetalk4 = 5
}
if (bonetalk4 == 3.5 && instance_exists(OBJ_WRITER) == false)
{
	with (blcon)
		instance_destroy()
	bonetalk4 = 4
	alarm[10] = 100
}
if (bonetalk4 == 2.5)
{
	dh.c = 5
	bonetalk4 = 3
	alarm[10] = 80
}
if (bonetalk4 == 2 && instance_exists(OBJ_WRITER) == false)
{
	dh.c = 4
	db.c = 4
	with (blcon)
		instance_destroy()
	alarm[10] = 30
	bonetalk4 = 2.5
}
if (bonetalk4 == 0)
{
	dh.c = 1
	alarm[10] = 60
	bonetalk4 = 1
}
