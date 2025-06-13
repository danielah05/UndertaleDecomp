global.interact = 1
if obj_time.left
	x -= 4
if obj_time.right
	x += 4
if obj_time.up
	y -= 4
if obj_time.down
	y += 4
if (bbox_left < xbound)
	x = xprevious
if (bbox_right > xbound2)
	x = xprevious
if (bbox_bottom > ybound2)
	y = yprevious
if (bbox_top < ybound)
	y = yprevious
if (buffer == 1)
{
	if (control_check_pressed(InteractButton) == true || control_check_pressed(CancelButton) == true)
		dest = 1
}
if (dest == 1)
	dest_timer += 1
if (dest_timer >= 2)
	instance_destroy()
