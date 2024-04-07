/// @func	control_clear(control)
/// @arg	control
function control_clear(_control)
{
	var control = _control
	if (control < 0 || control > 2)
		return false;
	global.control_pressed[control] = 0
}
