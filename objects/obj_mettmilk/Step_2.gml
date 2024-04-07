if (con == 1 && instance_exists(OBJ_WRITER) == false)
{
    obj_mettaton_npc.milk = 1
    global.interact = 0
    instance_destroy()
}
