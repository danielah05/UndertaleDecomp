/// @func	control_check(control)
/// @arg	control		The control to check
function control_check(_control)
{
	if (obj_decomp_console.active)
		return false;
		
	if (global.decomp_vars.FixInputLatency && !global.decomp_vars.VanillaMode)
	{
		// Vultu: Actual help with figuring out what the fuck this was goes to OceanBagel
		// Actual code is my own, but based on OceanBagel's
		var keys = [ [vk_return, ord("Z")], [vk_shift, ord("X")], [vk_control, ord("C")] ]; 
		if (_control < 0 || _control > 2)
			return false;
		
		if (keyboard_check(keys[_control][0]) || keyboard_check(keys[_control][1]))
			return true;

		if (global.osflavor >= OSFlavors.Playstation)
			return global.control_state[_control];
		else if (obj_time.j_ch > 0)
			return global.control_state[_control];
			
		return false;
	}
	else
	{
		var control = _control
		if (control < 0 || control > 2)
			return 0;
		return global.control_state[control];
	}
}
