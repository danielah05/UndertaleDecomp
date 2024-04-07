if (con == 0)
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, rot, c_white, 1)
if (con == 1)
{
    draw_set_color(c_white)
    draw_set_font(fnt_main)
    draw_text_transformed(90, 90, string_hash_to_newline(scr_gettext("title_by")), 1, 1, 0)
}
