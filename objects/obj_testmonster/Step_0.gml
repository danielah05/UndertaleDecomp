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
		alarm[5] = 60
		alarm[6] = 1
		talked = true
		global.heard = 0
	}
}
if control_check_pressed(InteractButton)
{
	if (alarm[5] > 5 && obj_lborder.x == global.idealborder[0])
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
	global.monsterhp[myself] -= takedamage
	with (dmgwriter)
		alarm[2] = 15
	if (global.monsterhp[myself] >= 1)
	{
		mypart1 = instance_create(x, y, obj_froghead)
		mypart2 = instance_create(x, y, obj_froglegs)
		global.hurtanim[myself] = 0
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
		global.turntimer = 100
		global.firingrate = 20
		gen = instance_create(x, y, obj_1sidegen)
		if (mycommand >= 0)
			global.msg[0] = "* You feel intimidated by the&strength of this adversary.^4 &* Just kidding."
		if (mycommand >= 20)
			global.msg[0] = "* The enemy cooks a small&bowl of flies."
		if (mycommand >= 40)
			global.msg[0] = "* You can't concentrate&over the sound of croaking."
		if (mycommand >= 60)
			global.msg[0] = "* The battlefield is filled with the smell of mustard seed."
		if (mycommand >= 80)
			global.msg[0] = "* You think hard about words&that rhyme with frog.^4 &* Log.^4 Dog.^4 Snog.^4 Pog?"
		if (mycommand >= 90)
			global.msg[0] = "* A frog can't lick its&wounds because its tongue is&just too stretchy."
		attacked = 1
	}
}
if (global.myfight == 2)
{
	if (whatiheard != -1)
	{
		if (global.heard == 0)
		{
			if (whatiheard == 1)
			{
				global.msc = 0
				global.msg[0] = "* You say some raunchy&things to those frogs.&Jeeeez!/"
				global.msg[1] = "* There's definitely some&sort of reaction./^"
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 3)
			{
				global.myfight = 0
				global.mnfight = 1
				obj_writer_set_halt(3)
			}
			if (whatiheard == 0)
			{
				global.myfight = 3
				global.bmenuno = 6
				global.msc = 0
				global.msg[0] = "* What's your favorite color?& &    * Red           * Orange"
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
				with (iii)
					halt = 0
			}
			if (whatiheard == 6)
			{
				global.msc = 0
				global.msg[0] = "* Do robots dream of&electric sex?/^"
				obj_writer_set_halt(3)
				iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
			}
			if (whatiheard == 7)
			{
				global.msc = 0
				global.msg[0] = "* I hate programming this./^"
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
