if (x < (obj_lborder.x + 4))
{
    x += 4
    hspeed = 0
}
if (y < (obj_uborder.y + 4))
{
    y += 4
    vspeed = 0
}
if (x > (obj_rborder.x - 4))
{
    x -= 4
    hspeed = 0
}
if (y > (obj_dborder.y - 4))
{
    y -= 4
    vspeed = 0
}
if (global.turntimer < 1)
{
    global.sp = mysp
    global.turntimer = -1
    global.mnfight = 3
    instance_destroy()
}
