image_speed = 0.5
direction = point_direction(x, y, obj_heart.x, obj_heart.y)
direction += (random(50) - random(50))
if (direction < 165)
    direction += (170 - direction)
if (direction > 270)
    direction -= (direction - 270)
speed = (2 + random(0.5))
image_xscale = 2
image_yscale = 2
siner = random(360)
sf = (1 + random(1))
sf2 = (1 + random(1))
s = (3 + random(1))
siner2 = random(360)
siner2v = (0.5 + random(1.5))
hmem = hspeed
counter = 0
dmg = 9
