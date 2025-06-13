if (obj_heart.sprite_index == spr_heartgreen && died == 0)
{
	if (global.monsterhp[myself] < (global.monstermaxhp[myself] * 0.75) && lesson < 5)
	{
		lesson = 6
		order = 6
		damagecause = 1
	}
	if (global.monsterhp[myself] < (global.monstermaxhp[myself] * 0.5) && lesson < 11)
	{
		lesson = 11
		order = 12
		damagecause = 2
	}
	if (global.monsterhp[myself] < (global.monstermaxhp[myself] * 0.2) && lesson < 20)
	{
		lesson = 20
		order = 22
		damagecause = 3
		rating += 2
	}
}
if (order == 12 && FL_UndyneDifficultyCounter < 2)
	FL_UndyneDifficultyCounter = 2
if (order == 22 && FL_UndyneDifficultyCounter < 3)
	FL_UndyneDifficultyCounter = 3
if (lesson > 19 && obj_heart.sprite_index == spr_heart && defadjust == 0)
{
	global.monsterdef[myself] = -15
	if (global.monsterhp[myself] > (global.monstermaxhp[myself] * 0.3))
		global.monsterdef[myself] = -25
	if (global.monsterhp[myself] > (global.monstermaxhp[myself] * 0.4))
		global.monsterdef[myself] = -35
	if (global.monsterhp[myself] > (global.monstermaxhp[myself] * 0.5))
		global.monsterdef[myself] = -50
	if (global.monsterhp[myself] > (global.monstermaxhp[myself] * 0.75))
		global.monsterdef[myself] = -70
	if (global.monsterhp[myself] == global.monstermaxhp[myself])
		global.monsterdef[myself] = -90
	defadjust = 1
}
blcontype = 0
uncancel = 0
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = scr_gettext("obj_undyneboss_401")
if (mycommand < 20)
	global.msg[0] = scr_gettext("obj_undyneboss_402")
if (mycommand < 40)
	global.msg[0] = scr_gettext("obj_undyneboss_403")
if (mycommand < 60)
	global.msg[0] = scr_gettext("obj_undyneboss_404")
if (mycommand < 80)
	global.msg[0] = scr_gettext("obj_undyneboss_405")
if (mycommand < 100)
	global.msg[0] = scr_gettext("obj_undyneboss_406")
