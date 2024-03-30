draw_set_alpha(1)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha)
scr_setfont(fnt_maintext)
draw_set_color(c_white)
var texty = 450
var textyscale = 10
if (global.language == "ja")
{
    texty = 480
    textyscale = 8
}
draw_text_transformed(180, texty, string_hash_to_newline(scr_gettext("credits_theend_fake")), 6, textyscale, 0)
if (n_timer == 7)
    n_alpha = 0
if (n_timer >= 8 && n_timer <= 16)
{
    n_alpha += 0.25
    if (n_alpha > 0.75)
        n_alpha = 0.75
    event_user(0)
}
if (n_timer == 19)
    n_alpha = 0
if (n_timer >= 24 && n_timer <= 30)
{
    n_alpha += 0.25
    if (n_alpha > 0.75)
        n_alpha = 0.75
    event_user(0)
}
if (n_timer == 40)
    n_alpha = 0
if (n_timer >= 60)
{
    if (n_alpha < 1)
        n_alpha += 0.25
    event_user(0)
}
