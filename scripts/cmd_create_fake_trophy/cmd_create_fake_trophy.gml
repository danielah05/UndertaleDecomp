function cmd_create_fake_trophy(_args)
{
	if (array_length(_args) < 2)
	{
		command_writeline("Invalid Argument count for \"cmd_create_fake_trophy\"!");
		return;
	}
	
	var trophy_icon = string_digits(_args[0])
	var trophy = instance_create_depth(2, 2, 1000, obj_faketrophy);
	
	trophy.text = _args[1];
	
	for (var i = 2; i < array_length(_args); i++)
		trophy.text += " " + _args[i];
	
	trophy.trophy_icon_index = clamp(trophy_icon, 0, 3);	
}