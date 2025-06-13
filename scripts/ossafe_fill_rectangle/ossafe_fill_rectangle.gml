function ossafe_fill_rectangle(_x1, _y1, _x2, _y2)
{
	var x1 = _x1
	var y1 = _y1
	var x2 = _x2
	var y2 = _y2 
	if (x1 > x2)
	{
		var temp = x1
		x1 = x2
		x2 = temp
	}
	if (y1 > y2)
	{
		temp = y1
		y1 = y2
		y2 = temp
	}
	if (os_type == os_ps4 || os_type == os_psvita)
	{
		x2++
		y2++
	}
	draw_rectangle(x1, y1, x2, y2, false)
}
