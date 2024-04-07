if (side == 0)
{
    if (active == true)
    {
        if instance_exists(obj_mainchara)
        {
            if (distance_to_object(obj_mainchara) < 40)
            {
                if (open == 0)
                    caster_play(snd_elecdoor_open, 1, 1)
                open = 1
            }
            if (distance_to_object(obj_mainchara) > 50)
            {
                if (open == 1)
                    caster_play(snd_elecdoor_close, 1, 1)
                open = 0
            }
        }
    }
    if (open == -1)
        open = 0
    if (doorx < 7)
        draw_sprite_part(spr_alabdoor_piece, 0, 0, 0, (8 - doorx), 61, x, (y + 4))
    if (doorx < 7)
        draw_sprite_part(spr_alabdoor_piece, 0, doorx, 0, (8 - doorx), 61, ((x + 6) + doorx), (y + 10))
    if (open == 1)
    {
        if (doorx < 8)
            doorx += 1
    }
    if (open == 0)
    {
        if (doorx > 0)
            doorx -= 1
    }
    draw_sprite(spr_labdoor_hang, 0, x, y)
}
if (side == 1)
{
    if (active == true)
    {
        if instance_exists(obj_mainchara)
        {
            if (distance_to_object(obj_mainchara) < 30)
            {
                if (open == 0)
                    caster_play(snd_elecdoor_open, 1, 1)
                open = 1
            }
            if (distance_to_object(obj_mainchara) > 50)
            {
                if (open == 1)
                    caster_play(snd_elecdoor_close, 1, 1)
                open = 0
            }
        }
    }
    if (open == -1)
        open = 0
    if (doorx < 7)
        draw_sprite_part(spr_alabdoor_piece_r, 0, 0, 0, (8 - doorx), 61, (x + 19), (y + 10))
    if (doorx < 7)
        draw_sprite_part(spr_alabdoor_piece_r, 0, doorx, 0, (8 - doorx), 61, ((x + 25) + doorx), (y + 4))
    if (open == 1)
    {
        if (doorx < 8)
            doorx += 1
    }
    if (open == 0)
    {
        if (doorx > 0)
            doorx -= 1
    }
    draw_sprite(spr_labdoor_hang_r, 0, x, y)
}
