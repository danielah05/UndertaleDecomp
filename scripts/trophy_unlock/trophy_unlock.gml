/// @func	trophy_unlock(trophy_id)
/// @desc	Unlocks a specified trophy
/// @arg	{string}	trophy_id	The trophy to unlock
function trophy_unlock(_trophy_id)
{
	var trophy_id = _trophy_id
	if is_undefined(ds_map_find_value(global.trophy_state, trophy_id))
	    return;
	if (os_type == os_psvita && ds_map_find_value(global.trophy_state, trophy_id))
	    return;
	var sysid = ds_map_find_value(global.trophy_sysid, trophy_id)
	if (os_type == os_ps4 || os_type == os_psvita)
	    psn_unlock_trophy((obj_time.j_ch - 1), real(sysid))
	else if (global.decomp_vars.EnablePS4Trophies && !global.decomp_vars.VanillaMode)
	{
		if (trophy_get_state(trophy_id))
			return;
			
		with (instance_create_depth(3, 3, 10000, obj_faketrophy))
		{
			var info = trophy_get_info(trophy_id);
			trophy_icon_index = real(info[0]);
			text = info[1];
		}
	}
	ds_map_set(global.trophy_state, trophy_id, true)
	
	if (!global.decomp_vars.VanillaMode && global.decomp_vars.EnablePS4Trophies && global.osflavor != OSFlavors.Playstation)
		save_trophies();
	
}
