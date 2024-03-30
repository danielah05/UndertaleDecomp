
function cmd_battle_start(_args)
{
	if (array_length(_args) < 1)
	{
		command_writeline("Invalid Argument count for \"battle_start\"!");
		return;
	}
	if (string_length(string_digits(_args[0])) <= 0)
	{
		command_writeline("Argument must contain digits!");
		return;
	}
	
	var value = real(string_digits(_args[0]));
	
	global.battlegroup = value
    global.border = 0
    instance_create(0, 0, obj_battleblcon)
}