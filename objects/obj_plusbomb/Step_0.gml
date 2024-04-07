col = 0
if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_heart, 0, 1)
    col = 1
if (side == 1)
{
    if collision_rectangle(((bbox_left + sprite_width) + 1), bbox_top, ((bbox_right + sprite_width) + 1), bbox_bottom, obj_heart, 0, 1)
        col = 1
}
if (side == 2)
{
    if collision_rectangle(((bbox_left - sprite_width) - 1), bbox_top, ((bbox_right - sprite_width) - 1), bbox_bottom, obj_heart, 0, 1)
        col = 1
}
if (col == 1)
    event_user(11)
if collision_rectangle((x + 2), (y + 6), (x + 22), (y + 28), obj_heartshot, 0, 1)
{
    g = collision_rectangle((x + 2), (y + 6), (x + 22), (y + 28), obj_heartshot, 0, 1)
    if instance_exists(obj_ratingsmaster)
        global.ratings += 20
    with (g)
        instance_destroy()
    if (shot == 0)
    {
        playdo = 1
        myloop = audio_play_sound(snd_mtt_prebomb, 40, true)
        shot = 1
    }
}
s += 1
if (shot > 0)
{
    shot2 += 1
    image_speed = 1
    if (shot2 >= 6)
    {
        playdo = 0
        audio_stop_sound(myloop)
        snd_play(snd_bomb)
        if (!instance_exists(obj_shaker))
            scr_shake(3, 3, 2)
        instance_create((x + 2), (y + 6), obj_plusbomb_explosion)
        instance_destroy()
    }
}
if (side == 1)
{
    if collision_rectangle((((x + 2) + sprite_width) + 1), (y + 6), (((x + 22) + sprite_width) + 1), (y + 28), obj_heartshot, 0, 1)
    {
        g = collision_rectangle((((x + 2) + sprite_width) + 1), (y + 6), (((x + 22) + sprite_width) + 1), (y + 28), obj_heartshot, 0, 1)
        with (g)
            instance_destroy()
    }
}
if (side == 2)
{
    if collision_rectangle((((x + 2) - sprite_width) - 1), (y + 6), (((x + 22) - sprite_width) - 1), (y + 28), obj_heartshot, 0, 1)
    {
        g = collision_rectangle((((x + 2) - sprite_width) - 1), (y + 6), (((x + 22) - sprite_width) - 1), (y + 28), obj_heartshot, 0, 1)
        with (g)
            instance_destroy()
    }
}
x = (xstart + (sin((s / sp)) * sf))
