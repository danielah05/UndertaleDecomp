/// @func	joystick_check_button(id, numb)
/// @desc	(Legacy GM) Checks to see if a joystick button has been pressed.
/// @param	{real}	id	The id of the joystick (1 or 2).
/// @param	{real}	numb	 The number of the button to check (from 1 to 32). 
/// @return	{bool}
function joystick_check_button(_id, _numb)
{
	var jid = __joystick_2_gamepad(_id)
	var button = 0
	switch _numb
	{
		case 0:
			button = gp_face1
			break
		case 1:
			button = gp_face2
			break
		case 2:
			button = gp_face3
			break
		case 3:
			button = gp_face4
			break
		case 4:
			button = gp_shoulderl
			break
		case 5:
			button = gp_shoulderlb
			break
		case 6:
			button = gp_shoulderr
			break
		case 7:
			button = gp_shoulderrb
			break
		case 8:
			button = gp_select
			break
		case 9:
			button = gp_start
			break
		case 10:
			button = gp_stickl
			break
		case 11:
			button = gp_stickr
			break
		default:
			button = _numb
			break
	}
	
	return gamepad_button_value(jid, button) != 0;
}
