y = 0
if (view_xview_get(0) >= 0)
    x = (floor((view_xview_get(0) - (view_xview_get(0) * scrollspeed))) + 150)
gg = (room_width - view_wview_get(0))
if (view_xview_get(0) >= gg)
    x = (floor((gg - (gg * scrollspeed))) + 150)
