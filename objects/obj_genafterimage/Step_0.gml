image_alpha -= alphadown
size += growth
image_xscale = size
image_yscale = size
if (image_alpha < 0.1)
    instance_destroy()
