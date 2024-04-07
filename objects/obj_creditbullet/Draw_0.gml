if (active == true)
{
    if (stretch == 0)
    {
        draw_set_halign(fa_center)
        xx = lengthdir_x((width * 1), image_angle)
        yy = lengthdir_y((width * 1), image_angle)
        xx_off = (lengthdir_x(1, (image_angle - 90)) * 18)
        yy_off = (lengthdir_y(1, (image_angle - 90)) * 18)
        if (hitted == 0)
        {
            if collision_line((x - (xx * 0.8)), (y - (yy * 0.8)), (x + (xx * 0.8)), (y + (yy * 0.8)), obj_creditsheart, true, true)
                event_user(1)
        }
        draw_set_font(fnt_maintext)
        draw_set_color(c_white)
        if (hitted == 1)
            draw_set_color(c_yellow)
        draw_text_transformed((x - xx_off), (y - yy_off), string_hash_to_newline(text), 2, 2, image_angle)
        draw_set_color(c_red)
        draw_set_halign(fa_left)
    }
    if (stretch == 1)
    {
        draw_set_halign(fa_center)
        xx = lengthdir_x((width * 1), image_angle)
        yy = lengthdir_y((width * 1), image_angle)
        s_factor = 1
        if ((x - xx) < 0)
        {
            s_loss = abs((x - xx))
            s_factor = ((width - s_loss) / width)
        }
        if ((x + xx) > room_width)
        {
            s_loss = abs(((x + xx) - room_width))
            s_factor = ((width - s_loss) / width)
        }
        xx *= s_factor
        xx_off = ((lengthdir_x(1, (image_angle - 90)) * 18) * s_factor)
        yy_off = (lengthdir_y(1, (image_angle - 90)) * 18)
        if (hitted == 0)
        {
            if collision_line((x - (xx * 0.8)), (y - (yy * 0.8)), (x + (xx * 0.8)), (y + (yy * 0.8)), obj_creditsheart, true, true)
                event_user(1)
        }
        draw_set_font(fnt_maintext)
        draw_set_color(c_white)
        if (hitted == 1)
            draw_set_color(c_yellow)
        draw_text_transformed((x - xx_off), (y - yy_off), string_hash_to_newline(text), (2 * s_factor), 2, image_angle)
        draw_set_halign(fa_left)
    }
    if (stretch == 2)
    {
        draw_set_halign(fa_center)
        s_factor = 1
        s_factor = (stretchfactor / width)
        xx = lengthdir_x(((width * 1) * s_factor), image_angle)
        yy = lengthdir_y(((width * 1) * s_factor), image_angle)
        xx_off = (lengthdir_x(1, (image_angle - 90)) * 18)
        yy_off = (lengthdir_y(1, (image_angle - 90)) * 18)
        if (hitted == 0)
        {
            if collision_line((x - (xx * 0.8)), (y - (yy * 0.8)), (x + (xx * 0.8)), (y + (yy * 0.8)), obj_creditsheart, true, true)
                event_user(1)
        }
        draw_set_font(fnt_maintext)
        draw_set_color(c_white)
        if (hitted == 1)
            draw_set_color(c_yellow)
        draw_text_transformed((x - xx_off), (y - yy_off), string_hash_to_newline(text), (2 * s_factor), 2, image_angle)
        draw_set_halign(fa_left)
    }
}
