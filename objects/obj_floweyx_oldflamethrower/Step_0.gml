if (y > 190 && con == 0)
{
    con = 1
    vspeed = 0
    yanchor = y
    xanchor = x
    anchor = 1
}
if (con == 1 && image_xscale < 1)
    image_xscale += 0.05
image_angle = point_direction(x, y, (obj_vsflowey_heart.x + 8), (obj_vsflowey_heart.y + 8))
if (side == 0)
{
    if (image_angle > 312)
        image_angle = 312
    if (image_angle < 260)
        image_angle = 260
}
if (side == 1)
{
    if (image_angle < 225)
        image_angle = 225
    if (image_angle > 280)
        image_angle = 280
}
if (con == 3)
{
    vspeed = -5
    alarm[0] = -1
    if (image_xscale > 0.1)
        image_xscale -= 0.1
    if (y <= 150)
        instance_destroy()
}
