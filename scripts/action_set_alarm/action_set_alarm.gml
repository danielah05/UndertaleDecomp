/// @func			action_set_alarm(value, alarm_id)
/// @desc			Sets the alarm of the caller to a specified id to the specified value
/// @deprecated
/// @param	{real}	value	The value to set the alarm to
/// @param	{real}	alarm	The alarm to set the value of
function action_set_alarm(_value, _alarm_id)
{
	alarm_set(_alarm_id, _value)
}
