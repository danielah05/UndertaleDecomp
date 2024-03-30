function cmd_monitor_flag(_args)
{
	if (array_length(_args) < 1)
	{
		command_writeline("Invalid Argument count for \"monitor_flag\"!");
		return;
	}
	
	var flag = string_digits(_args[0]);

	
	if (string_length(flag) != string_length(_args[0]))
	{
		command_writeline($"FlagID must be a number!");
		return;
	}
	
	if (real(flag) < 0 || array_length(global.flag) <= real(flag))
	{
		command_writeline($"FlagID is not a valid flag!");
		return;
	}

	for (var i = 0; i < array_length(global.monitorFlags); i++)
	{
		if (global.monitorFlags[i] == flag)
		{
			array_delete(global.monitorFlags, i, 1);
			return;
		}
	}
	
	array_push(global.monitorFlags, flag);
}