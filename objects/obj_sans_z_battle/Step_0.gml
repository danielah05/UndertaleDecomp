hspeed = 2
siner += 1
x += sin((siner / 4))
y += cos((siner / 4))
if (image_xscale < 1)
    image_xscale += 0.04
if (image_yscale < 1)
    image_yscale += 0.04
if (siner > 60)
{
    image_alpha -= 0.1
    if (image_alpha < 0.1)
        instance_destroy()
}
