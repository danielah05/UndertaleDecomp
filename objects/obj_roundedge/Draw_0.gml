if (edge == 0)
    edge = 0.1
if (part == 0)
    part = 1
wp = (w0 / part)
hp = (h0 / part)
lside = view_xview_get(0)
rside = (view_xview_get(0) + view_wview_get(0))
side = 0
curx = 0
size = 1
col += 1
color = old_make_color_hsv(col, 233, 200)
if (col > 254)
    col = 0
for (i = 0; i < part; i += 1)
{
    draw_sprite_part_ext(image, image_index, ((wp * i) + x), 0, (wp * i), 999, (((room_width / 2) + (wp * i)) - 6), (0 - ((wp * i) / 2)), i, i, color, image_alpha)
    draw_sprite_part_ext(image, image_index, ((wp * i) + x), 0, (wp * i), 999, (((room_width / 2) - (wp * i)) + 6), (0 - ((wp * i) / 2)), (-i), i, color, image_alpha)
}
x += rotspeed
if (x > 800)
    x -= 800
if (x < 0)
    x += 800
ftimer += 1
if (ftimer > 630 && ftimer < 671)
{
    falpha += 0.025
    draw_set_alpha(falpha)
    draw_set_color(c_white)
    ossafe_fill_rectangle(-10, -10, 999, 999)
}
if (ftimer >= 671 && ftimer < 685)
{
    image_alpha = 0.5
    falpha -= 0.1
    draw_set_alpha(falpha)
    draw_set_color(c_white)
    ossafe_fill_rectangle(-10, -10, 999, 999)
}
if (ftimer == 671)
{
    with (obj_asriel_body)
    {
        aligncon = 4
        specialnormal = 0
    }
    global.turntimer = -2
    if (global.mnfight == 2)
        global.msg[0] = scr_gettext("obj_roundedge_135")
}
draw_set_alpha(1)
