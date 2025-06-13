image_xscale = 3
t = 0
if (room == room_tundra_snowpuzz)
{
	if (scr_murderlv() >= MurderLevel.Lv3DoggoKilled)
	{
		if (FL_ToggledSnowSwitch == 0)
			FL_ToggledSnowSwitch = 1
		if (global.plot <= 48)
			global.plot = 49
	}
}
