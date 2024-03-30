function cmd_flag_set(_args)
{
	if (array_length(_args) < 2)
	{
		command_writeline("Invalid Argument count for \"flag_set\"!");
		return;
	}
	
	var flag = string_digits(_args[0]);
	var value = string_digits(_args[1]);
	
	global.flag[flag] = value;
}