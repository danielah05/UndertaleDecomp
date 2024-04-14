/// @func	scr_undface(msg_number, face_id)
/// @desc	Set Undyne dialog face icon.
/// @arg	{real}	msg_number	Message ID
/// @arg	{real}	face_id		Undyne Face ID
function scr_undface(_msg_number, _face_id)
{
	global.msg[_msg_number] = (("\\TS \\F0 \\E" + string(_face_id)) + " \\F5 \\TU %")
}
