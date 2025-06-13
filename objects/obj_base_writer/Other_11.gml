if (global.inbattle == false)
{
	if (!instance_exists(obj_choicer))
	{
		choicer = instance_create(0, 0, obj_choicer)
		choicer.creator = id
		if (myfont == fnt_ja_comicsans_big)
		{
			choicer.x0 += 11
			choicer.x += 11
		}
	}
	halt = 5
}
