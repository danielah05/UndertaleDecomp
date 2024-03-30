myinteract = 0
image_xscale = 1
image_yscale = 1
if (room == room_castle_front && scr_murderlv() < 16)
    instance_destroy()
if (room == room_sanscorridor && scr_murderlv() < 16)
    instance_destroy()
if (room == room_fire_hotellobby && scr_murderlv() < 12)
    instance_destroy()
