if xbox_account_picker_display
	return;
if (global.xboxlogin < 0)
{
	var isControllerConnected = 0
	var i = 0
	while (i < gamepad_get_device_count())
	{
		if gamepad_is_connected(i)
		{
			isControllerConnected = 1
			if instance_exists(obj_xbox_controller_connect)
				instance_destroy(obj_xbox_controller_connect)
			global.xbox_pad_index = i
			break
		}
		else
		{
			i++
			continue
		}
	}
	if (global.xbox_pad_index != -1)
	{
		xbox_account_picker_display = 1
		global.xbox_async_id = xboxone_show_account_picker(global.xbox_pad_index, 0)
		return;
	}
	if (!isControllerConnected)
	{
		if (!instance_exists(obj_xbox_controller_connect))
			instance_create(0, 0, obj_xbox_controller_connect)
	}
}
