g = 0
myinteract = 0
image_xscale = 1
image_yscale = 1
if (object_index == obj_dogpillar2)
{
	if (FL_LesserDogStatus == DogStatus.Killed)
	{
		g = 1
		sprite_index = spr_dogmush
		y += 20
	}
	if (FL_LesserDogStatus == DogStatus.Spared && global.plot < 67)
	{
		g = 2
		sprite_index = spr_lessdogsnow
		y += 30
	}
}
else if (FL_LesserDogStatus == DogStatus.Killed || FL_LesserDogStatus == DogStatus.Spared)
	instance_destroy()
scr_depth(0, 0, 0, 0, 0)
