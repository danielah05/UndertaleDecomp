dmg = 0
image_speed = 0.5
grchoice = round(random(1))
if (grchoice == 1)
    gravity_direction = 90
if (grchoice == 0)
    graivty_direction = 270
gravity = (0.2 + random(0.1))
friction = 0.15
if (x < (global.idealborder[0] + 10))
    hspeed = (1 + random(2))
if (x > (global.idealborder[1] - 10))
    hspeed = (-1 - random(2))
