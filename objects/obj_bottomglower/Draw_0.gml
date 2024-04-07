siner += 1
alp = 0
go = abs(sin((siner / 30)))
draw_set_color(c_red)
cw = 0
w = 0
for (i = 0; i < 10; i += 1)
{
    alp = ((go - (i / 10)) / 1.2)
    if (xmode == 1)
        alp /= 1.8
    if (alp < 0)
        alp = 0
    draw_set_alpha(alp)
    w = (((10 - i) * go) * 1.4)
    if (xmode == 1)
        w /= 1.2
    w = round(w)
    var bottom = (room_height - cw)
    var top = (((room_height - cw) - w) + 1)
    ossafe_fill_rectangle((view_xview_get(0) - 10), bottom, (view_xview_get(0) + 330), top)
    cw += w
}
draw_set_alpha(1)
