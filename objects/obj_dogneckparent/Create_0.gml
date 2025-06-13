scr_depth(0, 0, 0, 0, 0)
myinteract = 0
image_xscale = 1
image_yscale = 1
if (FL_LesserDogStatus == DogStatus.Killed || FL_LesserDogStatus == DogStatus.Spared)
	instance_destroy()
