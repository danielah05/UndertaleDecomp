dx = floor((doomtime / 30))
dx2 = floor((doomtime / 180))
if (global.inbattle == true)
{
    scr_setfont(fnt_main)
    draw_set_color(c_yellow)
    var timer_x = 500
    if (global.language == "ja")
        timer_x -= 30
    if (dx >= 120)
        truezero = 1
    if (truezero == 0)
        draw_text(timer_x, 20, string_hash_to_newline(scr_gettext("mettnews_timer", string((120 - dx)))))
    else
    {
        draw_set_color(c_red)
        draw_text(timer_x, 20, string_hash_to_newline(scr_gettext("mettnews_timer", "0")))
    }
}
