global.invc -= 1
if (global.invc > 0)
	image_speed = 0.5
else
{
	image_index = 0
	image_speed = 0
}
if obj_time.left
{
	if (movement == 1)
	{
		if (control_check(CancelButton) == 1)
			x -= (global.sp / 2)
		else
			x -= global.sp
	}
}
if obj_time.right
{
	if (movement == 1)
	{
		if (control_check(CancelButton) == 1)
			x += (global.sp / 2)
		else
			x += global.sp
	}
}
if obj_time.up
{
	if (movement == 1)
	{
		if (control_check(CancelButton) == 1)
			y -= (global.sp / 2)
		else
			y -= global.sp
	}
}
if obj_time.down
{
	if (movement == 1)
	{
		if (control_check(CancelButton) == 1)
			y += (global.sp / 2)
		else
			y += global.sp
	}
}
if (global.hp < 1)
	scr_gameoverb()
