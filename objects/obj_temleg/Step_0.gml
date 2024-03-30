if (control == 1)
{
    if obj_time.right
        hspeed += 0.2
    if obj_time.left
        hspeed -= 0.2
    if (obj_time.down && height > 4)
    {
        height -= 1
        y += 1
    }
    if obj_time.up
    {
        height += 1
        y -= 1
    }
}
siner -= hspeed
if (global.turntimer < 1)
    instance_destroy()
