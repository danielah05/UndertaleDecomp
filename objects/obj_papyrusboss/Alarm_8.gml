if (bonetalk3 == 0)
{
	vol = caster_get_volume(global.batmusic)
	global.msg[0] = scr_gettext("obj_papyrusboss_402") // WELL...! *HUFF^1*& IT'S CLEAR...& YOU CAN'T^1! *HUFF^1*& DEFEAT ME!!!/
	global.msg[1] = scr_gettext("obj_papyrusboss_403") // YEAH!!!& I CAN SEE YOU& SHAKING IN YOUR& BOOTS!!!/
	global.msg[2] = scr_gettext("obj_papyrusboss_404") // THEREFORE I^1, THE& GREAT PAPYRUS^1,& ELECT TO GRANT& YOU PITY!!/
	global.msg[3] = scr_gettext("obj_papyrusboss_405") //\\X I WILL \\RSPARE\\X YOU,& HUMAN!!!/
	global.msg[4] = scr_gettext("obj_papyrusboss_406") // \\XNOW'S YOUR CHANCE& TO ACCEPT MY& \\RMERCY\\X./%%
	global.typer = 22
	blcon = instance_create((x + 145), (y + 52), obj_blconwdflowey)
	blconwdS = instance_create((blcon.x + blcon_textofs), (blcon.y + 10), OBJ_NOMSCWRITER)
	bonetalk3 = 1
}
alarm[8] = 2
if (bonetalk3 == 1 && instance_exists(OBJ_WRITER) == false)
{
	vol = 0
	with (blcon)
		instance_destroy()
	dontcancel = 0
	alarm[8] = -2
	bonetalk3 = 2
	mercymod = 8000
	global.msg[0] = scr_gettext("obj_papyrusboss_423") //* Papyrus is sparing you.
	global.monsterdef[myself] = ((-global.monsterhp[myself]) * 2)
}
if (!(variable_instance_exists(id, "vol")))
	vol = caster_get_volume(global.batmusic)
if (vol > 0.01)
	vol -= 0.01
caster_set_volume(global.batmusic, vol)
