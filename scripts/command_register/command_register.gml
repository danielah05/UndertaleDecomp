/// @func	command_register(display_name, about, [arguments], [function_ref])
/// @desc	Registers a command with the built in decomp console
///	@param	{string}			display_name	The name of the command to use in the console
///	@param	{string}			about			The text to display when using help
/// @param	{Array<string>}		arguments		The arguments to display in the console
/// @param	{Asset.Function}	function_ref	The function reference to use when the command is executed, defaults to cmd_<display_name>
function command_register(_display_name, _about, _arguments = [ ], _function_ref = noone)
{
	var funcRef = _function_ref;
	if (funcRef == noone)
		funcRef = "cmd_" + _display_name;
	array_push(commands, new command_def(_display_name, _about, funcRef, _arguments));
}

/// @func  command_register_param_hints(display_name, argument, hints)
/// @desc  Adds parameter hints for a command's argument in decomp console
/// @param {string}          display_name    The name of the command
/// @param {string}          argument        The argument to add hints for
/// @param {Array<string>}   hints           The hints to use for this argument
function command_register_param_hints(_display_name, _argument, _hints)
{
	var cmd_index = getCommandDefIndex(_display_name);
	
	if (cmd_index == -1)
	{
		show_message($"Couldn't find command {_display_name} when adding parameter hints!");
		return;
	}
	
	var argument_index = -1;
	
	for (var i = 0; i < array_length(commands[cmd_index].arguments); i++)
	{
		if (commands[cmd_index].arguments[i] == _argument)
		{
			argument_index = i;
			break;
		}
	}
	
	if (argument_index == -1)
	{
		show_message($"Couldn't find argument {_argument} in command {_display_name} when adding parameter hints!");
		return;
	}
	
	commands[cmd_index].argumentHints[argument_index] = _hints;
}