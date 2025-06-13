if instance_exists(obj_mainchara)
{
	with (obj_mainchara)
		view_xview_set(0, round(((x - (view_wview_get(0) / 2)) + (sprite_width / 2))))
}
