if (FL_TruePacifist == true)
    instance_create((x + 3), (y + 56), obj_door_s_musfade)
else
{
    instance_create(35, 150, obj_sul)
    instance_create(35, 130, obj_solidsmall)
    instance_destroy()
}
