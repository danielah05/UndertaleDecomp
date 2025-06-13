SCR_BORDERSETUP(0, 0, 0, 0, 0)
currentplace = global.bmenuno
if (global.monster[0] == 0)
{
	if (global.monster[1] == 0)
	{
		if (global.monster[2] == 0)
		{
			if (won == false)
			{
				won = true
				global.xp += global.xpreward[3]
				global.gold += global.goldreward[3]
				tlvl = global.lv
				scr_levelup()
				if (FL_InBattle == false)
				{
					caster_stop(global.batmusic)
					caster_free(global.batmusic)
				}
				global.msg[0] = scr_gettext("obj_battlecontroller_286", string(global.xpreward[3]), string(global.goldreward[3])) //* YOU WON!&* You earned \\[1] EXP and \\[2] gold.
				if (tlvl != global.lv)
				{
					global.msg[0] += scr_gettext("obj_battlecontroller_287") //&* Your LOVE increased.
					snd_play(snd_levelup)
				}
				global.msg[0] += "/%"
				if (global.extraintro == 2)
				{
					global.typer = 5
					caster_free(global.currentsong)
					audio_stop_sound(mus_battle1)
					global.currentsong = caster_load("music/toomuch.ogg")
					caster_loop(global.currentsong, 1, 1)
					FL_RuinsGenocide = 1
					global.msg[0] = global.msg[2]
					global.myfight = 0
					global.mnfight = 2
					obj_heart.x = -200
				}
				global.msc = 0
				var writer = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				writer.writingxend += 20
				return;
			}
		}
	}
}
global.inv = 30
if instance_exists(obj_undyne_ex)
	global.inv = (30 - global.lv)
if (instance_exists(obj_spiderb) && global.armor != Items.ButtyGlasses)
	global.inv += 20
if (global.armor == Items.ButtyGlasses)
	global.inv += 30
if (global.armor == Items.TemyArmor)
	global.inv += 15
if (global.weapon == Items.TornNotebook)
	global.inv += 15
if (global.inv < 15)
	global.inv = 15
