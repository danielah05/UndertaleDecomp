if instance_exists(tailobj)
{
    image_speed = (tailobj.mercymod / 400)
    if (image_speed > 2)
        image_speed = 2
    x = (tailobj.x - 1)
    y = tailobj.y
}
else
    instance_destroy()
