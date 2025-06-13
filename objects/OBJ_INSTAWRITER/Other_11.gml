if (global.inbattle == false)
{
	if (!instance_exists(obj_choicer))
	{
		choicer = instance_create(0, 0, obj_choicer)
		choicer.creator = id
	}
}
else
	halt = 5
