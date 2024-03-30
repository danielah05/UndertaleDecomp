angle = (direction + 90)
image_angle = angle
image_xscale = (speed / 3)
image_yscale = (speed / 3)
if (blue == 3)
{
    alarm[7] += 0.5
    image_xscale = (speed / 2)
    image_yscale = (speed / 2)
}
if (global.turntimer < 1)
    global.mnfight = 3
if (alarm[7] < 10)
    image_alpha -= 0.1
