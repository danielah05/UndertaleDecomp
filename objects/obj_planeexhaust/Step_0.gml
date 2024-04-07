image_angle += 1
size += 0.05
image_xscale = size
image_yscale = size
siner += 1
x += sin((siner / 2))
y += cos((siner / 2))
if (siner > 7)
    image_alpha -= 0.04
if (image_alpha < 0.05)
    instance_destroy()
