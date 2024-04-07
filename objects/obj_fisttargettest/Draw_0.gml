draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, image_alpha)
draw_set_color(c_green)
draw_text(0, 0, string_hash_to_newline(myscore))
if (myscore > 400)
{
    draw_set_color(c_yellow)
    draw_text(0, 100, string_hash_to_newline("critical  hit!"))
}
if (myscore > 430)
{
    draw_set_color(c_red)
    draw_text(200, 200, string_hash_to_newline("CRITICAL HIT!!!"))
}
