if (dingus == 1 && instance_exists(OBJ_WRITER) == false)
{
    dingus = 2
    unfader = instance_create(0, 0, obj_unfader)
    unfader.tspeed = 0.03
    alarm[4] = 60
}
