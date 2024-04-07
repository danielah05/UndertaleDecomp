alpha -= 0.05
if (alpha < 0.13)
    instance_destroy()
image_angle = angle
image_blend = color
image_xscale = 2
image_yscale = 2
image_alpha = alpha
draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, angle, color, alpha)
