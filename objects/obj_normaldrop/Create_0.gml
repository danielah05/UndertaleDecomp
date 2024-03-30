vspeed = (2 + random(1))
gravity = 0.2
gravity_direction = 270
y += 245
scr_depth()
y -= 245
dont = 0
goal = (ystart + 240)
if (room == room_water_waterfall2)
    goal = (ystart + random(480))
