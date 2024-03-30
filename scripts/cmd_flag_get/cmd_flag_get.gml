function cmd_flag_get(_args)
{
	if (array_length(_args) < 1)
	{
		command_writeline("Invalid Argument count for \"flag_get\"!");
		return;
	}
	
	var flag = string_digits(_args[0]);
	
	command_writeline($"Flag Value: {global.flag[flag]}");
}