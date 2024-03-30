if (x > (xstart + 8))
    hspeed = -1
else
    hspeed = 1
if instance_exists(obj_gyftrotmouth)
    obj_gyftrotmouth.hspeed = hspeed
alarm[4] = (8 + random(10))
