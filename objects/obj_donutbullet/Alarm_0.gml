if instance_exists(obj_purpleheart)
{
    op = obj_purpleheart
    if (op.type == 0)
        y = (op.yzero + ((choice - 1) * op.yspace))
    if (side == 0)
    {
        x = (op.xmid - (op.xlen * 2))
        hspeed = speedfactor
    }
    if (side == 1)
    {
        x = (op.xmid + (op.xlen * 2))
        hspeed = (-speedfactor)
    }
    if (choice == 1)
        vspeed = (abs(hspeed) / 2)
    if (choice == 3)
        vspeed = ((-abs(hspeed)) / 2)
}
else
    instance_destroy()
visible = true
