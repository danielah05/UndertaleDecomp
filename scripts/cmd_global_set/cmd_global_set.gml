function cmd_global_set(_args)
{
	if (array_length(_args) < 2)
	{
		command_writeline("Invalid Argument count for \"global_set\"!");
		return;
	}
	
	var name = _args[0];

	if (!variable_global_exists(name))
	{
		command_writeline($"Could not find \"global.{name}\"");
		return;
	}
	
	if (string_starts_with(_args[1], "\""))
	{
		var value_str = substr(_args[1], 2);
		if (array_length(_args) >= 2)
		{
			for (var i = 2; i < array_length(_args); i++)
				value_str += _args[i];
		}
		
		if (string_ends_with(value_str, "\""))
		{
			value_str = substr(value_str, 1, strlen(value_str) - 1);
			variable_global_set(name, value_str);
		}
		else
		{
			command_writeline($"String variable must begin and end with '\"'");
			return;
		}
	}
	else
		variable_global_set(name, real(_args[1]));
	

}