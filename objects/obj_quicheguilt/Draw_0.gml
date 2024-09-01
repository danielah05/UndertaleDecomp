// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
    draw_set_color(c_soulblue)
    draw_text(obj_mainchara.x, (obj_mainchara.y - 10), string_hash_to_newline(check))
    draw_text(obj_mainchara.x, (obj_mainchara.y - 20), string_hash_to_newline(qtimer))
}
