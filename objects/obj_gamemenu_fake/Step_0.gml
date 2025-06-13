if keyboard_check_pressed(vk_right)
{
	if (selected3 == 0)
		selected3 = 1
}
if keyboard_check_pressed(vk_left)
{
	if (selected3 == 1)
		selected3 = 0
}
buffer += 1
if (control_check_pressed(InteractButton) && selected3 == 0)
{
	if (buffer > 20)
	{
		caster_stop(all)
		room_goto_next()
	}
}
if (control_check_pressed(InteractButton) && selected3 == 1)
{
	if (buffer > 10)
		selected3 = 0
}
