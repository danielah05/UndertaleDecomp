size += 0.5
image_xscale = size
image_yscale = size
if (size > 2)
    image_alpha -= 0.2
if (image_alpha < 0.2)
    instance_destroy()
