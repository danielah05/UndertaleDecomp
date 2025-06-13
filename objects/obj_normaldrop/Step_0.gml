if (y > goal)
	event_user(1)
if (dont == 0)
{
	if (x < (view_xview_get(0) - 40))
		x += 361
	if (x > (view_xview_get(0) + 360))
		x -= 361
}
