if instance_exists(obj_librarynpc_lizard2)
{
    if (instance_exists(OBJ_WRITER) && myinteract == 3)
    {
        if (OBJ_WRITER.stringno == 3)
            obj_librarynpc_lizard2.image_speed = 0.2
    }
    else if (obj_librarynpc_lizard2.myinteract != 3)
    {
        obj_librarynpc_lizard2.image_speed = 0
        obj_librarynpc_lizard2.image_index = 0
    }
}
