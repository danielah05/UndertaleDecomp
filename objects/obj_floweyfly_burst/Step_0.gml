image_xscale += 0.25
image_yscale += 0.25
image_angle += aa
image_alpha -= 0.2
if (image_alpha <= 0.1)
    instance_destroy()
