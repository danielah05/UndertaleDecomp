image_alpha -= 0.02
if (image_alpha < 0.05)
    instance_destroy()
rot += 2
size += 0.07
draw_sprite_ext(sprite_index, 9, x, y, size, size, rot, c_white, image_alpha)
siner += 1
x += (sin((siner / 5)) * 2)
