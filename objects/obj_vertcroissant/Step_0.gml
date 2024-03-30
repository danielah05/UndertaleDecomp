if instance_exists(obj_purpleheart)
{
    op = obj_purpleheart
    if (vspeed > 0 && y > 400)
        instance_destroy()
    image_angle += 8
    vspeed += 0.3
}
else
    instance_destroy()
