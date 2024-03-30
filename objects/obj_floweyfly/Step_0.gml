if (hspeed > 0 && image_xscale < 0)
    image_xscale *= -1
if (hspeed < 0 && image_xscale > 0)
    image_xscale *= -1
if instance_exists(parent)
{
    finish = 0
    if (parent.sider == 0)
    {
        if (x < parent.x)
            finish = 1
    }
    if (parent.sider == 1)
    {
        if (x > parent.x)
            finish = 1
    }
    sd = parent.sider
    if (sd == 0 && distance_to_point((parent.x + 70), (parent.y + 110)) < 80)
    {
        image_xscale *= 0.75
        image_yscale *= 0.75
    }
    if (sd == 1 && distance_to_point((parent.x - 70), (parent.y + 110)) < 80)
    {
        image_xscale *= 0.75
        image_yscale *= 0.75
    }
    if (abs(image_xscale) <= 0.1)
        finish = 1
    if (finish == 1)
    {
        with (parent)
            event_user(3)
        instance_destroy()
    }
}
else
    instance_destroy()
