draw_sprite(sprite_index, 1, x, y)
draw_sprite_part(spr_elevatordoor, 0, side, 0, (20 - side), 50, x, y)
draw_sprite_part(spr_elevatordoor, 0, 0, 0, (20 - side), 50, ((x + 20) + side), y)
draw_sprite(sprite_index, 0, x, y)
