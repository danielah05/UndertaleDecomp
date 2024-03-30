if (drawnlab == 1 && global.entrance != 3)
    draw_sprite(sprite_index, image_index, x, y)
draw_set_color(c_aqua)
if (altglow == 0)
    altglow = 1
else
    altglow = 0
if (altglow == 0)
    draw_set_alpha(0.1)
else
    draw_set_alpha(0.3)
ossafe_fill_rectangle(x, y, (x + 59), (y + 39))
draw_set_alpha(1)
draw_sprite(spr_bigmonitor, 0, x, y)
