adjust = 0
if (control == 1)
{
	if obj_time.right
		hspeed += 0.2
	if obj_time.left
		hspeed -= 0.2
	if (obj_time.down && height > 4)
	{
		height -= 1
		y += 1
	}
	if obj_time.up
	{
		height += 1
		y -= 1
	}
	if control_check(InteractButton)
	{
		length += 1
		leg3.x += 1
		leg4.x += 1
	}
	if control_check(CancelButton)
	{
		length -= 1
		leg3.x -= 1
		leg4.x -= 1
	}
}
else
{
	if ((obj_heart.x + (obj_heart.sprite_width / 2)) <= ((leg1.x + leg4.x) / 2))
	{
		adjust = 1
		hspeed -= adjustspeed
		leg1.hspeed -= adjustspeed
		leg2.hspeed -= adjustspeed
		leg3.hspeed -= adjustspeed
		leg4.hspeed -= adjustspeed
	}
	if ((obj_heart.x + (obj_heart.sprite_width / 2)) >= ((leg1.x + leg4.x) / 2))
	{
		adjust = 1
		hspeed += adjustspeed
		leg1.hspeed += adjustspeed
		leg2.hspeed += adjustspeed
		leg3.hspeed += adjustspeed
		leg4.hspeed += adjustspeed
	}
	siner += 1
	hadd = (sin((siner / 10)) * 0.1)
	if (abs(hspeed) < 0.4)
	{
		siner += 1
		hadd *= 1.5
	}
	hspeed += hadd
	leg1.hspeed += hadd
	leg2.hspeed += hadd
	leg3.hspeed += hadd
	leg4.hspeed += hadd
}
if (global.turntimer < 1)
{
	instance_destroy()
	global.mnfight = 3
}
if collision_rectangle((x + 13), (y + 36), ((x + 50) + length), (y + 63), obj_heart, 0, 1)
	event_user(2)
