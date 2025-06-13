xx = view_xview_get(view_current)
yy = view_yview_get(view_current)
mode = 0
mychoicex = (xx + 20)
mychoicey = (yy + 223)
if (room == room_area1_2 || room == room_tundra_paproom)
{
	mychoicex = (xx + 154)
	mychoicey = (yy + 156)
}
if (room == room_water_undynefinal)
{
	mychoicex = (xx + 154)
	mychoicey = (yy + 110)
}
spdr = (distance_to_point(mychoicex, mychoicey) / 17)
move_towards_point(mychoicex, mychoicey, spdr)
if (FL_TypeHeartTransition == HeartTransitionType.QuickBattle)
{
	mychoicex = (xx + 154)
	mychoicey = (yy + 156)
	spdr = (distance_to_point(mychoicex, mychoicey) / 8)
	move_towards_point(mychoicex, mychoicey, spdr)
}
