image_angle = random(360)
aa = (choose(1, -1) * (random(4) + 1))
vspeed = -12
if (x < 320)
    hspeed = (1 + random(1))
if (x > 320)
    hspeed = -10
random(1)
gravity_direction = (260 + random(20))
gravity = (0.5 + random(0.2))
visible = false
alarm[0] = 1
stop = 0
deactivate = 0
if (hspeed < -2)
    hspeed = -2
if (hspeed > 2)
    hspeed = 2
dmg = 9
