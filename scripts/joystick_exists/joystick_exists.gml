function joystick_exists()
{
	var jid = __joystick_2_gamepad(argument0)
	return gamepad_is_connected(jid);
}
