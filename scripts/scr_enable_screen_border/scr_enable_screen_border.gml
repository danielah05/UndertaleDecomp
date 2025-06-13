/// @func			scr_enable_screen_border(flag)
/// @desc			Set the screen border to be enabled
/// @param	{bool}	flag
function scr_enable_screen_border(_flag)
{
	var flag = _flag
	flag = flag != false
	if (flag != global.screen_border_active)
	{
		global.screen_border_active = flag != false
		global.screen_border_state = 0
		global.screen_border_dynamic_fade_id = 0
		global.screen_border_dynamic_fade_level = 0
	}
}
