if (side == 0)
{
    draw_set_color(c_white)
    draw_rectangle((__view_get((0 << 0), view_current) + 16), (__view_get((1 << 0), view_current) + 5), (__view_get((0 << 0), view_current) + 304), (__view_get((1 << 0), view_current) + 80), false)
    draw_set_color(c_black)
    draw_rectangle((__view_get((0 << 0), view_current) + 19), (__view_get((1 << 0), view_current) + 8), (__view_get((0 << 0), view_current) + 301), (__view_get((1 << 0), view_current) + 77), false)
}
else
{
    draw_set_color(c_white)
    draw_rectangle((__view_get((0 << 0), view_current) + 16), (__view_get((1 << 0), view_current) + 160), (__view_get((0 << 0), view_current) + 304), (__view_get((1 << 0), view_current) + 235), false)
    draw_set_color(c_black)
    draw_rectangle((__view_get((0 << 0), view_current) + 19), (__view_get((1 << 0), view_current) + 163), (__view_get((0 << 0), view_current) + 301), (__view_get((1 << 0), view_current) + 232), false)
}
