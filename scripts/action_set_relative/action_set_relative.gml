/// @func				action_set_relative(value)
/// @desc				Sets whether action calls are relative to their caller
/// @deprecated
/// @param	{boolean}	value	The value to set relative to
function action_set_relative(_value)
{
	global.__argument_relative = _value
}
