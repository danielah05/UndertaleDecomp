buffer = 0
active = true
doorx = 0
open = -1
side = 0
if (room == room_fire_prelab)
{
    sprite_index = spr_labdoor_hang
    if (global.entrance == 5)
    {
        open = 1
        doorx = 8
    }
    if (FL_AlphysLabLocked == 1)
    {
        instance_create((x + 0), (y + 52), obj_solidsmall)
        active = false
        doorx = 0
    }
    else
        instance_create((x + 0), (y + 50), obj_doorCmusicfade)
}
else
{
    side = 1
    if (global.entrance == 4)
    {
        open = 1
        doorx = 8
    }
    if (FL_AlphysLabLocked == 1)
    {
        instance_create((x + 15), (y + 51), obj_solidsmall)
        active = false
        doorx = 0
    }
    else
        instance_create((x + 0), (y + 50), obj_doorDmusicfade)
}
con = 0
myinteract = 0
