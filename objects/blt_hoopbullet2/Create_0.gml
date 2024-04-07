dmg = 0
r = round(random(1))
b = round(random(1))
if (r == 0)
    hspeed = 1
else
    hspeed = -1
if (b == 1)
    vspeed = 1
else
    vspeed = -1
x += 5
friction = -0.042
intangible = 1
image_alpha = 0
if (instance_number(blt_hoopbullet2) > 5)
    instance_destroy()
