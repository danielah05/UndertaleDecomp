function cmd_game_speed(_args)
{
	if (array_length(_args) < 1)
	{
		command_writeline("Invalid Argument count for \"game_speed\"!");
		return;
	}
	var rm_speed = real(string_digits(_args[0]));
	
	if (rm_speed <= 0)
	{
		command_writeline($"Game speed cannot be {rm_speed}");
		return;
	}
	game_set_speed(rm_speed, gamespeed_fps);
}