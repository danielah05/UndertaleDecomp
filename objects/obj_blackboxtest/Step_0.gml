image_angle += 10
if (image_alpha < 1)
    image_alpha += 0.1
if (y > global.idealborder[3] && vspeed > 0)
{
    image_alpha -= 0.2
    if (image_alpha < 0.1)
        instance_destroy()
}
if collision_rectangle((x - 10), (y - 10), (x + 10), (y + 10), obj_heartshot, 0, 1)
    event_user(0)
