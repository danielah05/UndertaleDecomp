myinteract = 0
facing = Direction.Down
direction = 0
talkedto = 0
image_speed = 0
dm = 0
if (scr_murderlv() >= 8)
    dm = 1
if (global.plot < 122)
    dm = 1
if (FL_UndyneStatus == UndyneStatus.Killed)
    dm = 1
if (dm == 1)
{
    instance_destroy()
    return;
}
spec = 0
