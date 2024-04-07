y = 160
image_xscale = 0.05
vspeed = 5
image_angle = point_direction(x, y, (obj_vsflowey_heart.x + 8), (obj_vsflowey_heart.y + 8))
if (image_angle > 312)
    image_angle = 312
if (image_angle < 240)
    image_angle = 240
alarm[0] = 50
num = 0
anchor = 0
xanchor = 0
yanchor = 0
side = 0
if (x > 440)
    side = 1
con = 0
