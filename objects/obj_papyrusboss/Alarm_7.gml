if (bonetalk == 0)
{
	global.msg[0] = scr_gettext("obj_papyrusboss_456")
	global.msg[1] = scr_gettext("obj_papyrusboss_457")
	global.typer = 22
	blcon = instance_create((x + 145), (y + 52), obj_blconwdflowey)
	blconwdS = instance_create((blcon.x + blcon_textofs), (blcon.y + 10), OBJ_NOMSCWRITER)
	bonetalk = 1
}
if (bonetalk == 1 && instance_exists(OBJ_WRITER) == false)
{
	global.msg[0] = scr_gettext("obj_papyrusboss_466")
	global.typer = 22
	blconwdS = instance_create((blcon.x + blcon_textofs), (blcon.y + 10), OBJ_NOMSCWRITER)
	bonetalk = 2
	blt_tobydogbone.sprite_index = spr_tobydogsurprise
	blt_tobydogbone.image_index = 0
	blt_tobydogbone.image_speed = 0
}
if (bonetalk == 2 && instance_exists(OBJ_WRITER) == false)
{
	global.msg[0] = scr_gettext("obj_papyrusboss_477")
	global.msg[1] = scr_gettext("obj_papyrusboss_478")
	global.typer = 22
	blconwdS = instance_create((blcon.x + blcon_textofs), (blcon.y + 10), OBJ_NOMSCWRITER)
	bonetalk = 3
	blt_tobydogbone.image_index = 1
}
if (bonetalk == 3 && instance_exists(OBJ_WRITER) == false)
{
	global.msg[0] = scr_gettext("obj_papyrusboss_487")
	global.msg[1] = scr_gettext("obj_papyrusboss_488")
	global.typer = 22
	blconwdS = instance_create((blcon.x + blcon_textofs), (blcon.y + 10), OBJ_NOMSCWRITER)
	bonetalk = 4
	blt_tobydogbone.image_speed = 0.2
	blt_tobydogbone.sprite_index = spr_tobydogscoot
	blt_tobydogbone.hspeed = 1
}
if (bonetalk == 4 && instance_exists(OBJ_WRITER) == false)
{
	global.border = 5
	global.msg[0] = scr_gettext("obj_papyrusboss_502")
	global.msg[1] = scr_gettext("obj_papyrusboss_503")
	global.msg[2] = scr_gettext("obj_papyrusboss_504")
	global.typer = 22
	blconwdS = instance_create((blcon.x + blcon_textofs), (blcon.y + 10), OBJ_NOMSCWRITER)
	bonetalk = 5
}
alarm[7] = 2
if (bonetalk == 5 && instance_exists(OBJ_WRITER) == false)
{
	global.msg[0] = scr_gettext("obj_papyrusboss_514")
	with (blcon)
		instance_destroy()
	with (blt_tobydogbone)
		instance_destroy()
	dontcancel = 0
	alarm[7] = -2
}
