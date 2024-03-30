if (spec == 0)
{
    for (i = 0; i < rno[0]; i += 1)
    {
        xx = (x + lengthdir_x(r[0], (rang[0] + ((i * 360) / rno[0]))))
        yy = (y + lengthdir_y(r[0], (rang[0] + ((i * 360) / rno[0]))))
        draw_sprite_ext(spr_monsterheart_place, 0, xx, yy, 1, 1, 0, c_white, image_alpha)
    }
}
if (spec == 1)
{
    for (i = 0; i < rno[0]; i += 1)
    {
        xx = (x + lengthdir_x(r[0], (rang[0] + ((i * 360) / rno[0]))))
        yy = (y + lengthdir_y(r[0], (rang[0] + ((i * 360) / rno[0]))))
        if (i == 0)
            col = c_aqua
        if (i == 1)
            col = c_blue
        if (i == 2)
            col = c_green
        if (i == 3)
            col = c_yellow
        if (i == 4)
            col = c_orange
        if (i == 5)
            col = 8388736
        draw_sprite_ext(spr_humanheart_place, 0, xx, yy, 1, 1, 0, col, image_alpha)
    }
}
rang[0] += raspeed[0]
r[0] += rspeed[0]
if (image_alpha < 1)
    image_alpha += 0.02
if (spec == 1)
{
    if (r[0] > 30)
    {
        r[0] = 30
        alarm[5] = -1
        rspeed[0] = 0
        depth = -2
    }
}
