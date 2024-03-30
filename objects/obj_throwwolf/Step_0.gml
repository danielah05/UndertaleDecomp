if (stage > 0)
    valuindex += 0.1667
if (valuindex > 9.2 && stage == 1)
{
    stage = 2
    instance_create(x, y, obj_flyingiceblock)
}
if (valuindex >= 11)
{
    image_index = 0
    image_speed = 0
    stage = 0
    valuindex = 0
}
