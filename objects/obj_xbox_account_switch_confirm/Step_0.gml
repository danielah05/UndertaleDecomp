for (var i = 0; i < gamepad_get_device_count(); i++)
{
	if gamepad_is_connected(i)
	{
		if (gamepad_button_check(i, global.button0) && (!confirmed))
		{
			confirmed = 1
			with (obj_time)
				xbox_account_picker_display = 1
			global.xbox_async_id = -1
			ossafe_savedata_save()
		}
	}
}
