if instance_exists(obj_purpleheart)
{
    op = obj_purpleheart
    if (side == 0)
    {
        hspeed -= 0.25
        image_angle += 8
    }
    if (side == 1)
    {
        hspeed += 0.25
        image_angle -= 8
    }
    if (hspeed > 0 && x > (op.xmid + (op.xlen * 5)))
        instance_destroy()
    if (hspeed < 0 && x < (op.xmid - (op.xlen * 5)))
        instance_destroy()
}
else
    instance_destroy()
