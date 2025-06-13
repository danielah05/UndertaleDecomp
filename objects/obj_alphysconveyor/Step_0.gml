col -= 1
if (col == 0 && global.interact == 1)
{
	global.interact = 0
	obj_mainchara.vspeed = 0
}
if (col > 0)
{
	obj_mainchara.x = x
	if (x > (room_width / 2))
		obj_mainchara.y -= 4
	else
		obj_mainchara.y += 4
}
