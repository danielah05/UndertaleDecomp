if instance_exists(obj_mandogbody)
{
    image_speed = 0.125
    image_index = obj_mandogbody.image_index
}
else
    image_speed = 0
if (image_index == 0)
{
    if (depth == 10)
        depth = 9
    else
        depth = 10
}
