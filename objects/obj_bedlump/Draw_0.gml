wc = 0
wc2 = 0
if (x < x1)
    wc = (x1 - x)
if (x > x2)
    wc2 = (x - x2)
draw_sprite_part(sprite_index, GR, wc, 0, ((sprite_width - wc) - wc2), sprite_height, (x + wc), y)
