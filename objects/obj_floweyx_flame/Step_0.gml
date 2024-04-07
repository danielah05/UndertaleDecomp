image_angle = direction
friction = 0.3
if (hspeed > 0)
    hspeed -= 0.1
if (hspeed < 0)
    hspeed += 0.1
if ((obj_vsflowey_heart.x + 8) > x)
    hspeed += 0.1
if ((obj_vsflowey_heart.y + 8) > y)
    vspeed += 0.1
if ((obj_vsflowey_heart.y + 8) < y)
    vspeed -= 0.12
if ((obj_vsflowey_heart.x + 8) < x)
    hspeed -= 0.1
if (y > 380)
    hspeed *= 1.12
image_xscale = size
image_yscale = size
if (image_index > 9 && rp < 2)
{
    image_index = 5
    rp += 1
}
if (image_index > 18)
{
    if (image_alpha > 0.8)
        image_alpha = 0.8
    image_blend = merge_color(image_blend, c_aqua, 0.1)
    image_alpha -= 0.05
    if (image_alpha <= 0.1)
        instance_destroy()
}
if (image_index >= 40)
    instance_destroy()
