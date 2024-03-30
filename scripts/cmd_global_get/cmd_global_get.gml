function cmd_global_get(_args)
{
	if (array_length(_args) < 1)
	{
		command_writeline("Invalid Argument count for \"global_get\"!");
		return;
	}

	var name = _args[0];

	if (!variable_global_exists(name))
	{
		command_writeline($"Could not find \"global.{name}\"");
		return;
	}
	else
	{
		var value = variable_global_get(name);
		if (is_string(value))
			command_writeline($"global.{name} = \"{value}\"");
		else
			command_writeline($"global.{name} = {value}");
	}
}