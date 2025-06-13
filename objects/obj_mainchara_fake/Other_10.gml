if (global.interact == 0)
{
	if (global.facing == Direction.Right)
	{
		if collision_rectangle((x + (sprite_width / 2)), (y + 19), ((x + sprite_width) + 15), (y + sprite_height), obj_interactable, 0, 1)
		{
			interactedobject = collision_rectangle((x + (sprite_width / 2)), (y + (sprite_height / 2)), ((x + sprite_width) + 15), (y + sprite_height), obj_interactable, 0, 1)
			if (interactedobject != noone)
			{
				with (interactedobject)
					facing = Direction.Left
				with (interactedobject)
					myinteract = 1
			}
		}
	}
	if (global.facing == Direction.Left)
	{
		if collision_rectangle((x + (sprite_width / 2)), (y + 19), (x - 15), (y + sprite_height), obj_interactable, 0, 1)
		{
			interactedobject = collision_rectangle((x + (sprite_width / 2)), ((y + 3) + (sprite_height / 2)), (x - 15), ((y + sprite_height) + 3), obj_interactable, 0, 1)
			if (interactedobject != noone)
			{
				with (interactedobject)
					facing = Direction.Right
				with (interactedobject)
					myinteract = 1
			}
		}
	}
	if (global.facing == Direction.Down)
	{
		if collision_rectangle((x + 4), (y + 20), ((x + sprite_width) - 4), ((y + sprite_height) + 15), obj_interactable, 0, 1)
		{
			interactedobject = collision_rectangle((x + 4), (y + 20), ((x + sprite_width) - 4), ((y + sprite_height) + 15), obj_interactable, 0, 1)
			if (interactedobject != noone)
			{
				with (interactedobject)
					facing = Direction.Up
				with (interactedobject)
					myinteract = 1
			}
		}
	}
	if (global.facing == Direction.Up)
	{
		if collision_rectangle((x + 4), ((y + sprite_height) - 5), ((x + sprite_width) - 4), (y + 5), obj_interactable, 0, 1)
		{
			interactedobject = collision_rectangle((x + 4), ((y + sprite_height) - 5), ((x + sprite_width) - 4), (y + 8), obj_interactable, 0, 1)
			if (interactedobject != noone)
			{
				with (interactedobject)
					facing = Direction.Down
				with (interactedobject)
					myinteract = 1
			}
		}
	}
}
