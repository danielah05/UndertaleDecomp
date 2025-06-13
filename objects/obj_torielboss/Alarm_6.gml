if (hplastturn == global.monsterhp[myself] && global.talked == -1)
{
	conversation += 1
	iwilltalk = 1
}
else
	iwilltalk = 0
hplastturn = global.monsterhp[myself]
if (global.monsterhp[myself] > 0)
{
	if (iwilltalk == 1)
	{
		global.turntimer = -300
		alarm[5] += 70
		if (conversation == 1)
			global.msg[0] = scr_gettext("obj_torielboss_366")
		if (conversation == 2)
			global.msg[0] = scr_gettext("obj_torielboss_367")
		if (conversation == 3)
			global.msg[0] = scr_gettext("obj_torielboss_368")
		if (conversation == 4)
			global.msg[0] = scr_gettext("obj_torielboss_369")
		if (conversation == 5)
			global.msg[0] = scr_gettext("obj_torielboss_370")
		if (conversation == 6)
			global.msg[0] = scr_gettext("obj_torielboss_371")
		if (conversation == 7)
			global.msg[0] = scr_gettext("obj_torielboss_372")
		if (conversation == 8)
			global.msg[0] = scr_gettext("obj_torielboss_373")
		if (conversation == 9)
			global.msg[0] = scr_gettext("obj_torielboss_374")
		if (conversation == 10)
			sideface = 1
		if (conversation == 10)
			global.msg[0] = scr_gettext("obj_torielboss_376")
		if (conversation == 11)
			global.msg[0] = scr_gettext("obj_torielboss_377")
		if (conversation == 12)
			global.msg[0] = scr_gettext("obj_torielboss_378")
		if (conversation == 12)
			sprite_index = spr_torielboss_side
		if (conversation == 13)
			global.msg[0] = scr_gettext("obj_torielboss_380")
		if (conversation == 13)
			sprite_index = spr_torielboss_sidesad
		if (conversation > 13)
		{
			alarm[5] += 400
			if (conversation == 14)
				caster_free(global.batmusic)
			global.mercy = 1
			if (conversation == 14)
				sprite_index = spr_torielboss_sad
			if (conversation == 14)
				global.msg[0] = scr_gettext("obj_torielboss_388")
			if (conversation > 15)
				sprite_index = spr_torielboss_sadhappy
			if (conversation == 15)
				global.msg[0] = scr_gettext("obj_torielboss_390")
			if (conversation == 16)
				global.msg[0] = scr_gettext("obj_torielboss_391")
			if (conversation == 17)
				global.msg[0] = scr_gettext("obj_torielboss_392")
			if (conversation == 18)
				global.msg[0] = scr_gettext("obj_torielboss_393")
			if (conversation == 19)
				sprite_index = spr_torielboss_sad
			if (conversation == 19)
				global.msg[0] = scr_gettext("obj_torielboss_395")
			if (conversation == 20)
				sprite_index = spr_torielboss_sidesad
			if (conversation == 20)
				global.msg[0] = scr_gettext("obj_torielboss_397")
			if (conversation == 21)
				sprite_index = spr_torielboss_sidesad2
			if (conversation == 21)
				global.msg[0] = scr_gettext("obj_torielboss_399")
			if (conversation == 22)
				sprite_index = spr_torielboss_sidesadhappy
			if (conversation == 22)
				global.msg[0] = scr_gettext("obj_torielboss_401")
			if (conversation == 23)
				global.msg[0] = scr_gettext("obj_torielboss_402")
			if (conversation == 24)
				global.msg[0] = scr_gettext("obj_torielboss_403")
			if (conversation == 24)
				sprite_index = spr_torielboss_sidesad
			if (conversation == 25)
			{
				FL_SparedSpecific = 1
				sprite_index = spr_torielboss_neutral
				alarm[5] = -6
				conversation = 99
				FL_TorielStatus = TorielStatus.Spared
				ossafe_ini_open("undertale.ini")
				TS = ini_read_real("Toriel", "TS", 0)
				ini_write_real("Toriel", "TS", (TS + 1))
				ossafe_ini_close()
				ossafe_savedata_save()
				global.msg[0] = scr_gettext("obj_torielboss_416")
				global.msg[1] = scr_gettext("obj_torielboss_417")
				global.msg[2] = scr_gettext("obj_torielboss_418")
				global.msg[3] = scr_gettext("obj_torielboss_419")
				global.msg[4] = scr_gettext("obj_torielboss_420")
				global.msg[5] = scr_gettext("obj_torielboss_421")
				global.mnfight = 99
				global.myfight = 0
			}
			blcon = instance_create(((x + sprite_width) + 3), (y + 32), obj_blconwdflowey)
			global.typer = 8
			blconwd = instance_create((obj_blconwdflowey.x + 36), (obj_blconwdflowey.y + 10), OBJ_NOMSCWRITER)
		}
		else
			blcon = instance_create(((x + sprite_width) + 21), (ystart + 24), obj_blconsm)
		global.typer = 8
		if instance_exists(obj_blconsm)
			blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
	}
}
else
{
	destroyed = 1
	global.faceemotion = 0
	caster_free(global.batmusic)
	if instance_exists(dmgwriter)
	{
		with (dmgwriter)
			instance_destroy()
	}
	blcon = instance_create(((x + sprite_width) + 2), (y + 36), obj_blconwdflowey)
	global.msc = 0
	global.msg[0] = scr_gettext("obj_torielboss_445")
	global.msg[1] = scr_gettext("obj_torielboss_446")
	global.msg[2] = scr_gettext("obj_torielboss_447")
	global.msg[3] = scr_gettext("obj_torielboss_448")
	global.msg[4] = scr_gettext("obj_torielboss_449")
	global.msg[5] = scr_gettext("obj_torielboss_450")
	global.msg[6] = scr_gettext("obj_torielboss_451")
	global.msg[7] = scr_gettext("obj_torielboss_452")
	global.msg[8] = scr_gettext("obj_torielboss_453")
	global.msg[9] = scr_gettext("obj_torielboss_454")
	global.msg[10] = scr_gettext("obj_torielboss_455")
	global.msg[11] = scr_gettext("obj_torielboss_456")
	if (FL_RuinsKillsCounter >= 20)
	{
		global.faceemotion = 4
		global.msg[0] = scr_gettext("obj_torielboss_460")
		global.msg[1] = scr_gettext("obj_torielboss_461")
		global.msg[2] = scr_gettext("obj_torielboss_462")
		global.msg[3] = scr_gettext("obj_torielboss_463")
		global.msg[4] = scr_gettext("obj_torielboss_464")
	}
	if (conversation > 13)
	{
		global.faceemotion = 4
		global.msg[0] = scr_gettext("obj_torielboss_469")
		global.msg[1] = scr_gettext("obj_torielboss_470")
		global.msg[2] = scr_gettext("obj_torielboss_471")
		global.msg[3] = scr_gettext("obj_torielboss_472")
		global.msg[4] = scr_gettext("obj_torielboss_473")
	}
	global.plot = 11
	conversation = 1
	image_speed = 0.2
	global.typer = 12
	blconwriter = instance_create((obj_blconwdflowey.x + 36), (obj_blconwdflowey.y + 10), OBJ_WRITER)
	alarm[9] = 2
}
mycommand = round(random(100))
global.border = 6
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
