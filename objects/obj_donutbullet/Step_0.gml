if instance_exists(obj_purpleheart)
{
    op = obj_purpleheart
    if (hspeed > 0 && x > (op.xmid + (op.xlen * 2)))
        instance_destroy()
    if (hspeed < 0 && x < (op.xmid - (op.xlen * 2)))
        instance_destroy()
    if (image_yscale < 1)
        image_yscale += 0.1
    if (vspeed > 0 && y > ((op.yzero + ((op.yamt - 1) * op.yspace)) + 10))
    {
        y -= vspeed
        vspeed = (-vspeed)
        image_yscale = 0.6
    }
    if (vspeed < 0 && y < (op.yzero - 10))
    {
        y -= vspeed
        vspeed = (-vspeed)
        image_yscale = 0.6
    }
}
else
    instance_destroy()
