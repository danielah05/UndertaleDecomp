if in_fakecrash
    scr_fakecrash_draw()
else if force_black_screen
{
    draw_enable_alphablend(false)
    draw_rectangle_color(0, 0, window_get_width(), window_get_height(), c_black, c_black, c_black, c_black, 0)
    draw_enable_alphablend(true)
}
