if (con == 1)
{
    global.interact = 1
    if (obj_mainchara.y >= (finaly - 3))
    {
        obj_mainchara.y = finaly
        con = 2
    }
}
if (con == 2)
{
    global.phasing = 0
    obj_mainchara.vspeed = 0
    global.interact = 0
    obj_mainchara.image_alpha = 1
    con = 3
    instance_destroy()
}
