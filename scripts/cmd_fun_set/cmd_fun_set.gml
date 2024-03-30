function cmd_fun_set(_args)
{
	if (array_length(_args) < 1)
	{
		command_writeline("Invalid Argument count for \"fun_set\"!");
		return;
	}
	
	var value = string_digits(_args[0]);
	FL_Fun = value;
}