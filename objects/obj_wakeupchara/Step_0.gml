if (active == false)
    instance_destroy()
if (active == true)
{
    active = 2
    alarm[2] = 60
}
if (active == 2)
    global.interact = 1
if (active == 3)
{
    active = 4
    alarm[2] = 10
}
if (active == 5)
{
    obj_mainchara.image_angle += 18
    obj_mainchara.y -= 4
    obj_mainchara.x -= 8
    if (obj_mainchara.image_angle >= -1)
    {
        obj_mainchara.image_angle = 0
        if (room == room_water_trashzone1)
            global.plot = 115
        global.interact = 0
        instance_destroy()
    }
}
