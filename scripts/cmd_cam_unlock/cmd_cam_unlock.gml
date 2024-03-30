function cmd_cam_unlock()
{
	if (view_get_visible(7))
		view_set_visible(7, false);
	else
	{
		var normal_cam = view_get_camera(0);
		
		var cam = view_get_camera(7);
		camera_set_view_pos(cam, camera_get_view_x(normal_cam), camera_get_view_y(normal_cam));
		camera_set_view_size(cam, camera_get_view_width(normal_cam), camera_get_view_height(normal_cam));
		view_set_visible(7, true);
	}
}