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
	if (attacked == false)
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
				global.msg[0] = scr_gettext("obj_ripoff_sans_486") //* You asked the Lost Soul to&  take a break from fighting&  with you.../
				global.msg[1] = scr_gettext("obj_ripoff_sans_487") //* It seems like it wants to./^
				if (totalmercy >= 3)
				{
					global.msg[1] = scr_gettext("obj_ripoff_sans_490") //* It nods its head solemnly..^1.&* Seems like it will!/%%
					obj_ripoff_papyrus.saved = true
					global.mnfight = 5
					if (obj_ripoff_papyrus.mercyno == 0)
					{
						global.msg[1] = scr_gettext("obj_ripoff_sans_496") //* Suddenly^1, its memories are&  flooding back!/
						global.msg[2] = scr_gettext("obj_ripoff_sans_497") //"* Seeing how nicely you treated&  its brother^1, the other Lost&  Soul remembers^1, too!/%%
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
				global.msg[0] = scr_gettext("obj_ripoff_sans_516") //* You told the Lost Soul a&  bad pun about skeletons./
				global.msg[1] = scr_gettext("obj_ripoff_sans_517") //* He seems to love it..^1.&* But the other Lost Soul seems&  to hate it./^
				if (totalmercy >= 3)
				{
					global.msg[1] = scr_gettext("obj_ripoff_sans_520") //* Suddenly^1, the memories are&  flooding back!/%%
					obj_ripoff_papyrus.saved = true
					global.mnfight = 5
					if (obj_ripoff_papyrus.mercyno == 0)
					{
						global.msg[1] = scr_gettext("obj_ripoff_sans_526") //* Suddenly^1, its memories are&  flooding back!/
						global.msg[2] = scr_gettext("obj_ripoff_sans_527") //* Seeing how nicely you treated&  its brother^1, the other Lost&  Soul remembers^1, too!/%%
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
				global.msg[0] = scr_gettext("obj_ripoff_sans_542")
				global.msg[1] = scr_gettext("obj_ripoff_sans_543")
				if (totalmercy >= 3)
				{
					global.msg[1] = scr_gettext("obj_ripoff_sans_546")
					obj_ripoff_papyrus.saved = true
					global.mnfight = 5
					if (obj_ripoff_papyrus.mercyno == 0)
					{
						global.msg[1] = scr_gettext("obj_ripoff_sans_552")
						global.msg[2] = scr_gettext("obj_ripoff_sans_553")
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
				if (FL_HarderPuzzleChoice == Choices.JuniorJumble)
					global.msg[0] = scr_gettext("obj_ripoff_sans_571") //* You tell the Lost Soul you&  think that jumble is&  tougher than crosswords.
				if (FL_HarderPuzzleChoice == Choices.WordSearch)
					global.msg[0] = scr_gettext("obj_ripoff_sans_576") //* You tell the Lost Soul you&  think that crosswords&  are tougher than jumble./
				global.msg[1] = scr_gettext("obj_ripoff_sans_579") //* It seems to have some dim&  recollection of this&  fact.../^
				if (totalmercy >= 3)
				{
					global.msg[1] = scr_gettext("obj_ripoff_sans_583") //* It nods its head^1, like it&  knew this without question...!/%%
					obj_ripoff_papyrus.saved = true
					global.mnfight = 5
					if (obj_ripoff_papyrus.mercyno == 0)
					{
						global.msg[1] = scr_gettext("obj_ripoff_sans_589") //* Suddenly^1, its memories are&  flooding back!/
						global.msg[2] = scr_gettext("obj_ripoff_sans_590") //* The other Lost Soul remembers&  this conversation^1, too!/%%
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
