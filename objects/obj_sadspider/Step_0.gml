if (con == 0 && x < 400)
{
	hspeed -= 0.2
	if (hspeed <= 0)
	{
		image_speed = 0
		hspeed = 0
		con = 1
	}
}
if (con == 1)
{
	alarm[4] = 90
	con = 2
}
if (con == 2)
{
	image_speed = 0.1
	hspeed = -1
	con = 3
	alarm[4] = 30
}
if (con == 4)
{
	image_speed = 0
	hspeed = 0
	con = 5
	alarm[4] = 90
}
if (con == 6)
{
	hspeed = 6
	image_speed = 0.25
	con = 7
}
if (con == 7)
{
	if (x > 800)
	{
		con = 8
		flower = instance_create(x, (y - 8), obj_npc_marker)
		flower.sprite_index = spr_tinyspider_flower
		flower.image_xscale = 2
		flower.image_yscale = 2
		flower.image_speed = 0
		flower.visible = true
		hspeed = -3
	}
}
if (con > 7 && con < 10)
{
	flower.x = (x - 20)
	flower.y = (y - 20)
}
if (con == 8)
{
	if (x < 380)
	{
		hspeed += 0.1
		if (hspeed >= 0)
		{
			image_speed = 0
			hspeed = 0
			con = 9
			alarm[4] = 50
		}
	}
}
if (con == 10)
{
	flower.x -= 0.5
	flower.y += 0.25
	if (flower.y > (y - 6))
	{
		con = 11
		alarm[4] = 90
	}
}
if (con == 12)
{
	hspeed = 2
	image_speed = 0.25
	con = 13
	alarm[4] = 20
}
if (con == 14)
{
	hspeed = 0
	image_speed = 0
	con = 15
	alarm[4] = 60
}
if (con == 16)
{
	global.monster[0] = 0
	hspeed = 8
	image_speed = 0.5
	con = 17
}
if (con == 17 && x > 700)
	instance_destroy()
