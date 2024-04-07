siner += 1
image_alpha -= 0.05
draw_sprite_part_ext(sprite_index, image_index, 0, 0, (sprite_width / 2), (sprite_height / 2), (x - siner), (y - siner), 1, 1, c_white, image_alpha)
draw_sprite_part_ext(sprite_index, image_index, (sprite_width / 2), 0, (sprite_width / 2), (sprite_height / 2), ((x + siner) + (sprite_width / 2)), (y - siner), 1, 1, c_white, image_alpha)
draw_sprite_part_ext(sprite_index, image_index, 0, (sprite_height / 2), (sprite_width / 2), (sprite_height / 2), (x - siner), ((y + siner) + (sprite_height / 2)), 1, 1, c_white, image_alpha)
draw_sprite_part_ext(sprite_index, image_index, (sprite_width / 2), (sprite_height / 2), (sprite_width / 2), (sprite_height / 2), ((x + siner) + (sprite_width / 2)), ((y + siner) + (sprite_height / 2)), 1, 1, c_white, image_alpha)
if (image_alpha < 0.1)
    instance_destroy()
