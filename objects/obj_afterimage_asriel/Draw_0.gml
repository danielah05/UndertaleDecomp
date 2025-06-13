image_alpha -= 0.02
hue += 9
mycolor = old_make_color_hsv(hue, 255, 250)
draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, mycolor, image_alpha)
if (image_alpha < 0.06)
	instance_destroy()
