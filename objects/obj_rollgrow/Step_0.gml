depth = (50000 - ((y * 10) + (sprite_height * 4)))
xchange = abs(hspeed)
ychange = abs(vspeed)
tchange = (xchange + ychange)
if (size < 10)
    size += (tchange / ((size * 10) + 20))
angle += ((tchange * 30) / (size * 10))
image_xscale = size
image_yscale = size
