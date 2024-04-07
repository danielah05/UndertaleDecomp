image_angle += ang
if (form == 0)
    size += 0.3
if (size > 2.8)
{
    if (instance_exists(obj_shaker) == false)
        instance_create(0, 0, obj_shaker)
    form = 1
}
if (form == 1)
{
    size -= 0.6
    image_alpha -= 0.2
}
image_xscale = size
image_yscale = size
siner += 1
