l += 1
thisbullet = instance_create(xstart, ystart, object_index)
if instance_exists(thisbullet)
{
    thisbullet.startdir = startdir
    thisbullet.startspeed = startspeed
    thisbullet.rotdir = rotdir
    thisbullet.dmg = dmg
}
if (l < limit)
    alarm[4] = 26
