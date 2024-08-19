alarm[0] = 15
falling = 0
fell = 0
rate = 0
colliding = 0
rate_time = 90
if (room == room_water3)
{
    x1 = 220
    y1 = 180
    x2 = 380
    y2 = 260
    triggery = 283
}
if (room == room_water7)
{
    x1 = 80
    x2 = 240
    y1 = 180
    y2 = 200
    triggery = 263
}
if (scr_murderlv() >= MurderLevel.Lv8PapyrusKilled && FL_SparedSpecific == 0)
    alarm[0] = -1
