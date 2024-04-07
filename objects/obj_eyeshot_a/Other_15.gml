if (saved == 0)
    instance_destroy()
else
{
    image_angle = saved_angle
    x = saved_x
    y = saved_y
    active = saved_active
    speed = saved_speed
    direction = saved_direction
    size = saved_size
    image_xscale = saved_xscale
    image_yscale = saved_yscale
    visible = saved_visible
    if (saved_active == false)
        instance_destroy()
}
