if (active == true)
{
    draw_set_color(c_white)
    draw_set_alpha(1)
    scr_setfont(fnt_maintext)
    draw_text(x, y, string_hash_to_newline(obj_songwriter.newstring))
}
