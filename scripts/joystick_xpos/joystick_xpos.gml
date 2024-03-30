function joystick_xpos()
{
	var jid = __joystick_2_gamepad(argument0)
	return gamepad_axis_value(jid, 0);
}
