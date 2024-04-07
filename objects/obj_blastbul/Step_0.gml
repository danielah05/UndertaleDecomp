size += 0.1
if (size > maxsize)
    image_alpha -= 0.2
image_xscale = size
image_yscale = size
if (image_alpha < 0.06)
    instance_destroy()
x = ((xstart + 3) - random(6))
y = ((ystart + 3) - random(6))
