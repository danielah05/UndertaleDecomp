if (instance_exists(obj_shaker) == false)
{
	if (on == 1)
	{
		view_xview_set(0, round(((obj_mainchara.x - (view_wview_get(0) / 2)) + 10)))
		view_yview_set(0, round(((obj_mainchara.y - (view_hview_get(0) / 2)) + 10)))
	}
}
if (on == 1)
{
	x = (view_xview_get(0) + stayx)
	if (x >= (room_width - view_wview_get(0)))
		x = (room_width - view_wview_get(0))
	y = (view_yview_get(0) + stayy)
	if (y <= 200)
		y = 200
	if (view_yview_get(0) <= 0)
		view_yview_set(0, 0)
}
if (view_yview_get(0) <= 0)
	view_yview_set(0, 0)
