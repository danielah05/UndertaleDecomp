draw_sprite(sprite_index, image_index, x, y)
draw_set_color(c_white)
ossafe_fill_rectangle((x + 48), (y + 36), ((x + 50) + length), (y + 62))
draw_sprite(spr_temback, image_index, ((x + sprite_width) + length), y)
