if (ditch == 1 && global.mnfight > 0)
{
	talked = false
	if (image_alpha > 0.05)
		image_alpha -= 0.05
	thisturn2 = (global.turn - thisturn)
	if (thisturn2 >= 2 && scr_monstersum() > 0)
		ditch = 0
	global.monster[myself] = false
}
if (ditch == 0)
{
	global.monster[myself] = true
	if (image_alpha < 1)
		image_alpha += 0.05
}
if (global.mnfight == 3)
	attacked = 0
scr_blconmatch()
if (global.mnfight == 1)
{
	if (talked == false)
	{
		alarm[5] = 100
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
	shudder = 16
	alarm[3] = global.damagetimer
	global.hurtanim[myself] = 3
}
if (global.hurtanim[myself] == 2)
{
	global.monsterhp[myself] -= ceil((takedamage / 5))
	with (dmgwriter)
		alarm[2] = 15
	if (global.monsterhp[myself] >= 1)
	{
		global.hurtanim[myself] = 0
		sprite_index = normalgfx
		image_index = 0
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
		if (ditch == 0)
		{
			if (scr_monstersum() > 1)
			{
				if (global.turntimer < 1)
					global.turntimer = 1
				alarm[10] = 10
			}
			else
				global.mnfight = 3
		}
		if (mycommand < 50)
		{
		}
		if (mycommand >= 50)
		{
		}
		if (ditch == 0)
		{
			if (mycommand >= 0)
				global.msg[0] = scr_gettext("obj_jerry_407")
			if (mycommand >= 25)
				global.msg[0] = scr_gettext("obj_jerry_408")
			if (mycommand >= 50)
				global.msg[0] = scr_gettext("obj_jerry_409")
			if (mycommand >= 75)
				global.msg[0] = scr_gettext("obj_jerry_410")
			if (mycommand >= 90)
				global.msg[0] = scr_gettext("obj_jerry_411")
			if (global.monsterhp[myself] < (global.monstermaxhp[myself] / 3))
				global.msg[0] = scr_gettext("obj_jerry_412")
		}
		if (ditch == 1 && thisturn2 == 0)
			global.msg[0] = scr_gettext("obj_jerry_414")
		if (ditch == 0 && thisturn2 == 2)
			global.msg[0] = scr_gettext("obj_jerry_415")
		attacked = 1
	}
}
if (whatiheard == 1 && instance_exists(OBJ_WRITER) == false)
{
	scr_mercystandard()
	if (mercy < 0)
	{
		killed = 0
		instance_destroy()
	}
}
if (global.myfight == 2 && ditch == 0)
{
	if (whatiheard != -1)
	{
		if (global.heard == 0)
		{
			if (whatiheard == 0)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_jerry_442")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 3)
			{
				global.msc = 0
				global.msg[0] = scr_gettext("obj_jerry_450")
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
				ditch = 1
				thisturn = global.turn
			}
			global.heard = 1
		}
	}
}
if (global.myfight == 4 && ditch == 0)
{
	if (global.mercyuse == false)
	{
		scr_mercystandard()
		if (mercy < 0)
			instance_destroy()
	}
}
