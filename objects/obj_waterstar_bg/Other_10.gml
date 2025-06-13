if (f_test == 1)
{
	myview = view_xview_get(0)
	myview_b = view_xview_get(0)
	if (g_heart < 4 && obj_mainchara.x > (room_width - 160))
		myview -= 140
	g_heart += 1
	gg = (room_width - view_wview_get(0))
	if (myview < 0)
		myview = 0
	if (x < (myview - 20) && myview < gg)
	{
		x += 350
		xhome += 350
	}
	if (x > (myview + 340))
	{
		x -= 350
		xhome -= 350
	}
	if (view_xview_get(0) >= 0)
		x = (xhome + round((view_xview_get(0) - (view_xview_get(0) * scrollspeed))))
	if (view_xview_get(0) >= gg)
		x = (xhome + round((gg - (gg * scrollspeed))))
}