if (damagecause > 0)
{
	if (damagecause == 1)
		global.msg[0] = scr_gettext("obj_undyneboss_410")
	if (damagecause == 2)
		global.msg[0] = scr_gettext("obj_undyneboss_411")
	if (damagecause == 3)
		global.msg[0] = scr_gettext("obj_undyneboss_412")
	blcontype = 1
}
global.msg[1] = scr_gettext("obj_undyneboss_416")
global.typer = 39
if (order > 0)
{
	if (order == 1)
	{
		uncancel = 1
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_427")
		global.msg[1] = scr_gettext("obj_undyneboss_428")
		global.msg[2] = scr_gettext("obj_undyneboss_429")
	}
	if (order == 2)
	{
		uncancel = 1
		blcontype = 1
		if (mercied > 0)
			global.msg[0] = scr_gettext("obj_undyneboss_437")
		global.msg[1] = scr_gettext("obj_undyneboss_438")
		global.msg[0] = scr_gettext("obj_undyneboss_439")
		if (hitno > 0 && hitfirst == 3)
		{
			global.msg[0] = scr_gettext("obj_undyneboss_442")
			global.msg[1] = scr_gettext("obj_undyneboss_443")
			global.msg[2] = scr_gettext("obj_undyneboss_444")
			global.msg[3] = scr_gettext("obj_undyneboss_445")
			global.msg[4] = scr_gettext("obj_undyneboss_446")
			global.msg[5] = scr_gettext("obj_undyneboss_447")
			global.msg[6] = scr_gettext("obj_undyneboss_448")
			global.msg[7] = scr_gettext("obj_undyneboss_449")
			rating = 6
			berserk = 1
			order = 12
			lesson = 11
			hitfirst += 1
		}
		if (hitno > 0 && hitfirst == 2)
		{
			global.msg[0] = scr_gettext("obj_undyneboss_459")
			global.msg[1] = scr_gettext("obj_undyneboss_460")
			global.msg[2] = scr_gettext("obj_undyneboss_461")
			global.msg[3] = scr_gettext("obj_undyneboss_462")
			order = 1
			lesson = 1
			hitfirst += 1
		}
		if (hitno > 0 && hitfirst == 1)
		{
			global.msg[0] = scr_gettext("obj_undyneboss_470")
			global.msg[1] = scr_gettext("obj_undyneboss_471")
			global.msg[2] = scr_gettext("obj_undyneboss_472")
			global.msg[3] = scr_gettext("obj_undyneboss_473")
			order = 1
			lesson = 1
			hitfirst += 1
		}
		if (hitno > 0 && hitfirst == 0)
		{
			global.msg[0] = scr_gettext("obj_undyneboss_481")
			global.msg[1] = scr_gettext("obj_undyneboss_482")
			global.msg[2] = scr_gettext("obj_undyneboss_483")
			order = 1
			lesson = 1
			hitfirst += 1
		}
	}
	if (order == 3)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_496")
	}
	if (order == 4)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_501")
	}
	if (order == 5)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_506")
	}
	if (order == 6)
	{
		global.msg[0] = scr_gettext("obj_undyneboss_510")
		blcontype = 1
		uncancel = 1
	}
	if (order == 7)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_515")
		if (mercied > 0)
		{
			uncancel = 1
			global.msg[0] = scr_gettext("obj_undyneboss_519")
			global.msg[1] = scr_gettext("obj_undyneboss_520")
		}
	}
	if (order == 8)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_528")
		if (mercied > 0)
			global.msg[0] = scr_gettext("obj_undyneboss_530")
	}
	if (order == 9)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_538")
	}
	if (order == 10)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_546")
	}
	if (order == 11)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_554")
	}
	if (FL_UndyneDifficultyCounter > 1)
	{
		if (order == 9)
		{
			blcontype = 1
			global.msg[0] = scr_gettext("obj_undyneboss_563")
		}
		if (order == 10)
		{
			blcontype = 1
			global.msg[0] = scr_gettext("obj_undyneboss_570")
		}
		if (order == 11)
		{
			blcontype = 1
			global.msg[0] = scr_gettext("obj_undyneboss_577")
		}
	}
	if (order == 12 && hitfirst < 3)
	{
		global.msg[0] = scr_gettext("obj_undyneboss_582")
		blcontype = 1
		uncancel = 1
	}
	if (order == 13)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_587")
	}
	if (order == 14)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_593")
	}
	if (order == 15)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_599")
	}
	if (order == 16)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_605")
	}
	if (order == 17)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_611")
	}
	if (order == 18)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_616")
	}
	if (order == 19)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_622")
	}
	if (order == 20)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_628")
	}
	if (order == 21)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_634")
	}
	if (order == 22)
	{
		global.msg[0] = scr_gettext("obj_undyneboss_639")
		blcontype = 1
		uncancel = 1
	}
	if (order == 23)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_656")
		if (mercied > 0)
			global.msg[0] = scr_gettext("obj_undyneboss_658")
	}
	if (order == 24)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_664")
		if (mercied > 0)
			global.msg[0] = scr_gettext("obj_undyneboss_666")
	}
	if (order > 24)
	{
		blcontype = 1
		global.msg[0] = scr_gettext("obj_undyneboss_672")
	}
}
if (order < 0)
{
	if (order == -40)
		global.msg[0] = scr_gettext("obj_undyneboss_682")
	if (order == -39)
	{
		global.msg[0] = scr_gettext("obj_undyneboss_686")
		global.msg[1] = scr_gettext("obj_undyneboss_687")
	}
	if (order == -38)
		global.msg[0] = scr_gettext("obj_undyneboss_691")
	if (order == -37)
	{
		global.msg[0] = scr_gettext("obj_undyneboss_695")
		global.msg[1] = scr_gettext("obj_undyneboss_696")
	}
	if (order == -36)
	{
		global.msg[0] = scr_gettext("obj_undyneboss_700")
		global.msg[1] = scr_gettext("obj_undyneboss_701")
	}
	if (order == -35)
		global.msg[0] = scr_gettext("obj_undyneboss_705")
	blcontype = 1
	uncancel = 1
}
if (blcontype == 0)
	blcon = instance_create((x + 245), (y + 52), obj_blconsm)
if (blcontype == 1)
	blcon = instance_create(blconx, blcony, obj_blconwdflowey)
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
blconwd.writingxend += 10
if (mycommand > 50 && obj_heart.sprite_index != spr_heartgreen)
	borderspec = 1
else
	borderspec = 0
global.border = 6
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
if (obj_heart.sprite_index == spr_heartgreen)
{
	global.border = 13
	obj_heart.x = ((room_width / 2) - 8)
	obj_heart.y = (obj_uborder.y + 34)
	greenlock = 1
}
else if (borderspec == 1)
{
	obj_heart.x = ((room_width / 2) - 8)
	obj_heart.y = (obj_uborder.y + 34)
	global.border = 14
}
damagecause = 0
