if (size > 0.8)
    image_alpha -= 0.05
size += 0.15
image_xscale = size
image_yscale = size
if (image_alpha < 0.1)
    instance_destroy()
image_angle += 8
