timer += 1
image_xscale += 1
image_yscale += 1
if (timer > 7)
    image_alpha -= 0.2
if (image_alpha < 0.2)
    instance_destroy()
