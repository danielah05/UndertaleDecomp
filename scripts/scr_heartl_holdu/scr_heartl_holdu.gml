function scr_heartl_holdu()
{
	if (global.osflavor <= OSFlavors.Mac && keyboard_check(ord("W")))
		return 1;
	if (global.osflavor >= OSFlavors.Playstation && gamepad_axis_value((obj_time.j_ch - 1), gp_axislv) <= -0.6)
		return 1;
	return 0;
}
