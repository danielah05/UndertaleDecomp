myview = view_xview_get(0)
gg = (room_width - view_wview_get(0))
if (myview < 0)
	myview = 0
if (view_xview_get(0) <= 0)
	x = xhome
if (view_xview_get(0) > 0)
	x = (xhome + floor((view_xview_get(0) - (view_xview_get(0) * scrollspeed))))
if (view_xview_get(0) >= gg)
	x = (xhome + floor((gg - (gg * scrollspeed))))
