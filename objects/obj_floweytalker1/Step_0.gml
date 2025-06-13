if (room == room_area1_2)
{
	if (global.plot != 0)
		instance_destroy()
}
if instance_exists(obj_floface)
	image_index = obj_floface.image_index
if (sprite_index == spr_floweysink && image_index == 5)
	instance_destroy()
