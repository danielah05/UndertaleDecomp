dmg = 0
vspeed = (-((0.2 + random(2))))
friction = -0.1
image_speed = 0.25
image_angle = 90
if (x < global.idealborder[0])
    instance_destroy()
if (x > (global.idealborder[1] - 16))
    instance_destroy()
