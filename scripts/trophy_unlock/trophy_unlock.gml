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
	if (os_type == os_xboxone && ds_map_find_value(global.trophy_state, trophy_id))
		return;
	var sysid = ds_map_find_value(global.trophy_sysid, trophy_id)
	if (os_type == os_ps4 || os_type == os_psvita)
		psn_unlock_trophy((obj_time.j_ch - 1), real(sysid))
	if (os_type == os_xboxone)
		ds_queue_enqueue(global.xbox_trophy_queue, real(sysid))
	ds_map_set(global.trophy_state, trophy_id, true)
}
