/// @func		ossafe_ini_close()
/// @desc		Safely closes an ini file
/// @returns	{string}
function ossafe_ini_close()
{
	if (global.osflavor <= OSFlavors.Mac)
		return ini_close();
	else if (!is_undefined(global.current_ini))
	{
		ds_map_set(global.savedata, global.current_ini, ini_close())
		global.current_ini = undefined
	}
}
