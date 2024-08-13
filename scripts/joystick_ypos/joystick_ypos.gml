/// @func	joystick_ypos(id)
/// @desc	(Legacy GM) Returns the position of the y-axis of joystick.
/// @param	{real}	id	The id of the joystick (1 or 2).
/// @return	{real}	The position of the y-axis of joystick.
function joystick_ypos(_id)
{
	var jid = __joystick_2_gamepad(_id)
	return gamepad_axis_value(jid, 1);
}
