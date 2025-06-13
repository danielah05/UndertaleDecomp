draw_set_color(c_white)
yy = 0
xx = 0
while (yy < 5)
{
	if (dodraw[xx, yy] == 1)
		draw_circle(snowx[xx, yy], snowy[xx, yy], 2.8, 0)
	if (collision_circle(snowx[xx, yy], snowy[xx, yy], 2, obj_mainchara, 0, 1) != noone)
		moveme[xx, yy] = (floor(random(4)) + 2)
	if (moveme[xx, yy] > 1)
	{
		if (obj_mainchara.moving == true)
		{
			if (room == room_tundra_snowpuzz && FL_ToggledSnowSwitch == 0)
				FL_ToggledSnowSwitch = -1
			if (obj_mainchara.bbox_left > snowx[xx, yy])
				snowx[xx, yy] -= moveme[xx, yy]
			if (obj_mainchara.bbox_right < snowx[xx, yy])
				snowx[xx, yy] += moveme[xx, yy]
			if (obj_mainchara.bbox_top > snowy[xx, yy])
				snowy[xx, yy] -= moveme[xx, yy]
			if (obj_mainchara.bbox_bottom < snowy[xx, yy])
				snowy[xx, yy] += moveme[xx, yy]
			snowx[xx, yy] += ((random(moveme[xx, yy]) - (moveme[xx, yy] / 2)) / 2)
			snowy[xx, yy] += ((random(moveme[xx, yy]) - (moveme[xx, yy] / 2)) / 2)
		}
		moveme[xx, yy] -= 1
	}
	if (xx == 4)
	{
		xx = -1
		yy += 1
	}
	xx += 1
}
