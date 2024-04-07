siner += 1
if (counter < 20)
    image_blend = make_color_hsv(((siner * 12) % 255), 100, 244)
if (con == 2)
{
    if (counter > 20)
    {
        image_speed = 0.5
        image_blend = c_white
    }
    counter += 1
    if (counter >= 30)
        event_user(3)
}
if (con == 3)
{
    if (big == 0)
    {
        image_alpha -= 0.05
        image_xscale += 0.1
        image_yscale += 0.1
    }
    if (big == 1)
    {
        aa = 0
        image_alpha -= 0.05
        image_xscale += 0.2
        image_yscale += 0.2
    }
}
if (con == 4)
    instance_destroy()
