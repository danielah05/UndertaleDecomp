/// @func	joystick_pov(id)
/// @desc	(Legacy GM) Returns the joysticks point-of view position.
/// @param	{real}	id	The id of the joystick (1 or 2).
/// @return	{real}
function joystick_pov()
{
	var jid = __joystick_2_gamepad(argument0)
	var mask = 0
	mask |= gamepad_button_value(jid, gp_padu) > 0
	mask |= (gamepad_button_value(jid, gp_padr) > 0 ? 2 : 0)
	mask |= (gamepad_button_value(jid, gp_padd) > 0 ? 4 : 0)
	mask |= (gamepad_button_value(jid, gp_padl) > 0 ? 8 : 0)
	return global.__jstick_povangle[mask];
}
