/// @func	scr_noface(msg_number)
/// @desc	Set no dialog face icon.
/// @arg	{real}	msg_number	Message ID
function scr_noface(_msg_number)
{
	global.msg[argument0] = "\\T0 %"
}
