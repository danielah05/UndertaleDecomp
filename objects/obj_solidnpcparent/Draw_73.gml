// DECOMP CODE

if (instance_exists(obj_decomp_console) && obj_decomp_console.show_collision)
{
	var prev = draw_get_alpha();
	draw_set_alpha(0.5);
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_lime, c_lime, c_lime, c_lime, false);
	draw_set_alpha(prev);
}
