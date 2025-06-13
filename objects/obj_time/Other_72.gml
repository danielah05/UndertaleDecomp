if (ds_map_find_value(async_load, "id") == global.savedata_async_id)
{
	global.savedata_async_id = -1
	if global.savedata_async_load
		var type = "load"
	else
		type = "save"
	if (ds_map_find_value(async_load, "status") < 0)
	{
		global.savedata_error = 1
		global.savedata_debuginfo = ((type + " failed: ") + string(ds_map_find_value(async_load, "status")))
		if global.savedata_async_load
			global.savedata = ds_map_create()
	}
	else
	{
		global.savedata_error = 0
		global.savedata_debuginfo = (type + " succeeded")
		if global.savedata_async_load
		{
			var json = buffer_read(global.savedata_buffer, buffer_string)
			global.savedata = json_decode(json)
		}
		else
		{
			if (os_type == os_switch)
				switch_save_data_commit()
			if (os_type == os_xboxone)
			{
				if xbox_account_picker_display
				{
					if (global.xbox_async_id < 0)
					{
						var pad_index = (xbox_login_pad_index < 0 ? global.xbox_pad_index : xbox_login_pad_index)
						global.xbox_async_id = xboxone_show_account_picker(pad_index, 0)
					}
				}
				if xbox_suspend
				{
					xbox_suspend = 0
					xboxone_suspend()
				}
			}
		}
	}
	buffer_delete(global.savedata_buffer)
	global.savedata_buffer = undefined
}
