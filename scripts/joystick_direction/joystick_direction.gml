/// @func	joystick_direction(id)
/// @desc	(Legacy GM) Returns the direction of movement for the joystick.
/// @param	{real}	id	 The id of the joystick (1 or 2).
/// @return	{real}	vk_numpad1...9 - A virtual key code for the numberpad buttons depending on direction being pressed by the joystick/gamepad with the given id.
function joystick_direction()
{
	var jid = __joystick_2_gamepad(argument0)
	var haxis = gamepad_axis_value(jid, gp_axislh)
	var vaxis = gamepad_axis_value(jid, gp_axislv)
	var ret = 101
	var dir = 0
	if (vaxis < -0.3)
	    dir = 6
	else if (vaxis > 0.3)
	    dir = 0
	else
	    dir = 3
	if (haxis < -0.3)
	    dir += 1
	else if (haxis > 0.3)
	    dir += 3
	else
	    dir += 2
	return (96 + dir);
}
