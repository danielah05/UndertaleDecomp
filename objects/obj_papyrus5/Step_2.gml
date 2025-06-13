if instance_exists(obj_mainchara)
{
	if (obj_mainchara.cutscene == true)
	{
		o = obj_mainchara
		if (obj_mainchara.x >= 450)
			view_target_set(0, noone)
		if (obj_mainchara.x < 450)
		{
			view_target_set(0, obj_mainchara)
			view_xview_set(0, round(((o.x - (view_wview_get(0) / 2)) + (o.sprite_width / 2))))
			view_yview_set(0, round(((o.y - (view_hview_get(0) / 2)) + (o.sprite_height / 2))))
		}
	}
}
