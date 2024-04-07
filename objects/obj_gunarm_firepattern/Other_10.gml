if (lock == 0)
{
    gravity_direction = (image_angle - 90)
    direction = (image_angle + 90)
    txspeed = lengthdir_x(7, (image_angle + 90))
    tyspeed = lengthdir_y(7, (image_angle + 90))
    caster_stop(sfx_b)
    caster_play(sfx_b, 0.8, 1)
    bb = 1
}
image_index = 2
event_user(1)
