if instance_exists(obj_purpleheart)
{
    op = obj_purpleheart
    y = (op.yzero + ((op.yamt + 1) * op.yspace))
    vspeed = (-speedfactor)
}
else
    instance_destroy()
visible = true
