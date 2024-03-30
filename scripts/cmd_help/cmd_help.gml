function cmd_help(_args)
{
	if (array_length(_args) == 0)
	{
		for (var i = 0; i < array_length(obj_decomp_console.commands); i++)
		{
			var cmd_def = obj_decomp_console.commands[i];
			
			var arg_string = "";
			for (var a = 0; a < array_length(cmd_def.arguments); a++)
			{
				arg_string += $"{cmd_def.arguments[a]}";
				if (a < array_length(cmd_def.arguments) - 1)
					arg_string += ", ";
			}
				
			command_writeline($"{cmd_def.displayName}({arg_string})");
		}
	}
	else
	{
		if (validCommandName(_args[0]))
		{
			var cmd_def = obj_decomp_console.commands[getCommandDefIndex(_args[0])];
			var arg_string = "";
			for (var a = 0; a < array_length(cmd_def.arguments); a++)
			{
				arg_string += $"{cmd_def.arguments[a]}";
				if (a < array_length(cmd_def.arguments) - 1)
					arg_string += ", ";
			}
				
			command_writeline($"{cmd_def.displayName}({arg_string})");
			command_writeline(cmd_def.about);
			
		}
		else
			command_writeline($"Unable to help: Invalid Command: \"{_args[0]}\"");
	}
}