myinteract = 0
image_xscale = 1
image_yscale = 1
image_speed = 0.2
if (FL_DatedAlphys >= 12 && FL_TruePacifist == false)
{
    if (room == room_castle_front)
        instance_destroy()
    if (room == room_castle_finalshoehorn)
        instance_destroy()
    if (room == room_sanscorridor)
        instance_destroy()
    if (room == room_castle_elevatorout)
        instance_destroy()
    if (room == room_castle_throneroom)
        instance_destroy()
}
if (room == room_water19)
{
    if (scr_murderlv() < 11 || FL_SparedSpecific == 1 || global.plot > 119)
        instance_destroy()
}
