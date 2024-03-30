if (y > (obj_uborder.y - 10))
{
    if (off == 0)
        off = 1
    else
        off = 0
    if (green == 1)
        off = 2
    bl = instance_create((x + 20), (y + 10), obj_exhaustbullet)
    if instance_exists(bl)
    {
        bl.dmg = dmg
        bl.off = off
    }
}
alarm[0] = 6
if (green == 1)
    alarm[0] = 10
if (pop > 1)
    alarm[0] *= 1.5
