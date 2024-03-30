image_speed = 0
xxx = 0
if (x <= obj_target.x)
    hspeed = (global.attackspeed + random(global.attackspeedr))
if (x > (obj_target.x + obj_target.sprite_width))
    hspeed = (-((global.attackspeed + random(global.attackspeedr))))
