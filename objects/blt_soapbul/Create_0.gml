angle = 0
angleadd = 0
dmg = 0
image_speed = 0
direction = random(180)
if (direction < 10)
    direction += 20
if (abs((direction - 90)) < 10)
    direction += 30
if (abs((direction - 180)) < 10)
    direction -= 20
speed = 4
if (abs(hspeed) < 0.2)
    hspeed *= 3
if (abs(vspeed) < 0.2)
    vspeed *= 3
friction = -0.04
blue = 0
alarm[0] = 4
offset = 0
