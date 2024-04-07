hspeed = 0
speedfactor = 6
choice = 1
if instance_exists(obj_purpleheart)
{
    xfactor = (floor((random((obj_purpleheart.xlen * 2)) / 8)) * 8)
    x = ((obj_purpleheart.xmid - obj_purpleheart.xlen) + xfactor)
}
alarm[0] = 1
visible = false
