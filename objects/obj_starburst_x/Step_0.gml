size -= 0.1
image_xscale = size
image_yscale = size
if (size > 1.5)
    image_alpha -= 0.05
if (image_alpha < 0)
    instance_destroy()
image_angle += aspeed
aspeed -= 3
if (size < 0.3)
    instance_destroy()
