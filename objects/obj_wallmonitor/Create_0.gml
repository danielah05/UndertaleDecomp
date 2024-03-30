image_speed = 0.1
lit = 0
active = true
if (room == room_truelab_prepower)
    active = false
if (FL_PowerSwitchAmalgamEvent == 1)
{
    active = false
    if (room == room_truelab_prepower)
        active = 2
}
