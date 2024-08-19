myinteract = 0
image_xscale = 1
image_yscale = 1
if (room == room_castle_front && scr_murderlv() < MurderLevel.Lv16MettatonKilled)
    instance_destroy()
if (room == room_sanscorridor && scr_murderlv() < MurderLevel.Lv16MettatonKilled)
    instance_destroy()
if (room == room_fire_hotellobby && scr_murderlv() < MurderLevel.Lv12UndyneEXKilled)
    instance_destroy()
