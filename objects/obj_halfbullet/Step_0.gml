if (vspeed > 0)
{
    if (y >= 540)
        instance_destroy()
    if instance_exists(obj_hearthalf)
    {
        if (y >= (obj_hearthalf.y + 24))
            active = false
    }
}
if (hspeed > 0 && dont_disappear_hspeed == 0)
{
    if (x >= 700)
        instance_destroy()
    if instance_exists(obj_hearthalf)
    {
        if (x >= (obj_hearthalf.x + 24))
            active = false
    }
}
if (hspeed < 0 && dont_disappear_hspeed == 0)
{
    if (x < -80)
        instance_destroy()
    if instance_exists(obj_hearthalf)
    {
        if (x <= (obj_hearthalf.x - 8))
            active = false
    }
}
if (active == false)
{
    image_alpha -= 0.2
    if (image_alpha <= 0)
        instance_destroy()
}
