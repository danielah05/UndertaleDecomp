x += (sin((siner / 4)) / 2)
y += (cos((siner / 4)) / 2)
siner += 1
if instance_exists(obj_flyjar)
{
    image_alpha = obj_flyjar.image_alpha
    if (x > obj_flyjar.bbox_right)
    {
        x -= 4
        if (hspeed > 0)
            hspeed = (-hspeed)
    }
    if (x < obj_flyjar.bbox_left)
    {
        x += 4
        if (hspeed < 0)
            hspeed = (-hspeed)
    }
    if (y < obj_flyjar.bbox_top)
    {
        y += 4
        if (vspeed < 0)
            vspeed = (-vspeed)
    }
    if (y > obj_flyjar.bbox_bottom)
    {
        y -= 4
        if (vspeed > 0)
            vspeed = (-vspeed)
    }
}
else
    instance_destroy()
