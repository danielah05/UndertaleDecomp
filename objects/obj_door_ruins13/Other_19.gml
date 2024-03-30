global.interact = 3
instance_create(0, 0, obj_unfader)
if (room == room_basement1 || room == room_torhouse1)
{
    if (FL_TruePacifist == false)
        instance_create(0, 0, obj_musfadeout)
}
if (touched == false)
{
    alarm[2] = 14
    touched = true
}
