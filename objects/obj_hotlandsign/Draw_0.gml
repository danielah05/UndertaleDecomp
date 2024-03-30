draw_set_color(c_black)
ossafe_fill_rectangle((x - 12), (y - 12), (x + 493), (y + 52))
if (inactive == 0)
    draw_sprite_part_ext(spr_hotlandsign, image_index, (0 - xaround), 0, 60, 5, x, y, 8, 8, c_red, 1)
if (inactive == 1)
    draw_sprite_part_ext(spr_hotlandsign, image_index, (0 - xaround), 0, 60, 5, x, y, 8, 8, c_red, 0.5)
for (i = 0; i < 60; i += 1)
{
    g = 0
    repeat (5)
    {
        draw_sprite(spr_hotlandcover, 0, (x + (i * 8)), (y + (g * 8)))
        g += 1
    }
}
draw_set_color(c_green)
if (greenbright == 1)
    draw_set_color(c_lime)
draw_roundrect((x - 10), (y - 10), (x + 490), (y + 50), 1)
draw_set_color(c_green)
if (greenbright == 3)
    draw_set_color(c_lime)
draw_roundrect((x - 11), (y - 11), (x + 491), (y + 51), 1)
draw_set_color(c_green)
if (greenbright == 5)
    draw_set_color(c_lime)
draw_roundrect((x - 12), (y - 12), (x + 492), (y + 52), 1)
