scr_depth(0, 0, 0, 0, 0)
if (obj_mainchara.y > (y + 80))
{
	if (t == 0)
	{
		alarm[5] = 30
		t = 1
	}
}
else
{
	alarm[5] = 24
	path_speed = 2
	if (obj_mainchara.y < (y + 65))
		path_speed = 3
	if (obj_mainchara.y < (y + 50))
		path_speed = 4
	image_speed = 0.2
}
scr_npcdir(0)
