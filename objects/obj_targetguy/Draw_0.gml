if (defeat == 0)
    draw_sprite(sprite_index, 0, x, y)
if (defeat == 1)
{
    dxtimer += 1
    draw_sprite_ext(sprite_index, 1, (x - dx1), y, 1, 1, 0, c_white, image_alpha)
    draw_sprite_ext(sprite_index, 2, (x + dx2), y, 1, 1, 0, c_white, image_alpha)
}
if (dxtimer > 25)
{
    if (dxtimer == 26)
        snd_play(snd_break2)
    image_alpha -= 0.04
    dx1 += 0.5
    dx2 += 0.5
    if (image_alpha < 0.1)
        instance_destroy()
}
