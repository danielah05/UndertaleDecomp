/// @func	joystick_xpos(id)
/// @desc	(Legacy GM) Returns the position of the x-axis of joystick.
/// @param	{real}	id	The id of the joystick (1 or 2).
/// @return	{real}	The position of the x-axis of joystick.
function joystick_xpos()
{
	var jid = __joystick_2_gamepad(argument0)
	return gamepad_axis_value(jid, 0);
}
