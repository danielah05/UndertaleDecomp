global.interact = 3
instance_create(0, 0, obj_unfader)
ok = 1
if (room == room_water_undynefinal3 && instance_exists(obj_undynea_chaser) == 1)
    ok = 0
if (FL_TruePacifist == false)
{
    if (ok == 1)
        instance_create(0, 0, obj_musfadeout)
}
if (touched == false)
{
    alarm[2] = 13
    touched = true
}
