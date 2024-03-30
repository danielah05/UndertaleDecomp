d += 0.05
if obj_time.right
    h += 1
g = make_color_hsv(h % 255, (100 + (sin(d) * 100)), 255)
background_colour_set(g)
