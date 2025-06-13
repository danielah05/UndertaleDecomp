if (instance_exists(obj_mainchara) && init_band == 0)
{
	if (room == room_fire_lasers1 && obj_mainchara.x > 800)
		x = 800
	if (room == room_fire6 && obj_mainchara.y > 280)
		y = 160
	if (room == room_fire6 && obj_mainchara.x > 560)
		x = 500
	init_band = 1
}
if (view_xview_get(0) > (x + 60))
	x += 20
if (view_xview_get(0) < (x + 20))
	x -= 20
if (view_yview_get(0) > (y + 70))
	y += 40
if (view_yview_get(0) < (y + 10))
	y -= 40
if (x < -40)
	x = -40
if (x > (room_width - 360))
	x = (room_width - 360)
if (y > (room_height - 280))
	y = (room_height - 280)
if (y < -40)
	y = -40
