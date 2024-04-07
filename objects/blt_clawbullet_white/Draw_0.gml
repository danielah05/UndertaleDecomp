image_angle = (direction + (rotdir * 2))
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, image_alpha)
direction += rotdir
scr_bordercross(12)
image_alpha += 0.1
