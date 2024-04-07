if (instance_exists(OBJ_WRITER) && myinteract == 3)
{
    if (OBJ_WRITER.stringno == 1)
        obj_grillbynpc_hot2.image_speed = 0.2
}
else if instance_exists(obj_grillbynpc_hot2)
{
    if (obj_grillbynpc_hot2.myinteract != 3)
    {
        obj_grillbynpc_hot2.image_speed = 0
        obj_grillbynpc_hot2.image_index = 0
    }
}
