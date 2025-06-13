if (global.mnfight == 3)
	attacked = 0
if (alarm[5] > 0)
{
	if (global.monster[0] == 1)
	{
		if (global.monsterinstance[0].alarm[5] > alarm[5])
			alarm[5] = global.monsterinstance[0].alarm[5]
	}
	if (global.monster[1] == 1)
	{
		if (global.monsterinstance[1].alarm[5] > alarm[5])
			alarm[5] = global.monsterinstance[1].alarm[5]
	}
	if (global.monster[2] == 1)
	{
		if (global.monsterinstance[2].alarm[5] > alarm[5])
			alarm[5] = global.monsterinstance[2].alarm[5]
	}
}
if (global.mnfight == 1)
{
	if (talked == false)
	{
		alarm[5] = 110
		alarm[6] = 1
		talked = true
		global.heard = 0
	}
}
if control_check_pressed(InteractButton)
{
	if (alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
		alarm[5] = 2
}
if (global.hurtanim[myself] == 1)
{
	shudder = 8
	alarm[3] = global.damagetimer
	global.hurtanim[myself] = 3
}
if (global.hurtanim[myself] == 2)
{
	with (dmgwriter)
		alarm[2] = 15
	if (global.monsterhp[myself] >= 1)
	{
		global.hurtanim[myself] = 0
		mypart1.pause = 0
		global.myfight = 0
		global.mnfight = 1
	}
	else
	{
		global.myfight = 0
		global.mnfight = 1
		killed = 1
		instance_destroy()
	}
}
if (global.hurtanim[myself] == 5)
{
	global.damage = 0
	instance_create(((x + (sprite_width / 2)) - 48), (y - 24), obj_dmgwriter)
	with (obj_dmgwriter)
		alarm[2] = 30
	global.myfight = 0
	global.mnfight = 1
	global.hurtanim[myself] = 0
}
if (global.mnfight == 2)
{
	if (attacked == 0)
	{
		pop = scr_monstersum()
		attacked = 1
	}
	if (mercymod == 999999)
	{
		global.turntimer = -1
		global.mnfight = 3
	}
	whatiheard = -1
}
if (global.myfight == 2)
{
	if (whatiheard != -1)
	{
		if (global.heard == 0)
		{
			if (whatiheard == 0)
			{
				global.msc = 0
				with (obj_monsterparent)
					totalmercy += 1
				mercyno += 1
				global.msg[0] = scr_gettext("obj_ripoff_asgore_488")
				global.msg[1] = scr_gettext("obj_ripoff_asgore_489")
				if (totalmercy >= 4)
				{
					global.msg[1] = scr_gettext("obj_ripoff_asgore_492")
					with (obj_ripoff_toriel)
						saved = 1
					global.mnfight = 5
					if (obj_ripoff_toriel.mercyno == 0)
					{
						global.msg[1] = scr_gettext("obj_ripoff_asgore_498")
						global.msg[2] = scr_gettext("obj_ripoff_asgore_499")
					}
				}
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				whatiheard = 9
			}
			if (whatiheard == 3)
			{
				global.msc = 0
				with (obj_monsterparent)
					totalmercy += 1
				mercyno += 1
				global.msg[0] = scr_gettext("obj_ripoff_asgore_517")
				global.msg[1] = scr_gettext("obj_ripoff_asgore_518")
				if (totalmercy >= 4)
				{
					global.msg[1] = scr_gettext("obj_ripoff_asgore_521")
					with (obj_ripoff_toriel)
						saved = 1
					global.mnfight = 5
					if (obj_ripoff_toriel.mercyno == 0)
					{
						global.msg[1] = scr_gettext("obj_ripoff_asgore_527")
						global.msg[2] = scr_gettext("obj_ripoff_asgore_528")
					}
				}
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 1)
			{
				global.msc = 0
				with (obj_monsterparent)
					totalmercy += 1
				mercyno += 1
				global.msg[0] = scr_gettext("obj_ripoff_asgore_543")
				global.msg[1] = scr_gettext("obj_ripoff_asgore_544")
				if (totalmercy >= 4)
				{
					global.msg[1] = scr_gettext("obj_ripoff_asgore_547")
					with (obj_ripoff_toriel)
						saved = 1
					global.mnfight = 5
					if (obj_ripoff_toriel.mercyno == 0)
					{
						global.msg[1] = scr_gettext("obj_ripoff_asgore_553")
						global.msg[2] = scr_gettext("obj_ripoff_asgore_554")
					}
				}
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 4)
			{
				global.msc = 0
				with (obj_monsterparent)
					totalmercy += 1
				mercyno += 1
				global.msg[0] = scr_gettext("obj_ripoff_asgore_569")
				global.msg[1] = scr_gettext("obj_ripoff_asgore_570")
				if (totalmercy >= 4)
				{
					global.msg[1] = scr_gettext("obj_ripoff_asgore_573")
					with (obj_ripoff_toriel)
						saved = 1
					global.mnfight = 5
					if (obj_ripoff_toriel.mercyno == 0)
					{
						global.msg[1] = scr_gettext("obj_ripoff_asgore_579")
						global.msg[2] = scr_gettext("obj_ripoff_asgore_580")
					}
				}
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			global.heard = 1
		}
	}
}
if (global.myfight == 4)
{
	if (global.mercyuse == false)
	{
		scr_mercystandard()
		if (mercy < 0)
			instance_destroy()
	}
}
if (mercymod == 222 && instance_exists(OBJ_WRITER) == false)
{
	scr_mercystandard()
	if (mercy < 0)
		instance_destroy()
}
