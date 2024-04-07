view_visible[1] = false
if (fakedrawer == 1 && instance_exists(OBJ_WRITER))
{
    view_visible[1] = true
    draw_set_color(c_white)
    ossafe_fill_rectangle((xx + 16), (yy + 160), (xx + 304), (yy + 235))
    draw_set_color(c_black)
    ossafe_fill_rectangle((xx + 19), (yy + 163), (xx + 301), (yy + 232))
}
