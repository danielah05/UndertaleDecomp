friction = 0.025
dirdir = point_direction(x, y, (obj_vsflowey_heart.x + 8), (obj_vsflowey_heart.y + 8))
hspeed += lengthdir_x(0.13, dirdir)
vspeed += lengthdir_y(0.13, dirdir)
size += 0.02
image_xscale = size
image_yscale = size
if (size > 1)
{
    image_alpha -= 0.15
    if (image_alpha < 0.2)
        instance_destroy()
}
