function scr_heartr_holdr()
{
	if (global.osflavor <= OSFlavors.Mac && keyboard_check(vk_right))
		return 1;
	if (global.osflavor >= OSFlavors.Playstation && gamepad_axis_value((obj_time.j_ch - 1), gp_axisrh) >= 0.6)
		return 1;
	return 0;
}
