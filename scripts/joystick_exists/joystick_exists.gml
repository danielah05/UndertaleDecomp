/// @func	joystick_exists(id)
/// @desc	(Legacy GM) Checks for a joystick.
/// @param	{real}	id	The id of the joystick to check for (1 or 2).
function joystick_exists(_id)
{
	var jid = __joystick_2_gamepad(_id)
	return gamepad_is_connected(jid);
}
