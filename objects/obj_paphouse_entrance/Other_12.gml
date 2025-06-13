global.interact = 3
if (FL_TruePacifist == false)
	instance_create(0, 0, obj_musfadeout)
instance_create(0, 0, obj_unfader)
if (touched == false)
{
	alarm[2] = 13
	touched = true
}
if (FL_PapyrusDateCounter == 1)
	FL_PapyrusDateCounter = 2