if (global.armor == Items.StainedApron || global.armor == Items.TemyArmor)
{
	if (global.mnfight == 0 && global.myfight == 0)
	{
		if (((global.turn + 1) % 2) == 0)
		{
			if (healed == 0)
			{
				healed = 1
				if (global.hp < global.maxhp)
					global.hp += 1
				snd_play(snd_power)
			}
		}
	}
	else
		healed = 0
}
if (global.mnfight == 0 && global.myfight == 0)
{
	global.typer = 1
	if (active == true)
	{
		if (control_check_pressed(CancelButton) == false)
		{
			if control_check_pressed(InteractButton)
			{
				if (global.bmenuno == 0)
				{
					global.tmsg = global.msg[0]
					global.talked = -1
					global.bmenucoord[2] = 0
					global.bmenuno = (global.bmenucoord[0] + 1)
					if instance_exists(obj_talkbt)
					{
						if (obj_talkbt.spec == 1)
						{
							if (global.bmenuno == 2)
							{
								global.rmsg = global.msg[0]
								global.mytarget = 0
								with (OBJ_WRITER)
									halt = 3
								with (OBJ_INSTAWRITER)
									halt = 3
								global.bmenuno = 10
								global.msc = (1000 + global.monstertype[global.mytarget])
								instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
								control_clear(InteractButton)
								SCR_TEXT(global.msc)
								if (global.choices[global.bmenucoord[2]] == 0)
									global.bmenucoord[2] = 0
							}
						}
					}
					if (global.bmenuno == 1 || global.bmenuno == 2 || global.bmenuno == 11)
					{
						global.msc = 3
						if (global.monster[global.bmenucoord[1]] == false)
							global.bmenucoord[1] += 1
						if (global.monster[global.bmenucoord[1]] == false)
							global.bmenucoord[1] += 1
						if (global.monster[0] == 0 && global.monster[2] == 0)
							global.bmenucoord[1] = 1
						if (global.bmenucoord[1] > 2)
						{
							global.bmenucoord[1] = 0
							if (global.monster[0] == 0)
								global.bmenucoord[1] = 1
							if (global.monster[1] == 0)
								global.bmenucoord[1] = 2
							if (global.monster[2] == 0)
								global.bmenucoord[1] = 0
						}
					}
					if (global.bmenuno == 3)
					{
						if (global.item[0] != Items.Null)
						{
							global.bmenucoord[3] = 0
							scr_itemnameb()
							if (global.language == "ja")
							{
								global.msc = 0
								global.msg[0] = " "
								global.msg[1] = "%%%"
							}
							else
							{
								var pad = " "
								for (var i = 0; i < InventorySize; i++)
								{
									var len = 9
									if ((i % 2) == 0)
										len = 10
									while (string_length(global.itemnameb[i]) < len)
										global.itemnameb[i] += pad
								}
								global.msc = 9
							}
						}
						else
							global.bmenuno = 0
					}
					if (global.bmenuno == 4)
						global.msc = 7
					snd_play(snd_select)
					with (OBJ_WRITER)
						halt = 3
					with (OBJ_INSTAWRITER)
						halt = 3
					instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
					control_clear(InteractButton)
					return;
				}
				if (global.bmenuno == 1)
				{
					global.mytarget = global.bmenucoord[1]
					obj_writer_set_halt(3)
					OBJ_INSTAWRITER.halt = 3
					global.myfight = 1
					obj_heart.x = -200
					snd_play(snd_select)
					scr_attack()
					control_clear(InteractButton)
				}
				if (global.bmenuno == 10)
				{
					global.talked = global.bmenucoord[2]
					global.mntrg = global.monsterinstance[global.mytarget]
					with (global.mntrg)
						whatiheard = global.talked
					obj_writer_set_halt(3)
					OBJ_INSTAWRITER.halt = 3
					snd_play(snd_select)
					global.myfight = 2
					obj_heart.x = -200
					control_clear(InteractButton)
				}
				if (global.bmenuno == 2)
				{
					global.mytarget = global.bmenucoord[1]
					obj_writer_set_halt(3)
					OBJ_INSTAWRITER.halt = 3
					global.bmenuno = 10
					global.msc = (1000 + global.monstertype[global.mytarget])
					instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
					control_clear(InteractButton)
					SCR_TEXT(global.msc)
					if (global.choices[global.bmenucoord[2]] == 0)
						global.bmenucoord[2] = 0
				}
				if (global.bmenuno >= 3 && global.bmenuno < 4)
				{
					if (obj_time.right == 0 && obj_time.left == 0)
					{
						obj_writer_set_halt(3)
						itempos = (global.bmenucoord[3] + ((global.bmenuno - 3) * 8))
						thisitemid = global.item[itempos]
						scr_itemuseb(itempos, thisitemid)
						global.talked = 91
						global.myfight = 4
						obj_heart.x = -200
						snd_play(snd_select)
					}
					control_clear(InteractButton)
				}
				if (global.bmenuno == 4)
				{
					obj_writer_set_halt(3)
					global.mercyuse = global.bmenucoord[4]
					if (global.mercyuse == true)
					{
						scr_runaway()
						global.talked = 90
					}
					if (runaway == 0)
						snd_play(snd_select)
					global.myfight = 4
					obj_heart.x = -200
					control_clear(InteractButton)
				}
			}
		}
	}
	if (active == true)
	{
		if control_check_pressed(CancelButton)
		{
			if (global.bmenuno != 0 && global.bmenuno < 6)
			{
				obj_writer_set_halt(3)
				OBJ_INSTAWRITER.halt = 3
				global.bmenuno = 0
				global.typer = 1
				global.msg[0] = global.tmsg
				global.msc = 0
				instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
				control_clear(CancelButton)
			}
			if (global.bmenuno == 10)
			{
				obj_writer_set_halt(3)
				OBJ_INSTAWRITER.halt = 3
				global.bmenuno = 2
				global.typer = 1
				global.msc = 3
				if instance_exists(obj_talkbt)
				{
					if (obj_talkbt.spec == 1)
					{
						global.bmenuno = 0
						global.typer = 1
						global.msg[0] = global.rmsg
						global.msc = 0
					}
				}
				instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
				control_clear(CancelButton)
			}
			if (global.bmenuno == 11)
			{
				obj_writer_set_halt(3)
				OBJ_INSTAWRITER.halt = 3
				global.bmenuno = 3
				global.typer = 1
				global.msc = 0
				instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
				control_clear(CancelButton)
			}
		}
	}
	if (global.bmenuno == 1 || global.bmenuno == 2 || global.bmenuno == 11)
	{
		obj_heart.x = (global.idealborder[0] + 32)
		obj_heart.y = scr_battlemenu_cursor_y(global.bmenucoord[1])
	}
	if (global.bmenuno == 10)
	{
		if (global.bmenucoord[2] <= 2)
			obj_heart.x = (global.idealborder[0] + 32)
		else
			obj_heart.x = (global.idealborder[0] + 292)
		if (global.bmenucoord[2] <= 2)
			obj_heart.y = scr_battlemenu_cursor_y(global.bmenucoord[2])
		else
			obj_heart.y = scr_battlemenu_cursor_y((global.bmenucoord[2] - 3))
	}
	if (global.bmenuno >= 3 && global.bmenuno < 4)
	{
		if (global.language == "ja")
		{
			obj_heart.y = scr_battlemenu_cursor_y(global.bmenucoord[3])
			obj_heart.x = (global.idealborder[0] + 32)
		}
		else
		{
			if (global.bmenucoord[3] <= 1)
				obj_heart.y = (global.idealborder[2] + 28)
			else
				obj_heart.y = (global.idealborder[2] + 60)
			if (global.bmenucoord[3] == 0 || global.bmenucoord[3] == 2)
				obj_heart.x = (global.idealborder[0] + 32)
			else
				obj_heart.x = (global.idealborder[0] + 280)
		}
	}
	if (global.bmenuno == 4)
	{
		obj_heart.x = (global.idealborder[0] + 32)
		obj_heart.y = scr_battlemenu_cursor_y(global.bmenucoord[4])
	}
}
if (active == true)
{
	if (control_check_pressed(CancelButton) || (control_check(MenuButton) && global.decomp_vars.WristProtector && !global.decomp_vars.VanillaMode))
	{
		if (global.mnfight == 0 && FL_CookedNoodles == false)
		{
			if (instance_number(OBJ_WRITER) > 0)
				OBJ_WRITER.stringpos = string_length(OBJ_WRITER.originalstring)
			control_clear(CancelButton)
		}
	}
}
if (global.myfight == 1 || global.myfight == 2 || global.mnfight == 3)
	obj_heart.x = -400
