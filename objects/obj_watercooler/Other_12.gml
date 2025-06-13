if (FL_PouredWaterCounter > 0)
{
	if (madepud == 0)
	{
		pud = instance_create(170, 63, obj_readable_room5)
		pudspr = scr_marker(170, 60, spr_coolerpuddle)
		pudspr.depth = 900000
		madepud = 1
	}
	if (FL_PouredWaterCounter > 0)
	{
		if (FL_PouredWaterCounter > 7)
			pudspr.image_index = 1
		if (FL_PouredWaterCounter > 15)
			pudspr.image_index = 2
		if (FL_PouredWaterCounter > 15 && FL_TruePacifist == true)
			pudspr.image_index = 3
	}
}
