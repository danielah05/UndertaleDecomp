if instance_exists(obj_parsnik)
    sprite_index = spr_vegbullet_snake
dmg = 0
image_speed = 0
image_index = round(random(5))
graivty_direction = 270
gravity = 0.2
r = round(random(1))
if (r == 0)
    hspeed = (2 + random(0.2))
if (r == 1)
    hspeed = (-2 - random(0.2))
y -= 8
if (x < (global.idealborder[0] + 20))
    x += 20
green = 0
