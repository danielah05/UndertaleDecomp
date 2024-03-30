if (speed < 0.5)
    image_alpha -= 0.03
if (image_alpha < 0.1)
    instance_destroy()
image_xscale += (1 / (4 + (image_xscale * 8)))
image_yscale += (1 / (4 + (image_yscale * 8)))
image_angle += (speed + 1)
