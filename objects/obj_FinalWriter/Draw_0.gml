scr_setfont(fnt_main)
if (global.language == "ja")
    var textscale = 1.5
else
    textscale = 2
if (active == true)
{
    draw_set_alpha(0.9)
    draw_text_transformed(((wx - 2) + random(4)), ((wy - 2) + random(4)), string_hash_to_newline(string1), textscale, textscale, 0)
    draw_set_alpha(0.7)
    draw_text_transformed(((wx - 2) + random(4)), ((wy - 3) + random(4)), string_hash_to_newline(string1), textscale, textscale, 0)
    i = 2
    repeat (5)
    {
        draw_set_alpha((0.7 - (i * 0.1)))
        draw_text_transformed(((wx - (i * 4)) + random((i * 8))), ((wy - (i * 4)) + random((i * 8))), string_hash_to_newline(string1), textscale, textscale, 0)
        i += 1
    }
}
