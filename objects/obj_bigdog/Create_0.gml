if (FL_GreaterDogStatus == DogStatus.Killed)
	instance_destroy()
if (FL_DoggoStatus == DogStatus.Killed && FL_DogCoupleStatus == DogStatus.Killed)
	sprite_index = spr_npc_saddog
myinteract = 0
image_speed = 0
bluh = 0
scr_depth()
if (FL_TruePacifist == true && room == room_tundra_grillby)
	instance_destroy()
jeffrey = 0
if (room == room_tundra_town)
{
	if (FL_TruePacifist == false)
		instance_destroy()
	alarm[1] = 1
}
