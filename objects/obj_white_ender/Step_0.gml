if (delay > 0)
	delay--
else if (global.savedata_async_id == -1)
	ossafe_game_end()
