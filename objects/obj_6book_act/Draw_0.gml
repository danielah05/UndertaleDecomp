if (type == 1)
    image_alpha -= 0.04
if (image_alpha < 0.08)
    instance_destroy()
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, image_alpha)
if (con == 999999)
{
    if (con > 0 && con < 3)
    {
        image_alpha -= 0.02
        draw_set_color(c_black)
        ossafe_fill_rectangle(200, 150, 500, 240)
        draw_set_color(c_white)
        scr_setfont(fnt_maintext)
        draw_text_transformed(200, 180, string_hash_to_newline(scr_gettext("obj_6book_act_179")), 2, 2, 0)
    }
    if (con == 2)
    {
        type = 1
        with (obj_6book_wordbullet)
            event_user(5)
        con = 2.1
        alarm[4] = 50
    }
    if (con == 3.1)
    {
        with (obj_6book_wordbullet)
            event_user(4)
        con = 3
    }
}
