siner += 15
sineramt += sinerspeed
sinerspeed += sinergrav
image_angle += ang
asiner = degtorad(siner)
x = (xstart + (sin(asiner) * sineramt))
y = (ystart + (cos(asiner) * sineramt))
size = (1 + (sinerspeed / 20))
if (size < 0.2)
    size = 0
if (sinerspeed < 0)
    image_alpha -= 0.07
image_xscale = size
image_yscale = size
if (sineramt <= 0.5)
    instance_destroy()
