if (image_xscale < 1)
{
    image_xscale += 0.05
    image_yscale += 0.05
}
if (y > (obj_dborder.y - 15))
{
    instance_destroy()
    obj_spiderb_body.purple += 4
}
image_angle = (direction + 90)