if (global.mnfight == 3)
{
	global.border = 0
	SCR_BORDERSETUP()
	if (obj_lborder.x == global.idealborder[0])
	{
		global.typer = 1
		global.msc = 0
		instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
		global.bmenuno = 0
		global.myfight = 0
		global.mnfight = 0
		global.turn += 1
		global.mercyuse = -1
	}
}
if (global.myfight == 3)
{
	if instance_exists(OBJ_WRITER)
	{
		if (OBJ_WRITER.halt > false)
		{
			obj_heart.x = ((global.idealborder[0] + 32) + (global.bmenucoord[6] * 252))
			obj_heart.y = (global.idealborder[2] + 92)
			if (global.language == "ja")
				obj_heart.y += 8
			if control_check_pressed(InteractButton)
			{
				global.heard = 0
				global.talked = (6 + global.bmenucoord[6])
				with (global.monsterinstance[global.mytarget])
					whatiheard = global.talked
				obj_heart.x = -200
				obj_writer_set_halt(3)
				global.myfight = 2
			}
		}
	}
}
if (global.myfight == 4)
{
	if (runaway == 0)
	{
		obj_heart.x = -200
		if (instance_exists(OBJ_WRITER) == false)
		{
			global.myfight = 0
			global.mnfight = 1
			control_clear(InteractButton)
		}
	}
}
if (global.hp <= 0)
	scr_gameoverb()
if (currentplace < global.bmenuno)
{
	if (snd_isplaying(snd_select) != 1)
		snd_play(snd_select)
}
// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true && keyboard_check_pressed(vk_space) == 1)
	global.turntimer = 2
