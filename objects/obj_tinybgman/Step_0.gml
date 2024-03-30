if (c == 1)
{
    vspeed = 0
    image_speed = 0
    alarm[0] = 30
    c = 2
}
if (c == 3)
{
    hspeed = 0.2
    image_speed = 0.25
    alarm[0] = 30
    c = 4
}
if (c == 5)
{
    hspeed = 0
    image_speed = 0
    alarm[0] = 30
    c = 6
}
if (c == 7)
{
    hspeed = -0.2
    image_speed = 0.25
    alarm[0] = 60
    c = 8
}
if (c == 9)
{
    hspeed = 0
    image_speed = 0
    alarm[0] = 30
    c = 10
}
if (c == 11)
{
    hspeed = 0.2
    image_speed = 0.2
    alarm[0] = 30
    c = 12
}
if (c == 13)
{
    hspeed = 0
    vspeed = -0.2
    image_speed = 0.2
    alarm[0] = 40
    c = 14
}
if (c == 15)
{
    vspeed = 0
    c = 16
    alarm[0] = 30
}
if (c == 17)
{
    with (obj_tinybghouse)
        man = 0
    with (obj_tinybghouse)
        image_index = 0
    instance_destroy()
}
