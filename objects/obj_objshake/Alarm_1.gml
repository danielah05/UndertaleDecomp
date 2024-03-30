if (oo == 0)
    oo = 1
else
    oo = 0
if (oo == 0)
    obj.x = (thisx - shx)
if (oo == 1)
    obj.x = (thisx + shx)
shx -= 1
if (shx > 0)
    alarm[1] = shaketime
else
{
    obj.x = thisx
    instance_destroy()
}
