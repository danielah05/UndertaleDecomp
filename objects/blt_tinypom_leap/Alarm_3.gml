alarm[3] = 4
if instance_exists(obj_heart)
{
	if (obj_heart.x < x)
		hspeed -= 0.4
	else
		hspeed += 0.4
	if (gravity == 0 && obj_heart.y < y && abs((x - obj_heart.x)) < 50)
	{
		gravity = 0.22
		gravity_direction = 270
		vspeed = -5
		sprite_index = spr_tinypomjump
	}
}
