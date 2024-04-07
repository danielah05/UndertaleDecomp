if (float == false)
    draw_sprite(sprite_index, image_index, x, y)
if (float == true)
{
    sinadd = 0
    if (offground < 10)
        offground += 2
    else
        float = 2
}
if (float == 2)
{
    sinadd = (4 * sin((siner / 6)))
    siner += 1
}
if (float == true || float == 2)
{
    if (sprite_index != spr_napstablook_d)
        draw_sprite_stretched(spr_centeredhole, image_index, (x - (sinadd / 2)), ((y + 25) + offground), (20 + sinadd), 15)
    else
        draw_sprite_stretched(spr_centeredhole, image_index, ((x - (sinadd / 2)) - 2), ((y + 25) + offground), (20 + sinadd), 15)
    draw_sprite_ext(sprite_index, image_index, x, ((y - offground) + sinadd), 1, 1, 0, c_white, image_alpha)
}
