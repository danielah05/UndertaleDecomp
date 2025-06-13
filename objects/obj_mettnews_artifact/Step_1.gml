scr_depth(0, 0, 0, 0, 0)
if (con == 2)
{
	if collision_line((x + (sprite_width / 2)), ((y + sprite_height) - 5), (x + (sprite_width / 2)), ((y + sprite_height) + 20), obj_mainchara, false, true)
		con = 3
	else
		con = 20
}
if (con == 3)
{
	if (obj_mainchara.x < x)
	{
		hspeed = 2
		alarm[4] = 9
		con = 4
	}
	else
	{
		hspeed = -2
		alarm[4] = 9
		con = 4
	}
}
if (con == 5)
{
	hspeed = 0
	con = 20
}
if (gtfo == 1)
	vspeed = 5
