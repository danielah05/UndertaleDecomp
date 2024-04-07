if (bonk == 1)
{
    hspeed = 0
    vspeed = 0
    bonk = 0
}
else
{
    if obj_time.left
        hspeed -= ((0.6 / size) + 0.05)
    if obj_time.up
        vspeed -= ((0.6 / size) + 0.05)
    if obj_time.right
        hspeed += ((0.6 / size) + 0.05)
    if obj_time.down
        vspeed += ((0.6 / size) + 0.05)
}
other.x = other.xprevious
other.y = other.yprevious
