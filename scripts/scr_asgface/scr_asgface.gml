/// @func	scr_asgface(msg_number, face_id)
/// @desc	Set Asgore dialog face icon.
/// @arg	{real}	msg_number	Message ID
/// @arg	{real}	face_id		Asgore Face ID
function scr_asgface(_msg_number, _face_id)
{
	global.msg[_msg_number] = (("\\TS \\F0 \\E" + string(_face_id)) + " \\F7 \\Ta %")
}
