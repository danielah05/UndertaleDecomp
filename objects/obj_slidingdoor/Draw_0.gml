draw_sprite(spr_slidingdoor, 0, (x + slidedoorx), y)
draw_sprite(sprite_index, 0, x, y)
if (active == true)
{
    if instance_exists(obj_mainchara)
    {
        if ((distance_to_object(obj_mainchara) < 40 && on == -1) || on == 0)
            on = 1
        if ((distance_to_object(obj_mainchara) > 60 && on == 1) || on == 0)
            on = -1
    }
}
if (on == 1)
{
    c_noise = 0
    s_noise = 0
    if (o_noise == 0)
    {
        snd_play(snd_elecdoor_open)
        o_noise = 1
    }
    if (slidedoorx < 40)
        slidedoorx += 5
    else
    {
        on = 0
        if (active == false)
            snd_play(snd_elecdoor_shut)
    }
}
if (on == -1)
{
    o_noise = 0
    s_noise = 0
    if (c_noise == 0)
    {
        snd_play(snd_elecdoor_close)
        c_noise = 1
    }
    if (slidedoorx > 0)
        slidedoorx -= 5
    else
    {
        slidedoorx = 0
        on = 0
        if (active == false)
            snd_play(snd_elecdoor_shut)
    }
}
