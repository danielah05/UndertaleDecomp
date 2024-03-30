image_xscale = 2
image_yscale = 2
gravity = (0.05 + random(0.1))
gravity_direction = ((180 - random(40)) + random(40))
vspeed = ((1 + random(1)) - random(2))
if (x < (room_width / 2))
    gravity *= -1
fade = 0
alarm[0] = 40
