draw_set_color(color)
draw_set_alpha(alpha)
draw_triangle(originx, originy, outx, outy, outx2, outy2, 0)
draw_set_alpha(1)
alpha -= 0.16
if (alpha < 0.13)
    instance_destroy()
