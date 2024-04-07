image_xscale += 0.1
image_yscale += 0.1
image_alpha -= 0.1
if (image_alpha < 0.05)
    instance_destroy()
