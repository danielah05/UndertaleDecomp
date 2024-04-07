vic = 0
fvic = 0
image_speed = 0
if (scr_murderlv() >= 4 && FL_SparedSpecific == 0)
{
    if (global.plot < 57)
        global.plot = 57
    if (room == room_tundra_iceentrance && global.plot < 63)
        global.plot = 63
}
