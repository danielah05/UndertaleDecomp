anim += 3
for (i = 0; i < 20; i += 1)
	draw_sprite_ext(sprite_index, 0, x, (((-210 + y) + (i * 30)) + anim), 2, 2, 0, c_white, 0.2)
if (anim > 180)
	anim -= 180
myview = 0
if (view_xview_get(0) > 0 && view_xview_get(0) < (room_width - view_wview_get(0)))
	myview = view_xview_get(0)
if (view_xview_get(0) >= (room_width - view_wview_get(0)))
	myview = (room_width - view_wview_get(0))
x = (xstart - (myview * 0.5))
