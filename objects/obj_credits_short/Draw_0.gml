draw_set_color(c_white)
scr_setfont(fnt_maintext)
if (number == -1)
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, rot, c_white, 1)
if (number == 0)
{
    draw_set_font(fnt_maintext)
    scr_drawtext_centered_scaled(160, 90, scr_gettext("credits_short_160"), 2, 2)
    scr_setfont(fnt_maintext)
}
if (number == 1)
{
    draw_set_color(c_yellow)
    draw_text(86, 30, string_hash_to_newline(scr_gettext("credits_short_165")))
    draw_set_color(c_white)
    var yy = 130
    if (global.language == "ja")
        yy = 140
    draw_set_font(fnt_maintext)
    draw_text_transformed(40, yy, string_hash_to_newline(scr_gettext("credits_short_167")), 2, 2, 0)
    scr_setfont(fnt_maintext)
}
if (number == 2)
{
    var xx = 40
    if (global.language == "ja")
        xx = 32
    draw_set_color(c_yellow)
    draw_text(xx, 22, string_hash_to_newline(scr_gettext("credits_short_173")))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 58, scr_gettext("credits_short_175"))
    draw_set_color(c_yellow)
    draw_text(xx, 88, string_hash_to_newline(scr_gettext("credits_short_178")))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 106, scr_gettext("credits_short_180"))
    draw_set_color(c_yellow)
    draw_text(xx, 136, string_hash_to_newline(scr_gettext("credits_short_183")))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 154, scr_gettext("credits_short_185"))
    draw_set_color(c_yellow)
    draw_text(xx, 184, string_hash_to_newline(scr_gettext("credits_short_186")))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 202, scr_gettext("credits_short_187"))
}
if (number == 3)
{
    xx = 40
    if (global.language == "ja")
        xx = 32
    draw_set_color(c_yellow)
    draw_text(xx, 24, string_hash_to_newline(scr_gettext("credits_short_193")))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 44, scr_gettext("credits_short_195"))
    draw_set_color(c_yellow)
    draw_text(xx, 104, string_hash_to_newline(scr_gettext("credits_short_199")))
    draw_set_color(c_white)
    scr_credits_short_draw_name((-((xx + 30))), 124, scr_gettext("credits_short_201"))
    draw_set_color(c_yellow)
    draw_text(xx, 164, string_hash_to_newline(scr_gettext("credits_short_205")))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 184, scr_gettext("credits_short_207"))
}
if (number == 4)
{
    xx = 40
    if (global.language == "ja")
        xx = 32
    draw_set_color(c_yellow)
    draw_text(xx, 20, string_hash_to_newline(scr_gettext("credits_short_219")))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 55, scr_gettext("credits_short_221"))
    draw_set_color(c_yellow)
    draw_text(xx, 95, string_hash_to_newline(scr_gettext("credits_short_224")))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 115, scr_gettext("credits_short_226"))
    draw_set_color(c_yellow)
    draw_text(xx, 165, string_hash_to_newline(scr_gettext("credits_short_229")))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 185, scr_gettext("credits_short_231"))
}
if (number == 5)
{
    xx = 40
    if (global.language == "ja")
        xx = 32
    yy = 24
    if (global.language == "ja")
        yy = 14
    draw_set_color(c_yellow)
    draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_240")))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), (yy + 20), scr_gettext("credits_short_242"))
    yy = 135
    if (global.language == "ja")
        yy = 147
    draw_set_color(c_yellow)
    draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_246")))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), (yy + 20), scr_gettext("credits_short_248"))
    yy = 185
    if (global.language == "ja")
        yy = 191
    draw_set_color(c_yellow)
    draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_251")))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), (yy + 20), scr_gettext("credits_short_253"))
}
if (number == 6)
{
    xx = 40
    if (global.language >= "ja")
        xx = 32
    var xx2 = 190
    yy = 30
    if (global.osflavor >= OSFlavors.Playstation && global.language != "ja")
        yy = 22
    draw_set_color(c_yellow)
    if (global.osflavor == OSFlavors.Playstation)
    {
        draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc1_1_ps")))
        if (global.language == "ja")
            yy += 18
        else
            yy += 36
    }
    else if (global.osflavor == OSFlavors.Switch)
    {
        draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc1_1_switch")))
        yy += 36
    }
    else if (global.osflavor == OSFlavors.XboxOne)
    {
        draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc1_1_xbox")))
        yy += 36
    }
	else
    {
        draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc1_1")))
        yy += 18
    }
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc1_1a"))
    yy += 28
    draw_set_color(c_yellow)
    draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc1_2")))
    yy += 18
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc1_2a"))
    yy += 28
    draw_set_color(c_yellow)
    draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc1_3")))
    yy += 18
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc1_3a"))
    scr_credits_short_draw_name(xx2, yy, scr_gettext("credits_short_loc1_3b"))
    yy += 28
    draw_set_color(c_yellow)
    draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc1_4")))
    yy += 18
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc1_4a"))
    yy += 28
}
if (number == 7)
{
    xx = 40
    if (global.language == "ja")
        xx = 32
    yy = 24
    if (os_type == os_xboxone)
    {
        draw_set_color(c_yellow)
        draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc2_1")))
        yy += 18
        draw_set_color(c_white)
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_1a"))
        yy += 28
        draw_set_color(c_yellow)
        draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc2_2")))
        yy += 18
        draw_set_color(c_white)
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_2a"))
        yy += 18
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_2b"))
        yy += 18
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_2c"))
        yy += 18
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_2d"))
        yy += 18
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_2e"))
        yy += 28
        draw_set_color(c_yellow)
        draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc2_3")))
        yy += 18
        draw_set_color(c_white)
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_3a"))
        yy += 28
    }
    else
    {
        draw_set_color(c_yellow)
        draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc2_1")))
        yy += 18
        draw_set_color(c_white)
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_1a"))
        yy += 18
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_1b"))
        yy += 18
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_1c"))
        yy += 18
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_1d"))
        yy += 18
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_1e"))
        yy += 28
        draw_set_color(c_yellow)
        draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc2_2")))
        yy += 18
        draw_set_color(c_white)
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_2a"))
        yy += 28
        draw_set_color(c_yellow)
        draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc2_3")))
        yy += 18
        draw_set_color(c_white)
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_3a"))
        yy += 28
    }
}
if (number == 8)
{
    xx = 40
    if (global.language == "ja")
        xx = 32
    xx2 = 190
    yy = 24
    draw_set_color(c_yellow)
    draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc3_1")))
    yy += 18
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc3_1a"))
    yy += 28
    draw_set_color(c_yellow)
    draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc3_2")))
    yy += 18
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc3_2a"))
    yy += 28
    draw_set_color(c_yellow)
    draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc3_3")))
    yy += 18
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc3_3a"))
    scr_credits_short_draw_name(xx2, yy, scr_gettext("credits_short_loc3_3b"))
    yy += 28
    draw_set_color(c_yellow)
    draw_text(xx, yy, string_hash_to_newline(scr_gettext("credits_short_loc3_4")))
    yy += 18
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc3_4a"))
    yy += 28
}
if (number == 9)
{
    xx = 40
    if (global.language == "ja")
        xx = 32
    xx2 = 190
    yy = 24
    draw_set_color(c_yellow)
    scr_credits_short_draw_name(xx, yy, string_hash_to_newline(scr_gettext("credits_short_thanks1_0")))
    yy += 18
    draw_set_color(c_white)
    draw_set_font(fnt_maintext)
    if (os_type == os_xboxone)
    {
        for (var i = 0; i < 18; i++)
        {
            var this_x = (xx + 30)
            if (i < 14 && (i % 2) == 1)
                this_x = xx2
            var name = scr_gettext(("credits_short_thanks1_" + string((i + 1))))
            draw_text(this_x, yy, string_hash_to_newline(name))
            if (i >= 14 || (i % 2) == 1)
                yy += 18
        }
    }
    else
    {
        for (i = 0; i < 14; i++)
        {
            this_x = (xx + 30)
            if (i < 10 && (i % 2) == 1)
                this_x = xx2
            name = scr_gettext(("credits_short_thanks1_" + string((i + 1))))
            draw_text(this_x, yy, string_hash_to_newline(name))
            if (i >= 10 || (i % 2) == 1)
                yy += 18
        }
    }
    scr_setfont(fnt_ja_maintext)
}
if (number == 10)
{
    xx = 40
    if (global.language == "ja")
        xx = 32
    xx2 = 190
    yy = 24
    draw_set_color(c_yellow)
    scr_credits_short_draw_name(xx, yy, string_hash_to_newline(scr_gettext("credits_short_thanks2_0")))
    yy += 18
    draw_set_color(c_white)
    draw_set_font(fnt_maintext)
    if (os_type == os_xboxone)
    {
        for (i = 0; i < 18; i++)
        {
            this_x = (xx + 30)
            if ((i % 2) == 1)
                this_x = xx2
            name = scr_gettext(("credits_short_thanks2_" + string((i + 1))))
            draw_text(this_x, yy, string_hash_to_newline(name))
            if ((i % 2) == 1 || i == 17)
                yy += 18
        }
    }
    else
    {
        for (i = 0; i < 15; i++)
        {
            this_x = (xx + 30)
            if ((i % 2) == 1)
                this_x = xx2
            name = scr_gettext(("credits_short_thanks2_" + string((i + 1))))
            draw_text(this_x, yy, string_hash_to_newline(name))
            if ((i % 2) == 1 || i == 14)
                yy += 18
        }
    }
    yy += 10
    scr_setfont(fnt_ja_maintext)
}
if (won >= 1)
{
    if control_check(InteractButton)
    {
        if (alarm[5] > 20)
            alarm[5] = 20
    }
}
