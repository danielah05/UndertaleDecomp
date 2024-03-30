if (tough == 0)
{
    draw_set_color(c_orange)
    for (i = 0; i < 7; i += 1)
        draw_line_width(((x + (i * 10)) - off), (y + point[i]), (((x + (i * 10)) + 10) - off), (y + point[(i + 1)]), 2)
    off += 1
    if (off > 9)
    {
        for (i = 0; i < 7; i += 1)
            point[i] = point[(i + 1)]
        point[7] = random(50)
        off = 0
    }
    draw_set_color(c_white)
    draw_rectangle((x - 10), (y - 20), (x + 70), (y + 60), true)
    scr_setfont(fnt_main)
    draw_text((x - 20), (y - 54), string_hash_to_newline(scr_gettext("obj_populationgraph_81")))
}
if (tough == 1)
{
    draw_set_color(c_red)
    for (i = 0; i < 7; i += 1)
        draw_line_width(((x + (i * 10)) - off), (y + point[i]), (((x + (i * 10)) + 10) - off), (y + point[(i + 1)]), 2)
    off += 3
    if (off > 9)
    {
        for (i = 0; i < 7; i += 1)
            point[i] = point[(i + 1)]
        point[7] = random(80)
        off = 0
    }
    draw_set_color(c_white)
    draw_rectangle((x - 10), (y - 20), (x + 70), (y + 100), true)
    var texty = (y - 54)
    if (global.language == "ja")
        texty -= 36
    scr_setfont(fnt_main)
    draw_text((x - 20), texty, string_hash_to_newline(scr_gettext("obj_populationgraph_106")))
}
