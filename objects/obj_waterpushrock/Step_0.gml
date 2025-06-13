scr_depth()
if (global.interact != 5)
	vspeed = 8
else
	vspeed = 0
if (y > topy)
{
	if (speeded == 0)
	{
		phase = 0
		speeded = 1
	}
	if (global.interact != 5)
		vspeed = 4
}
if (active == true && global.interact != 5)
{
	if instance_exists(obj_waterpushrockgen)
	{
		if (obj_waterpushrockgen.colliding == 0)
		{
			if collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, ((bbox_bottom + vspeed) + 1), obj_mainchara, 0, 1)
			{
				obj_mainchara.y += vspeed
				if obj_time.up
					obj_mainchara.y += 3
				if (obj_time.down && vspeed > 3)
					obj_mainchara.y -= 3
				obj_mainchara.x = round(obj_mainchara.x)
				obj_mainchara.y = round(obj_mainchara.y)
				obj_waterpushrockgen.colliding = 1
			}
		}
	}
}
if (y > bottomy)
{
	d = instance_create(x, y, obj_waterpushrock_2)
	if (room == room_water7)
		d.alarm[0] = 2
	instance_destroy()
}
if (y > 350)
	instance_destroy()
