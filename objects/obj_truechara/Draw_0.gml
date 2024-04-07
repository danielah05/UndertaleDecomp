if (flashred == 1)
{
    redsiner += 1
    draw_set_alpha(abs(sin((redsiner / 2))))
    draw_set_color(c_red)
    ossafe_fill_rectangle(-20, -20, 999, 999)
    draw_set_alpha(1)
}
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1)
if (choicer == 1)
{
    buffer += 1
    scr_setfont(fnt_main)
    draw_set_color(c_white)
    if (choice == 0)
    {
        draw_set_color(c_yellow)
        draw_sprite(spr_heart, 0, 75, 357)
    }
    draw_text(100, 350, string_hash_to_newline(scr_gettext("obj_truechara_erase")))
    draw_set_color(c_white)
    if (choice == 1)
    {
        draw_set_color(c_yellow)
        draw_sprite(spr_heart, 0, 455, 357)
    }
    draw_text(480, 350, string_hash_to_newline(scr_gettext("obj_truechara_donot")))
    if keyboard_check_pressed(vk_right)
    {
        if (choice == 0)
        {
            choice = 1
            snd_play(snd_squeak)
        }
    }
    if keyboard_check_pressed(vk_left)
    {
        if (choice == 1)
        {
            choice = 0
            snd_play(snd_squeak)
        }
    }
    if (control_check_pressed(InteractButton) && buffer >= 12)
    {
        snd_play(snd_select)
        choicer = 0
        caster_stop(all)
        if (choice == 0)
            con = 19
        if (choice == 1)
            con = 29
        alarm[4] = 30
    }
}
