// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
    draw_set_font(fnt_maintext)
    draw_set_color(c_white)
    draw_text(10, 10, string_hash_to_newline(round((time / 30))))
    draw_text(10, 30, string_hash_to_newline(global.savedata_debuginfo))
}
