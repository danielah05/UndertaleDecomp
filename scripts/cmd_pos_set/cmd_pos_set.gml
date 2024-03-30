function cmd_pos_set(_args)
{
	if (array_length(_args) < 2)
	{
		command_writeline("Invalid Argument count for \"pos_set\"!");
		return;
	}
	for (var i = 0; i < 2; i++)
	{
		if (string_length(_args[i]) != string_length(string_digits(_args[i])))
		{
			command_writeline($"Argument {i} must only contains digits!");
			return;
		}
	}
	
	if (!instance_exists(obj_mainchara))
	{
		command_writeline("Cannot set position, obj_mainchara does not exist.");
		return;
	}
	
	obj_mainchara.x = real(_args[0]);
	obj_mainchara.y = real(_args[1]);
}