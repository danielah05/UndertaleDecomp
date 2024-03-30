con = 0
ended = 0
if (FL_CompletedShootPuzzleCore == true)
    ended = 1
if (FL_CoreWarriorsSwitchState == true)
    ended = 1
if (FL_CoreForcefieldOff == true)
    ended = 1
if (ended == 0)
{
    ff = instance_create(x, y, obj_kitchenforcefield)
    ff.image_yscale = 4
    ff.basic = 0
}
timer = 0
