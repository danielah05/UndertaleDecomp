size += 0.1
image_xscale = size
image_yscale = size
image_alpha -= 0.1
image_angle += 6
if (image_alpha < 0.1)
    instance_destroy()
