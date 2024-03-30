function cmd_sv_cheats(_args)
{
	if (array_length(_args) < 1)
	{
		command_writeline("Invalid Argument count for \"sv_cheats\"!");
		return;
	}
	
	var value = string_digits(_args[0]);
	
	if (value == 0)
	{
		global.decomp_vars.DevConsoleEnabled = false;
		obj_decomp_console.active = false;
	}
	else
		command_writeline("That's not funny.");
}