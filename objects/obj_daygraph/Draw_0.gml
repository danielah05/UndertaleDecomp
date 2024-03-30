draw_sprite_ext(sprite_index, image_index, (x + 24), (y + 24), 2, 2, rot, c_white, 1)
scr_setfont(fnt_main)
draw_set_color(c_white)
draw_text((x + 60), (y + 10), string_hash_to_newline(day))
rot += 0.34
