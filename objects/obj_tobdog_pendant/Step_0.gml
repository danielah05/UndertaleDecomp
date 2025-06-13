if (con == 1)
{
	image_speed = 0.25
	x += (random(2) - 1)
	y += (random(2) - 1)
	move_towards_point((obj_rarependant.x - 4), (obj_rarependant.y - 5), 2)
}
if (con == 1)
{
	if (hspeed > 0)
		sprite_index = spr_tobdogr
	else
		sprite_index = spr_tobdogl
	if (abs(distance_to_point((obj_rarependant.x - 4), (obj_rarependant.y - 5))) < 2)
	{
		con = 2
		alarm[4] = 30
	}
}
if (con == 2 || con == 3 || con == 4)
{
	image_speed = 0.25
	x = (obj_rarependant.x - 4)
	y = (obj_rarependant.y - 5)
	x += (random(1) - 0.5)
	y += (random(1.2) - 0.5)
}
if (con == 4 && instance_exists(OBJ_WRITER) == false)
{
	con = 5
	alarm[4] = 90
}
if (con == 5)
{
	move_towards_point((x + 400), (y + 100), 2)
	x += (1 - random(2))
	y += (1 - random(2))
	if (hspeed > 0)
		sprite_index = spr_tobdogr
	else
		sprite_index = spr_tobdogl
}
if (con == 6)
{
	obj_rarependant.con = 5
	con = 7
}
if (con == 3)
{
	with (obj_rarependant)
		image_index = 1
	global.typer = 5
	global.facechoice = 0
	global.msc = 0
	global.msg[0] = scr_gettext("obj_tobdog_pendant_137")
	instance_create(0, 0, obj_dialoguer)
	con = 4
}
