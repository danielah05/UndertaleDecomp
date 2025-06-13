if (hspeed > 0)
{
	if (x > (obj_target.x + obj_target.sprite_width))
		xxx = 1
}
if (hspeed < 0)
{
	if (x < obj_target.x)
		xxx = 1
}
mons = global.monsterinstance[global.mytarget]
ht = 100
wd = 100
if instance_exists(mons)
	mons.trgtest = id
with (mons)
{
	trgtest.ht = ht
	trgtest.wd = wd
}
if (image_speed >= 0.4 && punchtime < maxpunchtime)
{
	punchtime += 1
	if (control_check_pressed(InteractButton) && punches < maxpunches)
	{
		if instance_exists(obj_pressZ)
		{
			obj_pressZ.visible = false
			obj_pressZ.alarm[0] = 7
			obj_pressZ.alarm[1] = -1
		}
		punches += 1
		control_clear(InteractButton)
		if (punches < maxpunches)
			instance_create((mons.x + random(wd)), (mons.y + random(mons.ht)), obj_lightpunch)
		if (punches == maxpunches)
			instance_create((mons.x + (wd / 2)), (mons.y + (ht / 2)), obj_strongpunch)
	}
	if (punchtime == maxpunchtime || punches == maxpunches)
	{
		if (punches == 0)
			xxx = 1
		else
		{
			global.damagetimer = 10
			punchtime = (maxpunchtime + 1)
			global.damage = ceil((global.damage * (punches / maxpunches)))
			with (mons)
				takedamage = global.damage
			global.hurtanim[global.mytarget] = 1
			if instance_exists(obj_pressZ)
			{
				with (obj_pressZ)
					instance_destroy()
			}
		}
	}
}
if (image_speed == 0)
{
	if control_check_pressed(InteractButton)
	{
		mons = global.monsterinstance[global.mytarget]
		hspeed = 0
		scr_attackcalc()
		global.damage = damage
		global.damage += random(2)
		myx = (x + (sprite_width / 2))
		myperfectx = (obj_target.x + (obj_target.sprite_width / 2))
		bonusfactor = abs((myx - myperfectx))
		if (bonusfactor == 0)
			bonusfactor = 1
		global.stretch = ((obj_target.sprite_width - bonusfactor) / obj_target.sprite_width)
		if (bonusfactor <= 12)
			global.damage = round((global.damage * 2.1))
		if (bonusfactor > 12)
			global.damage = round(((global.damage * global.stretch) * 2))
		image_speed = 0.4
		instance_create((mons.x + (wd / 2)), (mons.y + (ht / 2)), obj_pressZ)
	}
}
if (xxx == 1)
{
	global.damage = 0
	global.hurtanim[global.mytarget] = 5
	instance_destroy()
	return;
}
if (global.myfight != 1)
	instance_destroy()
