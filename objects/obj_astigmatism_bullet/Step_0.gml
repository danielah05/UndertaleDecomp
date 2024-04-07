siner += 1
y += (cos((siner / 3)) * 0.6)
asiner += av
if instance_exists(kid)
{
    kid.x = ((-2 + x) + (sin((asiner / 16)) * factor1))
    kid.y = (y + (cos((asiner / 16)) * factor1))
}
if instance_exists(kid2)
{
    kid2.x = (x + (sin((asiner / 16)) * factor2))
    kid2.y = (y + (cos((asiner / 16)) * factor2))
}
if (x < 0)
    instance_destroy()
if (image_alpha < 1 && off == 0)
    image_alpha += 0.1
if (x < (global.idealborder[0] - 30))
    off = 1
if (off == 1)
    image_alpha -= 0.05
if (image_alpha < 0.1 && off == 1)
    instance_destroy()
