image_speed = 0.5
image_blend = c_white
con = 3
alarm[4] = 20
image_speed = 0
speed = 0
dir = random(360)
if (big == 0)
{
	if (h_mode == 0)
	{
		for (i = 0; i < 7; i += 1)
		{
			star = instance_create(x, y, obj_regstar_blt)
			star.h_mode = h_mode
			star.friction = -0.2
			star.speed = 1.4
			star.direction = (dir + ((360/7) * i))
		}
		with (obj_stormstar_gen)
			event_user(1)
	}
	if (h_mode == 1)
	{
		for (i = 0; i < 7; i += 1)
		{
			star = instance_create(x, y, obj_regstar_blt)
			star.h_mode = h_mode
			star.friction = -0.25
			star.speed = 1.5
			star.direction = (dir + ((360/7) * i))
		}
		with (obj_stormstar_gen)
			event_user(1)
	}
}
if (big == 1)
{
	with (obj_stormstar_gen)
		event_user(2)
	for (i = 0; i < 20; i += 1)
	{
		star = instance_create(x, y, obj_regstar_blt)
		star.friction = -0.3
		star.speed = 1.6
		star.direction = (dir + (22.5 * i))
		star.h_mode = h_mode
	}
	dir += 9
	for (i = 0; i < 20; i += 1)
	{
		star = instance_create(x, y, obj_regstar_blt)
		star.friction = -0.24
		star.speed = 0.8
		star.direction = (dir + (22.5 * i))
		star.h_mode = h_mode
	}
	for (i = 0; i < 20; i += 1)
	{
		star = instance_create(x, y, obj_regstar_blt)
		star.friction = -0.18
		star.speed = 0.2
		star.direction = (dir + (18 * i))
		star.h_mode = h_mode
	}
}
ex = instance_create(x, y, obj_explodestar)
ex.sprite_index = sprite_index
ex.image_index = image_index
ex.image_blend = image_blend
ex.image_speed = image_speed
ex.aa = aa
ex.big = big
ex.depth = depth
ex.image_alpha = image_alpha
ex.image_angle = image_angle
instance_destroy()
