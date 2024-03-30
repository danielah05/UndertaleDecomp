function cmd_room_goto(_args)
{
	if (array_length(_args) < 1)
	{
		command_writeline("Invalid Argument count for \"room_goto\"!");
		return;
	}
	
	var room_name = _args[0];
	
	if (is_string(room_name))
	{
		var room_index = asset_get_index(room_name);
		if (room_index != -1)
			room_goto(asset_get_index(room_name));
		else
			command_writeline($"Unable to find room: \"{room_name}\"");
	}
}
