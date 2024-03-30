if (noke == 0 && instance_exists(OBJ_WRITER) == false)
{
    global.interact = 1
    instance_create(obj_mainchara.x, (obj_mainchara.y + 15), obj_door_s_musfade)
    noke = 1
}
