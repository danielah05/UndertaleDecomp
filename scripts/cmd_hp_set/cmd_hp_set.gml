function cmd_hp_set(_args)
{
	if (array_length(_args) < 1)
	{
		command_writeline("Invalid Argument count for \"hp_set\"!");
		return;
	}
	if (string_length(string_digits(_args[0])) <= 0)
	{
		command_writeline("Argument must contain digits!");
		return;
	}
	
	var value = real(string_digits(_args[0]));
	
	global.hp = value;
}