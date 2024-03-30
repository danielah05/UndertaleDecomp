function command_writeline(_text)
{
	array_insert(obj_decomp_console.history, 0, _text);
	if (array_length(obj_decomp_console.history) > COMMAND_CONSOLE_HISTORY_MAX)
		array_pop(obj_decomp_console.history);
}