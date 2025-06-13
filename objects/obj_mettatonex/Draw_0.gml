// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
	if keyboard_check_pressed(ord("A"))
		turns -= 1
	if keyboard_check_pressed(ord("S"))
		turns += 1
}
