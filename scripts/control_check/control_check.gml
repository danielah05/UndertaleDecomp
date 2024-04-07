/// @func	control_check(control)
/// @arg	control		The control to check
function control_check(_control)
{
	var control = _control
	if (control < 0 || control > 2)
		return 0;
	return global.control_state[control];
}
