function scr_halfheart_damage()
{
	check = 1
	scr_damagestandard(BulletType.OneOff, 0, 0, 0, 0)
	with (obj_mewmew_boss)
	{
		heart_hurt_count += 1
		heart_hurt_previous = 1
	}
}
