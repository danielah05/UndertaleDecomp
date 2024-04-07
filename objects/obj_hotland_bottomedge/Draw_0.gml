siner += 1
if (image_xscale >= 0)
{
    for (i = 0; i < image_xscale; i += 1)
    {
        if (i == 0)
            draw_sprite(spr_hotland_leftedge, (siner / 2), x, y)
        else if (i == (image_xscale - 1))
            draw_sprite(spr_hotland_rightedge, (siner / 2), (x + (i * 20)), y)
        else
            draw_sprite(spr_hotland_bottomedge, (siner / 2), (x + (i * 20)), y)
    }
    draw_set_color(c_black)
    if (room == room_fire_walkandbranch2)
        draw_sprite_ext(spr_singleblackpixel, 0, x, (y + 19), (20 * image_xscale), 1, 0, c_white, 1)
}
else
{
    draw_sprite(spr_hotland_rightedge, (siner / 2), (x - 20), y)
    for (i = 1; i < (-image_xscale); i += 1)
        draw_sprite(spr_hotland_bottomedge, (siner / 2), ((x - (i * 20)) - 20), y)
}
