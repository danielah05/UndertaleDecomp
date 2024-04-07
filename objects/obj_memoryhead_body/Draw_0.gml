if (bb == 0)
    bb = 1
if (cc == 0)
    cc = 1
if (dd == 0)
    dd = 1
if (on == 1)
    scr_fx_waver_scanline(bb, cc, dd)
else
    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1)
if (mega == 1)
{
    cc += 1
    image_alpha -= 0.03
    if (image_alpha <= 0)
        mega = 4
}
if (mega == 2)
{
    if (cc > 1)
        cc -= 1
    if (image_alpha < 1)
        image_alpha += 0.03
    if (cc <= 1)
    {
        mega = 0
        on = 0
        alarm[2] = -1
        alarm[1] = 90
    }
}
