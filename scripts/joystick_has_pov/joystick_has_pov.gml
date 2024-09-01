/// @func	joystick_has_pov(id)
/// @desc	(Legacy GM) Checks the point of view capabilities of the joystick.
/// @param	{real}	id	The id of the joystick (1 or 2).
/// @return	{bool}
function joystick_has_pov(_id)
{
	var joyid = argument0
	show_debug_message(("Debug: joystick_has_pov with arugments : " + string(joyid)))
	return 1;
}
