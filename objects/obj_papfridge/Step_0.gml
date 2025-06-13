if (myinteract == 1)
{
	if (obj_kitchenchecker.level == 0)
	{
		global.interact = 1
		alarm[0] = 1
		myinteract = 2
	}
	else
	{
		x -= 400
		myinteract = 0
		with (obj_mainchara)
		{
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
							scr_interact()
					}
				}
			}
		}
		x += 400
	}
}
if (myinteract == 3)
{
	if (instance_exists(mydialoguer) == false)
	{
		global.interact = 0
		myinteract = 0
	}
}
