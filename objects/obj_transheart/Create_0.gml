xx = view_xview_get(view_current)
yy = view_yview_get(view_current)
mode = 0
alarm[0] = 0
mychoicex = (xx + 20)
mychoicey = (yy + 223)
if (room == room_area1_2 || room == room_tundra_paproom)
{
    mychoicex = (xx + 154)
    mychoicey = (yy + 156)
}
if (room == room_water_undynefinal || room == room_water_undynefinal2 || room == room_water_undynefinal3 || room == room_fire1)
{
    mychoicex = (xx + 156)
    mychoicey = (yy + 116)
}
spdr = (distance_to_point(mychoicex, mychoicey) / 17)
move_towards_point(mychoicex, mychoicey, spdr)
snd_play(snd_battlefall)
if (FL_TypeHeartTransition == HeartTransitionType.QuickBattle)
{
    x = xstart
    y = ystart
    mychoicex = (xx + 154)
    mychoicey = (yy + 156)
    spdr = (distance_to_point(mychoicex, mychoicey) / 8)
    move_towards_point(mychoicex, mychoicey, spdr)
    snd_play(snd_battlefall)
}
