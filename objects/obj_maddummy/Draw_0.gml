draw_self_border_e()
// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
    draw_set_color(c_red)
    draw_text((x + 200), y, string_hash_to_newline(hp))
}
