slide_con = 0
locked = true
if (global.plot >= 190)
    locked = false
open = false
door1x = 0
door2x = 0
rattle = 0
held = 0
interacter = instance_create(136, 42, obj_readable_room5)
interacter.image_xscale = 6
interacter.locked = locked
block = instance_create(136, 42, obj_solidsmall)
block.image_xscale = 6
door = instance_create(150, 34, obj_doorAmusicfade)
if (FL_MadMewMewStatus >= MadMewMewStatus.DoorOpened)
{
    door1x = -20
    door2x = 20
    open = true
    with (block)
        instance_destroy()
    with (interacter)
        instance_destroy()
}
