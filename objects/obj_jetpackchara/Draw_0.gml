xx = view_xview_get(0)
yy = view_yview_get(0)
draw_sprite(sprite_index, image_index, x, y)
timertime -= 1
if (timertime < 300)
    timertime += 0.25
