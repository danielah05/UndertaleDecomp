if instance_exists(obj_purpleheart)
{
    op = obj_purpleheart
    if (hspeed > 0 && x > (op.xmid + (op.xlen * 2)))
        instance_destroy()
    if (hspeed < 0 && x < (op.xmid - (op.xlen * 2)))
        instance_destroy()
}
else
    instance_destroy()
