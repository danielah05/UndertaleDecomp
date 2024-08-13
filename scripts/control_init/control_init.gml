/// @func	control_init()
/// @desc	Initializes controller state arrays. (control_state, control_pressed, control_new_state)
function control_init()
{
	for (var i = 2; i >= 0; i--)
	{
	    global.control_state[i] = 0
	    global.control_pressed[i] = 0
	    global.control_new_state[i] = 0
	}
}
