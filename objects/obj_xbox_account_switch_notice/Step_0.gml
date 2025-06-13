for (var i = 0; i < gamepad_get_device_count(); i++)
{
	if gamepad_is_connected(i)
	{
		if (gamepad_button_check(i, global.button0) && (!confirmed))
		{
			confirmed = 1
			game_restart()
		}
	}
}
