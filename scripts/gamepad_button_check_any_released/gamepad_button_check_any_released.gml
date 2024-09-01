function gamepad_button_check_any_released()
{
	return (gamepad_button_check_released(argument0, gp_face1) || gamepad_button_check_released(argument0, gp_face2) || gamepad_button_check_released(argument0, gp_face3) || gamepad_button_check_released(argument0, gp_face4) || gamepad_button_check_released(argument0, gp_shoulderl) || gamepad_button_check_released(argument0, gp_shoulderlb) || gamepad_button_check_released(argument0, gp_shoulderr) || gamepad_button_check_released(argument0, gp_shoulderrb) || gamepad_button_check_released(argument0, gp_select) || gamepad_button_check_released(argument0, gp_start) || gamepad_button_check_released(argument0, gp_stickl) || gamepad_button_check_released(argument0, gp_stickr));
}
