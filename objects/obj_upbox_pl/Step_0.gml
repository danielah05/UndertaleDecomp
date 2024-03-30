if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_heart, 0, 1)
    room_restart()
if collision_rectangle((x + 2), (y + 2), (x + 22), (y + 22), obj_heartshot, 0, 1)
{
    if (vspeed > 0.5)
        vspeed = 0.5
    else
        vspeed = 4
    g = collision_rectangle((x + 2), (y + 2), (x + 22), (y + 22), obj_heartshot, 0, 1)
    with (g)
        instance_destroy()
}
s += 1
x = (xstart + (sin((s / sp)) * sf))
