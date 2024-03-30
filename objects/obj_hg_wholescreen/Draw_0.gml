if (con == 0)
{
    obj_asriel_body.image_alpha -= 0.1
    draw_set_color(c_black)
    ossafe_fill_rectangle(xx, yy, xx2, yy2)
}
if (con == 2)
{
    draw_set_color(c_white)
    draw_set_alpha(scr)
    ossafe_fill_rectangle(xx, yy, xx2, yy2)
    scr -= 0.1
    draw_set_alpha(1)
    if (scr <= 0)
        instance_destroy()
}
if (xx > -100)
    xx -= 10
if (yy > -100)
    yy -= 10
if (xx2 < 800)
    xx2 += 10
if (yy2 < 800)
    yy2 += 10
draw_set_color(c_white)
for (i = 0; i < 4; i += 1)
    draw_rectangle((xx + i), (yy + i), (xx2 + i), (yy2 + i), true)
