got = 0
if collision_rectangle((320 - coolwidth), 80, (320 + coolwidth), (global.idealborder[2] - 10), object_index, 0, 0)
{
	blenda = c_yellow
	if (defuse == 1)
		blenda = c_lime
	blendb = c_lime
	got = 1
}
dd = 0
if (flash == true)
{
	flasher += 1
	if (flasher == 1)
	{
		if (defuse == 0)
			snd_play(snd_break1)
		if (defuse == 1)
		{
			snd_play(snd_break2)
			instance_create(0, 0, obj_flasher)
		}
	}
	if (flasher == 1 || flasher == 2 || flasher == 3 || flasher == 4 || flasher == 5)
		dd = 1
	if (flasher > 16)
	{
		flasher = 0
		flash = false
		dd = 0
	}
}
draw_set_color(blendb)
if (dd == 1)
	ossafe_fill_rectangle((320 - coolwidth), 80, (320 + coolwidth), (global.idealborder[2] - 10))
if (dd == 0)
	draw_rectangle((320 - coolwidth), 80, (320 + coolwidth), (global.idealborder[2] - 10), true)
draw_rectangle(((320 - coolwidth) - 2), 82, ((320 + coolwidth) + 2), (global.idealborder[2] - 12), true)
draw_rectangle(((320 - coolwidth) - 4), 84, ((320 + coolwidth) + 4), (global.idealborder[2] - 14), true)
draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, blenda, 1)
draw_sprite_ext(scr_getsprite(spr_defusebox), 0, 320, 30, 2, 2, 0, blendb, 1)
blenda = c_white
blendb = 32768
if (type == 0)
{
	if (hspeed == 0)
		hspeed = myspeed
	if (x > 560)
	{
		x -= 15
		hspeed = (-myspeed)
	}
	if (x < 20)
	{
		x += 15
		hspeed = myspeed
	}
}
if (type == 1)
{
	myspeed = 4
	siner += 1
	x += (sin((siner / 3)) * 3)
	y += (cos((siner / 4)) * 3)
	if (hspeed == 0)
		hspeed = myspeed
	if (x > 400)
	{
		x -= 6
		hspeed = (-myspeed)
	}
	if (x < 180)
	{
		x += 6
		hspeed = myspeed
	}
}
if (type == 2)
{
	myspeed = 15
	if (hspeed == 0)
		hspeed = myspeed
	if (x > 660)
	{
		x = 0
		if (myspeed > 5)
			myspeed -= 0.5
	}
}
if (type == 3)
{
	if (cc == 0)
	{
		cc = 1
		x = 40
		startx = x
	}
	movetimer += 1
	if (movetimer < 80)
	{
		myspeed = 10
		hspeed = myspeed
		if (x >= ((320 - coolwidth) - 110))
		{
			hspeed = 0
			movetimer += 10
		}
	}
	if (movetimer > 80 && movetimer <= 160)
	{
		myspeed = 5
		hspeed = (-myspeed)
		if (x < 80)
			movetimer += 10
	}
	if (movetimer > 160 && movetimer < 240)
	{
		myspeed = 13
		hspeed = myspeed
		if (x > 500)
			movetimer += 20
	}
	if (movetimer > 240 && movetimer < 320)
	{
		myspeed = -10
		hspeed = myspeed
		if (x <= ((320 + coolwidth) + 10))
		{
			hspeed = 0
			movetimer += 20
		}
	}
	if (movetimer > 320 && movetimer < 400)
	{
		myspeed = 5
		hspeed = myspeed
		if (x > 440)
			movetimer += 20
	}
	if (movetimer > 400 && movetimer < 480)
	{
		myspeed = -13
		hspeed = myspeed
		if (x <= (startx + 10))
			movetimer = 500
	}
	if (movetimer > 480)
	{
		x = startx
		movetimer = 0
		hspeed = 0
		myspeed = 0
	}
}
if (type == 4)
{
	siner += 1
	x = (260 + (sin((siner / 20)) * 180))
	y = (ystart + (cos((siner / 3)) * 60))
}
if (type == 5)
{
	vspeed = -25
	if (y < -120)
		y = 930
}
if (type == 5)
{
	if (cc == 0)
	{
		x -= 90
		cc = 1
	}
	vspeed = -20
	if (y < -120)
		y = 860
}
if (type == 6)
{
	if (cc == 0)
	{
		cc = 1
		x = (((320 - coolwidth) - sprite_width) - 10)
		startx = x
	}
	movetimer += 1
	if (movetimer > 25 && movetimer < 60)
	{
		hspeed = 16
		if (x > ((320 + coolwidth) + 10))
			movetimer = 100
	}
	if (movetimer >= 100 && movetimer < 125)
		hspeed = 0
	if (movetimer > 125 && movetimer < 180)
	{
		hspeed = -16
		if (x <= startx)
		{
			hspeed = 0
			movetimer = 0
		}
	}
}
if (defuse == 1)
{
	if (sprite_index == spr_battlebomb)
		sprite_index = spr_battlebomb_defuse
	if (sprite_index == spr_tobdog_sleep_firebattle)
		sprite_index = spr_tobdogl
}
