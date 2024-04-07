if (active == true)
{
    if (fader == 0 && alpha < 1)
        alpha += 0.05
    draw_set_alpha(alpha)
    draw_set_color(c_white)
    scr_setfont(fnt_maintext)
    draw_text_transformed((x + text_xofs), y, string_hash_to_newline(text), (size * bigscale), (size * bigscale), 0)
    draw_set_color(c_yellow)
    draw_text_transformed(x, ((y + height) + (4 * size)), string_hash_to_newline(text2), size, size, 0)
    draw_set_alpha(1)
    if (fader == 1)
        alpha -= 0.05
    if (alpha < 0)
        instance_destroy()
}
