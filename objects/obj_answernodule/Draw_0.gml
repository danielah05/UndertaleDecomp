scr_setfont(fnt_main)
draw_set_color(c_white)
if (obj_questionasker.phase > 2)
{
    draw_set_color(c_yellow)
    if (obj_questionasker.answer == -1)
        visible = false
}
if (answered == 1)
{
    if (obj_questionasker.correct == ano)
        draw_set_color(c_green)
    else
        draw_set_color(c_red)
}
atext2 = atext
if (atext == "special1")
{
    var mettlen = 8
    if (global.language == "ja")
        mettlen = 4
    if (qno == 0)
        atext2 = string(((obj_questionasker.mettamt + mettlen) + 3))
    if (qno == 1)
        atext2 = string(((obj_questionasker.mettamt + mettlen) - 2))
    if (qno == 2)
        atext2 = string((obj_questionasker.mettamt + mettlen))
    if (qno == 3)
        atext2 = string(((obj_questionasker.mettamt + mettlen) + 2))
}
sizefactor = 1
txtsize = string_width(string_hash_to_newline(atext2))
if (txtsize > 160)
    sizefactor = (160 / txtsize)
if (qno == 0 || qno == 2)
{
    draw_set_halign(fa_right)
    draw_text_transformed(((x - 20) + random(2)), (y + random(2)), string_hash_to_newline(atext2), sizefactor, 1, 0)
}
if (qno == 1 || qno == 3)
    draw_text_transformed(((x + 60) + random(2)), (y + random(2)), string_hash_to_newline(atext2), sizefactor, 1, 0)
if (answered == 0 && obj_questionasker.phase == 2)
    draw_sprite(sprite_index, 0, x, y)
draw_set_halign(fa_left)
