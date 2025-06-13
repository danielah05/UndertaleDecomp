if (obj_time.left == 0)
{
	if (obj_time.right == 0)
	{
		if (obj_time.down == 0)
		{
			if (obj_time.up == 0)
				moving = false
		}
	}
}
if (global.interact > 0)
{
	moving = false
	movement = 0
}
else
	movement = 1
if (xprevious != x || yprevious != y)
	moving = true
if (moving == false)
{
	image_speed = 0
	image_index = 0
}
if (cutscene == false)
{
	if (instance_exists(obj_vsflowey_shaker) == false)
	{
		view_xview_set(0, round(((x - (view_wview_get(0) / 2)) + 10)))
		view_yview_set(0, round(((y - (view_hview_get(0) / 2)) + 10)))
	}
}
