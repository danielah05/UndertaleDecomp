if (room == room_water5)
{
	if (global.plot > 106)
		instance_destroy()
}
if (room == room_water19 && global.plot > 118)
	instance_destroy()
if (room == room_water19)
	image_yscale = 10
if (room == room_water_friendlyhub)
	image_yscale = 20
if (room == room_fire_cookingshow)
	image_yscale = 5
if (room == room_fire_cookingshow && global.plot > 134)
	instance_destroy()
con = 0
