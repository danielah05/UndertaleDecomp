if (global.debug == true)
{
    draw_set_color(c_red)
    draw_text(0, 0, string_hash_to_newline(turns))
    if keyboard_check_pressed(ord("S"))
        turns += 1
    if keyboard_check_pressed(ord("A"))
        turns -= 1
}
