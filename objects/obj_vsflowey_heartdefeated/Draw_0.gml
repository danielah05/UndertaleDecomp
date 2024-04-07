if (drawbb == 1)
    draw_sprite(bb, 0, 0, 0)
else
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, image_alpha)
if (con == 6)
{
    with (obj_gameoverbg)
        image_alpha -= 0.05
    draw_set_color(c_white)
    scr_setfont(fnt_maintext)
    draw_text_transformed(60, (y + 480), string_hash_to_newline(str), 3, 3, 0)
    if in_fakecrash
        vspeed = 0
    else
    {
        vspeed = -28
        str += ("#" + scr_gettext("flowey_haha"))
    }
}
