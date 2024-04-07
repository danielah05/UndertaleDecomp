timer += 1
draw_sprite(spr_steamer_bottom, 0, x, y)
draw_sprite(spr_steamer_top, 0, x, (y + (f_l * 3)))
if (timer == 30)
{
    f_l = 0
    f_d = 1
}
if (timer > 30 && timer < 50)
{
    f_l += 0.2
    if (f_l >= 1)
        timer = 50
}
if (timer >= 50 && timer < 70)
    f_l = (1 - (sin((timer * 1.5)) * 0.1))
if (timer >= 70)
{
    f_l -= 0.2
    if (f_l <= 0)
    {
        f_l = 0
        f_d = 0
        timer = 0
    }
}
if (f_d == 1)
    draw_sprite_ext(spr_bluejet, 0, (x + 7), ((y + 8) + (f_l * 3)), (0.5 + (f_l / 2)), f_l, 0, c_white, f_l)
