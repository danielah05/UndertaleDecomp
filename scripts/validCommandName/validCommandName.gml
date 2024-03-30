function validCommandName(_commandName)
{
	for (var i = 0; i < array_length(obj_decomp_console.commands); i++)
	{
		if (obj_decomp_console.commands[i].displayName == _commandName)
			return true;
	}
	return false;
}

function getCommandHelpText(_commandName)
{
	for (var i = 0; i < array_length(obj_decomp_console.commands); i++)
	{
		if (obj_decomp_console.commands[i].displayName == _commandName)
			return obj_decomp_console.commands[i].about;
	}
	return "";
}

function getCommandArguments(_commandName)
{
	for (var i = 0; i < array_length(obj_decomp_console.commands); i++)
	{
		if (obj_decomp_console.commands[i].displayName == _commandName)
			return obj_decomp_console.commands[i].arguments;
	}
	return [];
}