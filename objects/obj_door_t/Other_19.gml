global.interact = 3
instance_create(0, 0, obj_unfader)
if (touched == false)
{
	alarm[2] = 14
	touched = true
}
if (room == room_tundra_sanshouse)
{
	if (FL_GotSansRoomKey == 1)
		instance_create(0, 0, obj_musfadeout)
}
