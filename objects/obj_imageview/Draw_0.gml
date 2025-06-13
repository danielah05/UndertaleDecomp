draw_sprite(sprite_index, image_index, view_xview_get(0), view_yview_get(0))
if (buffer == 1 && control_check_pressed(CancelButton) == true)
	buffer = 2
if (buffer == 1 && control_check_pressed(InteractButton) == true)
	buffer = 2
global.interact = 1
if (buffer == 2)
{
	global.interact = 0
	instance_destroy()
}
