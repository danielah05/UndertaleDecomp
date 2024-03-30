if (waterthing == 0)
{
    with (obj_watercooler)
        havewater = 0
    con = 10
    waterthing = 1
    global.interact = 1
    with (OBJ_WRITER)
        instance_destroy()
}
