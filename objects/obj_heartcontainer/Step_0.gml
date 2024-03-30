if (image_index >= 6 && con == 0)
{
    image_speed = 0
    con = 2
    alarm[4] = 30
}
if (con == 3)
{
    sprite_index = spr_heartcontainer
    if (image_blend == c_white)
        sprite_index = spr_heartcontainer_empty
    image_speed = 0.1
    h += 1
    if (h >= sprite_height)
    {
        con = 4
        if (image_blend == c_white)
            snd_play(snd_impact)
    }
}
