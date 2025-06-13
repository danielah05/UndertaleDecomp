if (FL_TruePacifist == false)
	instance_create(0, 0, obj_musfadeout)
global.interact = 3
instance_create(0, 0, obj_unfader)
if (FL_TruePacifist == false)
	instance_create(0, 0, obj_musfadeout)
if (touched == false)
{
	alarm[2] = 14
	touched = true
}
