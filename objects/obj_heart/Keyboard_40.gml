if (movement == 1)
{
	if (confuse == 0)
	{
		y += global.sp
		if (control_check(CancelButton) == 1)
			y -= (global.sp / 2)
	}
	if (confuse == 1 && y > (global.idealborder[2] + 8))
	{
		y -= global.sp
		if (control_check(CancelButton) == 1)
			y += (global.sp / 2)
	}
}
